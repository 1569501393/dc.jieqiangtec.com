<?php
class PayNotifyCallBack extends WxPayNotify
{
	//查询订单
	public function Queryorder($transaction_id)
	{
		$input = new WxPayOrderQuery();
		$input->SetTransaction_id($transaction_id);
		$result = WxPayApi::orderQuery($input);
		// 		Log::DEBUG("query:" . json_encode($result));
		if(array_key_exists("return_code", $result)
				&& array_key_exists("result_code", $result)
				&& $result["return_code"] == "SUCCESS"
				&& $result["result_code"] == "SUCCESS")
		{
			return true;
		}
		return false;
	}

	//重写回调处理函数
	public function NotifyProcess($data, &$msg)
	{
		global $_CONFIG,$_LOG;
		// 		Log::DEBUG("call back:" . json_encode($data));
		$notfiyOutput = array();
		$_LOG[] = "进入订单处理流程";
		if(!array_key_exists("transaction_id", $data)){
			$msg = "输入参数不正确";
			$_LOG[] = "输入参数不正确";
			return false;
		}
		//查询订单，判断订单真实性
		if(!$this->Queryorder($data["transaction_id"])){
			$msg = "订单查询失败";
			$_LOG[] = "订单查询失败，订单可能系伪造";
			return false;
		}
		
		wxnotify($data);
		
		$orderId = $data['attach'];
		$trade_no = $data['attach'];
		$out_trade_no = $data['attach'];
		
		$amount = $data['total_fee']/100;
		
		$_LOG[] = "来源合法性验证成功[No.:{$orderId}][M:{$amount}]";
		// 					WS_Log('',$_POST);
		

		return true;
	}
}