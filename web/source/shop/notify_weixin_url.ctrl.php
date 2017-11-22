<?php

/**

 * [WECHAT 2017]

 
微信支付
 */



define('IN_SYS', true);



require '../../../framework/bootstrap.inc.php';

$_W['siteroot'] = htmlspecialchars('http://' . $_SERVER['HTTP_HOST']);

if(substr($_W['siteroot'], -1) != '/') {

    $_W['siteroot'] .= '/';

}



require IA_ROOT . '/web/common/bootstrap.sys.inc.php';

require IA_ROOT . '/web/source/shop/common/common.inc.php';

load()->web('common');

load()->web('template');


global $_GPC,$myfile;


global $_CONFIG,$_LOG;

$_LOG[] = "微信支付扫码Notify开始";

$_LOG[] = "正式版";
require_once IA_ROOT.'/payment/wxpay/Config/WxPay.Api.php';
require_once IA_ROOT.'/payment/wxpay/Config/WxPay.Notify.php';
require_once IA_ROOT.'/payment/wxpay/WxNotify.php';

$file = IA_ROOT.'/payment/wxpay/log/'.date('Y-m-d').'.log';
$myfile = fopen($file, "a+");


fwrite($myfile, "===========\r\n微信支付回调开始\r\n");



//计算得出通知验证结果
function wxnotify($data){
    global $_CONFIG,$_LOG,$myfile;
    
    $orderId = $data['attach'];
    $trade_no = $data['attach'];
    $out_trade_no = $data['attach'];
    
	if(is_array($_LOG)){
		foreach($_LOG as $value){
			fwrite($myfile, $value."\r\n");	
		}
	}
	
	
    $amount = $data['total_fee']/100;
	
	fwrite($myfile, "wxnotify微信支付验证通过，支付金额".$amount."\r\n");
	fwrite($myfile, "接受数据".print_r($data,true)."\r\n");
    try{
        pdo_begin();
        $order = pdo_fetch("SELECT * FROM ".tablename("uni_payorder")." WHERE orderid = :orderid", array(":orderid"=>$out_trade_no));
		
		$user = pdo_fetch("SELECT * FROM ".tablename("users")." WHERE uid = :uid", array(":uid"=>$order['uid']));
		
        if(empty($order) || $order["status"] == 1){
			
			fwrite($myfile, "订单状态错误。"."\r\n");
            header("location:".$_W["siteroot"]."web/index.php?c=member&a=member");
            pdo_rollback();
            return;
        }
    
        if(pdo_update("uni_payorder",array("status"=>1,"pay_time"=>TIMESTAMP, "order_no"=>$trade_no),array("orderid"=>$out_trade_no)) > 0 ){
			fwrite($myfile, "订单状态正确。"."\r\n");
			pdo_update('users',array('credit2'=>$user['credit2']+$amount),array('uid'=>$user['uid']));
            if(user_credits_update($order["uid"],$order["credittype"],$amount,array(2,"充值"))){
                pdo_commit();
				fwrite($myfile, "订单状态已更新。"."\r\n");
                header("location:".$_W["siteroot"]."web/index.php?c=member&a=member");
                return;
            }
			fwrite($myfile, "订单状态更新失败。"."\r\n");
            pdo_rollback();
        }
        header("location:".$_W["siteroot"]."web/index.php?c=member&a=member");
    }catch (Exception $e) {
		fwrite($myfile, "支付遇到未知错误"."\r\n");
        pdo_rollback();
    }
    
    if(class_exists('WeUtility')){
        WeUtility::logging('WxPayLog',implode($_LOG, ' => '));
        WeUtility::logging('WxPayReturnData',implode($data, ' => '));
    }
}

$notify = new PayNotifyCallBack();
$notify->Handle(false);

fclose($myfile);