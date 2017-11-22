<?php

class NativeNotifyCallBack extends WxPayNotify
{
	
	public function NotifyProcess($data, &$msg)
	{
		global $_CONFIG,$_LOG;
		//echo "处理回调";
		

		
		$orderId = $data['out_trade_no'];
		if(!SingleLock($orderId)){
			WS_Log('',"订单[{$orderId}]支付成功通知正在处理中。本次处理自动退出。");
			$_LOG[] = "进程冲突，退出";
			echo "fail";
			return ;
		}
		
		$amount = $data['total_fee']/100;
		if($_CONFIG['VERSION']=='DEMO'){
			$amount = 100000;
		}
		$_LOG[] = "来源合法性验证成功[No.:{$orderId}][M:{$amount}]";
		// 					WS_Log('',$_POST);
		//支付成功
		$ob = new PaymentModel();
		$ob->Success($orderId, 'cn', 'PaySys.WxPay.v1_0', '微信支付',
				$amount, '', $data);
		
		
		return true;
	}
}


