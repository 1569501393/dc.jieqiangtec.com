<?php

/**

 * [WECHAT 2017]

 * [WECHAT  a free software]

 */

define('IN_MOBILE', true);

require '../../framework/bootstrap.inc.php';
$input = file_get_contents('php://input');
$isxml = true;

if (!empty($input) && empty($_GET['out_trade_no'])) {

	$obj = isimplexml_load_string($input, 'SimpleXMLElement', LIBXML_NOCDATA);

	$data = json_decode(json_encode($obj), true);

	if (empty($data)) {

		$result = array(

			'return_code' => 'FAIL',

			'return_msg' => ''

		);

		echo array2xml($result);
		exit;

	}

	if ($data['result_code'] != 'SUCCESS' || $data['return_code'] != 'SUCCESS') {

		$result = array(

			'return_code' => 'FAIL',

			'return_msg' => empty($data['return_msg']) ? $data['err_code_des'] : $data['return_msg']

		);

		echo array2xml($result);
		exit;

	}

	$get = $data;

} else {

	$isxml = false;

	$get = $_GET;

}

load()->web('common');

load()->classs('coupon');

$_W['uniacid'] = $_W['weid'] = intval($get['attach']);

$_W['uniaccount'] = $_W['account'] = uni_fetch($_W['uniacid']);

$_W['acid'] = $_W['uniaccount']['acid'];

$setting = uni_setting($_W['uniacid'], array('payment'));

if(is_array($setting['payment'])) {

	$wechat = $setting['payment']['wechat'];

	WeUtility::logging('pay', var_export($get, true));
	if(!empty($wechat)) {

		ksort($get);

		$string1 = '';

		foreach($get as $k => $v) {

			if($v != '' && $k != 'sign') {

				$string1 .= "{$k}={$v}&";

			}

		}



		if (intval($wechat['switch']) == 3) {

			$facilitator_setting = uni_setting($wechat['service'], array('payment'));

			$wechat['signkey'] = $facilitator_setting['payment']['wechat_facilitator']['signkey'];

		} else {

			$wechat['signkey'] = ($wechat['version'] == 1) ? $wechat['key'] : $wechat['signkey'];

		}

		$sign = strtoupper(md5($string1 . "key={$wechat['signkey']}"));

		if($sign == $get['sign']) {

			$sql = 'SELECT * FROM ' . tablename('core_paylog') . ' WHERE `uniontid`=:uniontid';

			$params = array();

			$params[':uniontid'] = $get['out_trade_no'];

			$log = pdo_fetch($sql, $params);

						if(!empty($log) && $log['status'] == '0' && (($get['total_fee'] / 100) == $log['card_fee'])) {

				$log['tag'] = iunserializer($log['tag']);

				$log['tag']['transaction_id'] = $get['transaction_id'];

				$log['uid'] = $log['tag']['uid'];

				$record = array();

				$record['status'] = '1';

				$record['tag'] = iserializer($log['tag']);

				pdo_update('core_paylog', $record, array('plid' => $log['plid']));

				if ($log['is_usecard'] == 1 && !empty($log['encrypt_code'])) {

					$coupon_info = pdo_get('coupon', array('id' => $log['card_id']), array('id'));

					$coupon_record = pdo_get('coupon_record', array('code' => $log['encrypt_code'], 'status' => '1'));

					load()->model('activity');

				 	$status = activity_coupon_use($coupon_info['id'], $coupon_record['id'], $log['module']);

				}



				$module = module_fetch($log['module']);

				if (empty($module)) {
					exit('success');

				}

				if ($module['app_support'] == MODULE_SUPPORT_ACCOUNT) {

					$site = WeUtility::createModuleSite($log['module']);

				} elseif ($module['wxapp_support'] == MODULE_SUPPORT_WXAPP) {

					$site = WeUtility::createModuleWxapp($log['module']);

				}

				if(!is_error($site)) {

					$method = 'payResult';

					if (method_exists($site, $method)) {

						$ret = array();

						$ret['weid'] = $log['weid'];

						$ret['uniacid'] = $log['uniacid'];

						$ret['acid'] = $log['acid'];

						$ret['result'] = 'success';

						$ret['type'] = $log['type'];

						$ret['from'] = 'notify';

						$ret['tid'] = $log['tid'];

						$ret['uniontid'] = $log['uniontid'];

						$ret['transaction_id'] = $log['transaction_id'];

						$ret['trade_type'] = $get['trade_type'];

						$ret['follow'] = $get['is_subscribe'] == 'Y' ? 1 : 0;

						$ret['user'] = empty($get['openid']) ? $log['openid'] : $get['openid'];

						$ret['fee'] = $log['fee'];

						$ret['tag'] = $log['tag'];

						$ret['is_usecard'] = $log['is_usecard'];

						$ret['card_type'] = $log['card_type'];

						$ret['card_fee'] = $log['card_fee'];

						$ret['card_id'] = $log['card_id'];

						if(!empty($get['time_end'])) {

							$ret['paytime'] = strtotime($get['time_end']);

						}

						$site->$method($ret);

						if($isxml) {

							$result = array(

								'return_code' => 'SUCCESS',

								'return_msg' => 'OK'

							);

							echo array2xml($result);
							exit;

						} else {
							exit('success');

						}

					}

				}

			}

		}

	}

}

