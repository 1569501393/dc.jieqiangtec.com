<?php

/**

 * [Weizan System] Copyright (c) 2014 WEIZANCMS.COM

 

 */

defined('IN_IA') or exit('Access Denied');

$dos = array('buy');

$do = in_array($_GPC['do'], $dos)? $do : 'buy' ;

global $_W,$_GPC;

checklogin();

$user      =$_W['user'];

if ($do == 'buy') {

$group     =pdo_get('users_group',array('id'=>$user['groupid']));

$usergroups=pdo_fetchall("SELECT * FROM".tablename('users_group') ."where price >= 1 order by price asc",array(':price'=>$group['price']),'id');



$ob = Hj\M("ims_users_group_vipprice");
$listvipprice = $ob->where(array('ugid'=>$group['id'],'status'=>'1'))->order(array('orderby'=>'asc'))->select();

if($_GPC['gpid']){
    $gpid=$_GPC['gpid'];
    
    $ob = Hj\M("ims_users_group_vipprice");
//     //获取指定续费价格组
    $priceinfo = $ob->where(array('gpid'=>$gpid))->find();
    
//     print_r($priceinfo);
//     //判断价格组是否 为自己当前等级
    if($group['id'] == $priceinfo['ugid']){
        
        $credit  = $user['credit2'] - $priceinfo['price'];
        $endtime = $user['endtime'] + $priceinfo['day']*86400;
        if($credit<0){message('余额不足，您当前还需充值'.(-$credit).'元方能成功续费',url('member/member'),error);}
        else{
            pdo_update('users',array('credit2'=>$credit,'endtime'=>$endtime),array('uid'=>$user['uid']));
            pdo_insert('users_credits_record',array('uid'=>$user['uid'],'credittype'=>'credit2','num'=>-$priceinfo['price'],'createtime'=>TIMESTAMP,'remark'=>'会员续费'));
            message('续费成功！',url('member/buypackage'),success);
        }
        
    }else{
        message('输入错误请重新输入',url('member/buypackage'),error);
    }
    
//     exit();
    
}


	if($_GPC['groupid']){

		$groupid=$_GPC['groupid'];

		if(empty($usergroups[$groupid])){message('访问错误',url('member/buypackage'),error);}

		if($groupid == $group['id']){

			$credit  = $user['credit2'] - $group['price'];

			$endtime = $user['endtime'] + 31*86400;

			if($credit<0){message('余额不足，您当前还需充值'.(-$credit).'元方能成功续费',url('member/member'),error);}

			else{

				pdo_update('users',array('credit2'=>$credit,'endtime'=>$endtime),array('uid'=>$user['uid']));

				pdo_insert('users_credits_record',array('uid'=>$user['uid'],'credittype'=>'credit2','num'=>-$group['price'],'createtime'=>TIMESTAMP,'remark'=>'会员续费'));

				message('续费成功！',url('member/buypackage'),success);

			}

		}

		else{

			$price  = sprintf("%.2f",($usergroups[$groupid]['price'] - $group['price'])*($user['endtime']- TIMESTAMP)/31536000);

			$credit = $user['credit2'] - $price;

			if($credit<0){message('余额不足，您当前还需充值'.(-$credit).'元（计算公式：(剩余天数/365)*套餐差价）方能成功升级套餐',url('member/member'),error);}

			else{

				pdo_update('users',array('groupid'=>$groupid,'credit2'=>$credit),array('uid'=>$user['uid']));

				pdo_insert('users_credits_record',array('uid'=>$user['uid'],'credittype'=>'credit2','num'=>-$price,'createtime'=>TIMESTAMP,'remark'=>'会员升级'));

				message('升级成功！',url('member/buypackage'),success);

			}

		}

	}

}

template('member/buypackage');