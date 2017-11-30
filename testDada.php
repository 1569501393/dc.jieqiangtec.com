<?php
header("Content-Type: text/html;charset=utf-8");
/**
 * 新达达开放平台发单接口DEMO
 * 详情：发单
 * 版本：1.0
 * 日期：2016-09-10
 * 说明：
 * 以下代码只是为了方便对接商户测试而提供的样例代码，对接商户可以根据自己的需求，按照技术文档编写，代码仅供参考。
 */
var_dump(dirname(__FILE__));
require_once dirname(__FILE__) . '/addons/weisrc_dish/DadaOpenapi.php';

//*********************配置项*************************
$config = array();
$config['app_key'] = 'dada1ca630e2c3b1d26';
$config['app_secret'] = '06efdb149bf5167ba76b4105fc56c8ec';
$config['source_id'] = '3450';
$config['url'] = 'http://newopen.imdada.cn/api/order/formalCancel'; // 取消订单
// $config['url'] = 'http://newopen.imdada.cn/api/order/status/query'; // 查看订单
$obj = new DadaOpenapi($config);

//***********************发单接口************************
//发单请求数据,只是样例数据，根据自己的需求进行更改。
/*$data = array(
    'order_id'=> '466', // 477
    'cancel_reason_id'=>1
);*/

$data = array(
    'order_id'=> '479', // 477
	'cancel_reason_id'=>1
);


//请求接口
$reqStatus = $obj->makeRequest($data);
$result = $obj->getResult();
$result_order = json_decode($result->data);
var_dump($obj,$result);

if (!$reqStatus) {
    //接口请求正常，判断接口返回的结果，自定义业务操作
    if ($obj->getCode() == 0) {
        //返回成功 ....
    }else{
        //返回失败
    }
    echo sprintf('code:%s，msg:%s', $obj->getCode(), $obj->getMsg());
}else{
    //请求异常或者失败
    echo 'except';
}