if($isxml) {

	$result = array(

		'return_code' => 'FAIL',

		'return_msg' => ''

	);

	echo array2xml($result);
	$order = pdo_fetch("SELECT * FROM " . tablename('weisrc_dish_order') . " WHERE transid=:transid LIMIT 1", array(':transid' => $get['transaction_id']));
	$store = pdo_fetch("SELECT * FROM " . tablename("weisrc_dish_stores") . " WHERE id=:id LIMIT 1", array(':id' => $order['storeid']));
	$config_array = pdo_fetch("SELECT * FROM " . tablename('uni_account_modules') . " WHERE uniacid=:uniacid LIMIT 1", array(':uniacid' => $_W['uniacid']));
	WeUtility::logging('pay', '1111+++++++++'.var_export($config_array,1));
	$setting_config = unserialize($config_array['settings']);
	WeUtility::logging('pay', '2222+++++++++'.var_export($setting_config['weisrc_dish'],1));
	$config_setting = pdo_fetch("SELECT * FROM " . tablename('weisrc_dish_setting') . " WHERE weid=:weid LIMIT 1", array(':weid' => $_W['uniacid']));
	WeUtility::logging('pay', '9999+++++++++'.var_export($config_setting,1));
	// TODO 判断是蜂鸟还是达达
	if ($order['dining_mode']==2 && $setting_config['weisrc_dish']['is_fengniao'] == 1){
		$setting['fengniao_appid'] = $config_setting['fengniao_appid'];
		$setting['fengniao_key'] = $config_setting['fengniao_key'];
		sendfengniao($order,$store,$setting);
	}elseif($order['dining_mode']==2 && $setting_config['weisrc_dish']['is_dada'] == 1){
		$setting['app_key'] = $config_setting['dada_appid'];
		$setting['app_secret'] = $config_setting['dada_key'];
		senddada($order,$store,$setting);
	}
	exit;

} else {
	exit('fail');

}
function sendfengniao($order, $store, $setting)
{
	global $_W, $_GPC;
	include "../../addons/weisrc_dish/fengniao.php";
	$rop = new fengniao($setting['fengniao_appid'], $setting['fengniao_key']);
	$rop->requestToken();
//        if (empty($setting['fengniao_appid']) || empty($setting['fengniao_key']) || $store['is_fengniao'] == 0) {
//            return false;
//        }

	$orderid = $order['id'];
	$goodsid = pdo_fetchall("SELECT goodsid,total,price FROM " . tablename('weisrc_dish_order_goods') . " WHERE orderid = :orderid", array(':orderid' => $orderid), 'goodsid');
	$goods = pdo_fetchall("SELECT * FROM " . tablename('weisrc_dish_goods') . "  WHERE id IN ('" . implode("','", array_keys($goodsid)) . "')");
	$items_json = array();
	foreach ($goods as $goodkey => $goodvalue) {
		$items_json[] = array(
				'item_id' => $goodvalue['id'],
				'item_name' => $goodvalue['title'],
				'item_quantity' => $goodsid[$goodvalue['id']]['total'],
				'item_price' => $goodvalue['marketprice'],
				'item_actual_price' => $goodsid[$goodvalue['id']]['price'],
				'is_need_package' => 1,
				'is_agent_purchase' => 0
		);
	}
	//$notify_url = 'http://ddd.apestar.cn/' . 'app/index.php?i=' . $_W['uniacid'] . '&c=entry&do=fengniaonotify&m=weisrc_dish';
	$notify_url = $_W['siteroot'] . 'app/index.php?i=' . $_W['uniacid'] . '&c=entry&do=fengniaonotify&m=weisrc_dish';
	//拼装data数据

	$dataArray = array(
			'partner_remark' => $store['title'],
			'partner_order_code' => $order['id'],     // 第三方订单号, 需唯一
			'notify_url' => $notify_url,     //第三方回调 url地址
			'order_type' => 1,
			'transport_info' => array(
					'transport_name' => $store['title']?:'点了吗',
					'transport_address' => $store['address']?:'上海市普陀区近铁城市广场5楼',
					'transport_longitude' => $store['lng']?:'109.11000',
					'transport_latitude' => $store['lat']?:'29.22000',
//                'transport_longitude' => '109.1100000000',
//                'transport_latitude' => '29.2200000000',
					'position_source' => 2,
					'transport_tel' => $store['tel']?:'13555566781',
					'transport_remark' => 'sss'
			),
			'receiver_info' => array(
					'receiver_name' => $order['username'],
					'receiver_primary_phone' => $order['tel']?:'13555566781',
					'receiver_second_phone' => $order['tel']?:'13555566781',
					'receiver_address' => 'ssssss',
					'position_source' => 2,
					'receiver_longitude' => $order['lng']?:'109.11000',
					'receiver_latitude' => $order['lat']?:'29.22000'
//                'receiver_longitude' => '109.1100000000',
//                'receiver_latitude' => '29.2200000000'
			),
			'items_json' => $items_json,
			"order_add_time" => intval($order['dateline']) * 1000,
			"order_total_amount" => $order['totalprice'],
			"order_actual_amount" => $order['totalprice'],
			"order_remark" => $order['remark'],
			"is_invoiced" => 0,
			"order_weight" => 2,
			"invoice" => "",
			"order_payment_status" => $order['ispay'],
			"order_payment_method" => 1,
			"is_agent_payment" => 0,
			"require_payment_pay" => 0,
			"goods_count" => $order['totalnum'],
			"require_receive_time" => strtotime('+1 day') * 1000
	);
	$result = $rop->sendOrder($dataArray);  // second 创建订单
	WeUtility::logging('pay', '$result+++++++++'.$result);
}
function senddada($order, $store, $setting)
{
	include "../../addons/weisrc_dish/DadaOpenapi.php";
	//*********************配置项*************************
	$config = array();
	$config['app_key'] = $setting['app_key'];
	$config['app_secret'] = $setting['app_secret'];
	$config['source_id'] = '3450';
	$config['url'] = 'http://newopen.imdada.cn/api/order/addOrder';
WeUtility::logging('pay', '开始调用+++++++++');
	$obj = new DadaOpenapi($config);

	//***********************发单接口************************
//发单请求数据,只是样例数据，根据自己的需求进行更改。
	$data = array(
			'shop_no'=> '100',
			'origin_id'=> $order['id'],
			'city_code'=> '0592',
			'tips'=> 0,
			'info'=> '测试订单',
			'cargo_type'=> 1,
			'cargo_weight'=> 10,
			'cargo_price'=> $order['totalprice'],
			'cargo_num'=> $order['totalnum'],
			'is_prepay'=> 0,
			'expected_fetch_time'=> time()+15*60,
			'invoice_title'=> '测试',
			'receiver_name'=> $order['username'],
			'receiver_address'=> 'ssssss',
			'receiver_phone'=> $order['tel']?:'13555566781',
			'receiver_tel'=> $order['tel']?:'13555566781',
			'receiver_lat'=> $store['lat']?:'31.63',
			'receiver_lng'=> $store['lng']?:'121.41',
			'callback'=>'http://newopen.imdada.cn/inner/api/order/status/notify'
	);

//请求接口
	$reqStatus = $obj->makeRequest($data);
	WeUtility::logging('pay', '333+++++++++'.var_export($reqStatus,1));
	if (!$reqStatus) {
		//接口请求正常，判断接口返回的结果，自定义业务操作
		if ($obj->getCode() == 0) {
			//返回成功 ....
			WeUtility::logging('pay', '成功+++++++++');
		}else{
			//返回失败
			WeUtility::logging('pay', '失败+++++++++');
		}
		echo sprintf('code:%s，msg:%s', $obj->getCode(), $obj->getMsg());
	}else{
		//请求异常或者失败
		echo 'except';
	}
}

