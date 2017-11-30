<?php
error_reporting(E_ALL);
//ini_set('display_errors', '1');
ini_set('error_log', dirname(__FILE__) . '/error_log_20171130.txt'); //将出错信息输出到一个文本文件

global $_W, $_GPC;

$weid = $this->_weid;
$from_user = $this->_fromuser;
$id = intval($_GPC['orderid']);
$cur_nave = 'order';

$setting = $this->getSetting();

$order = pdo_fetch("SELECT a.* FROM " . tablename($this->table_order) . " AS a LEFT JOIN " . tablename($this->table_stores) . " AS b ON a.storeid=b.id  WHERE a.id =:id AND a.from_user=:from_user ORDER BY a.id DESC LIMIT 1", array(':id' => $id, ':from_user' => $from_user));


//$order = pdo_fetch("SELECT a.* FROM " . tablename($this->table_order) . " AS a LEFT JOIN " . tablename($this->table_stores) . " AS b ON a.storeid=b.id  WHERE a.id =:id ORDER BY a.id DESC LIMIT 1", array(':id' => $id));

//if (empty($order)) {
//    message('订单不存在!');
//}

$op = $_GPC['op'];
if ($op == 'acceptorder') { //收货
    if ($order['from_user'] != $from_user) {
        if ($_W['isajax']) {
            $this->showMsg('您没有该订单的操作权限!', 1);
        } else {
            message('您没有该订单的操作权限!');
        }
    }
    pdo_update($this->table_order, array('delivery_status' => 2, 'delivery_finish_time' => TIMESTAMP), array('id' => $id, 'from_user' => $from_user));
    if ($_W['isajax']) {
        $this->showMsg('收货成功!', 1);
    } else {
        message('收货成功!', $this->createMobileUrl('feedback', array('orderid' => $id)), 'success');
    }
} else {
    $store = $this->getStoreById($order['storeid']);

    if ($order['dining_mode'] == 1 || $order['dining_mode'] == 3) {
        $tablesid = intval($order['tables']);
        $table = pdo_fetch("SELECT * FROM " . tablename($this->table_tables) . " where weid = :weid AND id=:id LIMIT 1", array(':weid' => $weid, ':id' => $tablesid));
        if (empty($table)) {
            exit('餐桌不存在！');
        } else {
            $tablezones = pdo_fetch("SELECT * FROM " . tablename($this->table_tablezones) . " where weid = :weid AND id=:id LIMIT 1", array(':weid' => $weid, ':id' => $table['tablezonesid']));
            if (empty($tablezones)) {
                exit('餐桌类型不存在！');
            }
            $table_title = $tablezones['title'] . '-' . $table['title'];
        }
    }

    if ($order['dining_mode'] == 3) {
        $tablezones = pdo_fetch("SELECT * FROM " . tablename($this->table_tablezones) . " where weid = :weid AND id=:id LIMIT 1", array(':weid' => $weid, ':id' => $order['tablezonesid']));
    }
    $order['goods'] = pdo_fetchall("SELECT a.*,b.title FROM " . tablename($this->table_order_goods) . " as a left join  " . tablename($this->table_goods) . " as b on a.goodsid=b.id WHERE a.weid = '{$weid}' and a.orderid={$order['id']}");

    if ($order['couponid'] != 0) {
        $coupon = pdo_fetch("SELECT a.* FROM " . tablename($this->table_coupon) . "
        a INNER JOIN " . tablename($this->table_sncode) . " b ON a.id=b.couponid
 WHERE a.weid = :weid AND b.id=:snid ORDER BY b.id
 DESC LIMIT 1", array(':weid' => $weid, ':snid' => $order['couponid']));

        if (!empty($coupon)) {
            if ($coupon['type'] == 2) {
                $coupon_info = "代金券抵用金额" . $order['discount_money'];
            } else {
                $coupon_info = $coupon['title'];
            }
        }
    }

    if ($order['dining_mode'] == 2) {
        $deliveryuser = pdo_fetch("SELECT * FROM " . tablename($this->table_account) . " where id=:id LIMIT 1", array(':id' => $order['delivery_id']));
    }


    $config_array = pdo_fetch("SELECT * FROM " . tablename('uni_account_modules') . " WHERE uniacid=:uniacid LIMIT 1", array(':uniacid' => $_W['uniacid']));
    WeUtility::logging('pay', '1111+++++++++' . var_export($config_array, 1));
    $setting_config = unserialize($config_array['settings']);
//    var_dump('TODO jieqiangtest table==',$setting_config,$_W['uniacid']);exit;
    $config_setting = pdo_fetch("SELECT * FROM " . tablename('weisrc_dish_setting') . " WHERE weid=:weid LIMIT 1", array(':weid' => $_W['uniacid']));

    $store['is_fengniao'] = $setting_config['weisrc_dish']['is_fengniao'];
    $store['is_dada'] = $setting_config['weisrc_dish']['is_dada'];
    // TODO判断蜂鸟还是达达
    if ($order['dining_mode'] == 2 && $setting_config['weisrc_dish']['is_fengniao'] == 1) {
//        include "../../addons/weisrc_dish/fengniao.php";
//        $setting_config = pdo_fetch("SELECT * FROM " . tablename("weisrc_dish_setting") . " WHERE weid=:weid LIMIT 1", array(':weid' => $store['weid']));
        $setting['fengniao_appid'] = $config_setting['fengniao_appid'];
        $setting['fengniao_key'] = $config_setting['fengniao_key'];
        $r = new fengniao($setting['fengniao_appid'], $setting['fengniao_key']);
        $r->requestToken();
        $result = $r->queryQrderNew($_GPC['orderid']);
        $result_order = json_decode($result)->data;
        WeUtility::logging('pay', '$result+++++++++' . $result);
    } elseif ($order['dining_mode'] == 2 && $setting_config['weisrc_dish']['is_dada'] == 1) {
//        $setting_config = pdo_fetch("SELECT * FROM " . tablename("weisrc_dish_setting") . " WHERE weid=:weid LIMIT 1", array(':weid' => $store['weid']));

//         var_dump('TODO jieqiangtest==$setting_config==',$setting_config,$store);
//         var_dump('TODO jieqiangtest==$order==',$order,$store);
        //达达*********************配置项*************************
        // include "../../addons/weisrc_dish/DadaOpenapi.php";
        $config = array();
        $config['app_key'] = $config_setting['dada_appid'];
        $config['app_secret'] = $config_setting['dada_key'];
        $config['source_id'] = '3450';
        $config['url'] = 'http://newopen.imdada.cn/api/order/status/query';
        $obj = new DadaOpenapi($config);
        //***********************发单接口************************
//发单请求数据,只是样例数据，根据自己的需求进行更改。
        $data = array(
            'order_id' => $order['id']
        );

        // 请求接口
        $reqStatus = $obj->makeRequest($data);
        // var_dump('TODO jieqiangtest==结果$reqStatus==',$reqStatus);
        if (!$reqStatus) {
            //接口请求正常，判断接口返回的结果，自定义业务操作
            if ($obj->getCode() == 0) {
                /*$result = $obj->getResult();
                $result_order = json_decode($result->data);*/
                $result_order = $obj->getResult();
                //返回成功 ....
            } else {
                //返回失败
            }
            // echo sprintf('code:%s，msg:%s', $obj->getCode(), $obj->getMsg());
        } else {
            //请求异常或者失败
            echo 'except';
        }
    }
    include $this->template($this->cur_tpl . '/orderdetail');
}


