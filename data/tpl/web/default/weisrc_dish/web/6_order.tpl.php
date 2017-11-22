<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<style>
    /*top1.html*/
    .topleft1{background-color:#f8f8f8; height:58px; border:1px solid #ebebeb;margin-bottom: 10px;}
    .topright1 li{display:inline-block; line-height:60px; font-size:16px; color:#666; width:210px; padding-left:10px;}
    .topright1 li a{font-size:16px;}
    .xian{border-left:1px solid #DCDCDC; line-height:45px; display:block; padding-left:10px;}
    .topright1 li img{margin-left:5px; width:28px; vertical-align:middle; margin-top:-2px;}
</style>
<?php  if($cur_store['is_speaker']==1) { ?>
<?php  include $this->template('web/_common');?>
<?php  } ?>
<?php  if($operation == 'fengniaolist') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row-fluid">
                蜂鸟回调日志<a class="btn btn-danger btn-sm" href="<?php  echo $this->createWebUrl('order', array('op' => 'display', 'storeid' => $storeid))?>" title="蜂鸟配送">返回</a>
            </div>
        </div>
        <form action="" method="post" class="form-horizontal form" >
            <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:10%;">蜂鸟单号</th>
                        <th style="width:10%;">订单号</th>
                        <th style="width:10%;">状态码</th>
                        <th style="width:30%;">配送员</th>
                        <th style="width:30%;">描述信息</th>
                        <th style="width:10%;">推送时间</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td>
                            <?php  echo $item['open_order_code'];?>
                        </td>
                        <td>
                            <?php  echo $item['partner_order_code'];?>
                        </td>
                        <td>
                            <?php  if($item['order_status'] == 0) { ?>
                            未接单
                            <?php  } else if($item['order_status'] == 5) { ?>
                            系统拒单/配送异常
                            <?php  } else if($item['order_status'] == 1) { ?>
                            系统已接单
                            <?php  } else if($item['order_status'] == 20) { ?>
                            已分配骑手
                            <?php  } else if($item['order_status'] == 80) { ?>
                            骑手已到店
                            <?php  } else if($item['order_status'] == 2) { ?>
                            配送中
                            <?php  } else if($item['order_status'] == 4) { ?>
                            已取消
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  echo $item['carrier_driver_name'];?><br/><?php  echo $item['carrier_driver_phone'];?>
                        </td>
                        <td>
                            <?php  echo $item['error_code'];?><br>
                            <?php  echo $item['description'];?>
                        </td>
                        <td><?php  echo date("Y-m-d H:i:s", $item['push_time'])?></td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
                <?php  echo $pager;?>
            </div>
            <div style="height: 50px;"></div>
        </form>
    </div>
</div>

<?php  } else if($operation == 'display') { ?>
<style>
    .page-nav {
        margin: 0;
        width: 100%;
        min-width: 800px;
    }

    .page-nav > li > a {
        display: block;
    }

    .page-nav-tabs {
        background: #EEE;
    }

    .page-nav-tabs > li {
        line-height: 40px;
        float: left;
        list-style: none;
        display: block;
        text-align: -webkit-match-parent;
    }

    .page-nav-tabs > li > a {
        font-size: 14px;
        color: #666;
        height: 40px;
        line-height: 40px;
        padding: 0 10px;
        margin: 0;
        border: 1px solid transparent;
        border-bottom-width: 0px;
        -webkit-border-radius: 0;
        -moz-border-radius: 0;
        border-radius: 0;
    }

    .page-nav-tabs > li > a, .page-nav-tabs > li > a:focus {
        border-radius: 0 !important;
        background-color: #f9f9f9;
        color: #999;
        margin-right: -1px;
        position: relative;
        z-index: 11;
        border-color: #c5d0dc;
        text-decoration: none;
    }

    .page-nav-tabs >li >a:hover {
        background-color: #FFF;
    }

    .page-nav-tabs > li.active > a, .page-nav-tabs > li.active > a:hover, .page-nav-tabs > li.active > a:focus {
        color: #576373;
        border-color: #c5d0dc;
        border-top: 2px solid #4c8fbd;
        border-bottom-color: transparent;
        background-color: #FFF;
        z-index: 12;
        margin-top: -1px;
        box-shadow: 0 -2px 3px 0 rgba(0, 0, 0, 0.15);
    }
</style>
<div class="main">
    <div class="alert alert-info">
        <i class="fa fa-info-circle"></i>提示：<br/>
        1.未处理订单表示商家未接单，确认订单表示商家已接单，完成订单表示交易成功，若设置积分顾客可以获得积分。<br/>
        2.完成和取消操作才有信息提醒用户，其它操作想信息提醒，请勾选单子后点通知按钮。
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <a class="btn btn-success btn-xs"
               href="<?php  echo $this->createWebUrl('operatornotice', array('op' => 'new', 'storeid' => $storeid))?>"  onclick="return confirm('确认最新通知吗？'); return false;" title="确认最新通知">
                <i class="fa fa-bullhorn"></i> 关闭最新服务通知</a>
            <a class="btn btn-danger btn-xs"
               href="<?php  echo $this->createWebUrl('operatornotice', array('op' => 'all', 'storeid' => $storeid))?>"  onclick="return confirm('确认所有通知吗？'); return false;" title="确认所有通知">
                <i class="fa fa-bullhorn"></i> 关闭所有服务通知</a>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">筛选</div>
        <div class="panel-body">
            <form action="" method="get" class="form-horizontal" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="order" />
                <input type="hidden" name="op" value="display" />
                <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">订单号</label>
                    <div class="col-sm-2 col-lg-2">
                        <input class="form-control" name="ordersn" id="" type="text" value="<?php  echo $_GPC['ordersn'];?>">
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">订单状态</label>
                    <div class="col-sm-8 col-lg-2 col-xs-12">
                        <select name="status" class="form-control">
                            <option value="">不限</option>
                            <option value="3" <?php  if($_GPC['status'] == 3) { ?> selected="selected" <?php  } ?>>已完成</option>
                            <option value="1" <?php  if($_GPC['status'] == 1) { ?> selected="selected" <?php  } ?>>已确认</option>
                            <option value="0" <?php  if($_GPC['status'] == 0 && isset($_GPC['status']) && $_GPC['status'] != '') { ?> selected="selected" <?php  } ?>>待处理</option>
                            <option value="-1" <?php  if($_GPC['status'] == -1) { ?> selected="selected" <?php  } ?>>已取消</option>
                        </select>
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width: 90px;">支付方式</label>
                    <div class="col-sm-7 col-lg-2 col-xs-12">
                        <select name="paytype" class="form-control">
                            <option value="">不限</option>
                            <option value="0" <?php  if($_GPC['paytype'] == 0 && isset($_GPC['paytype']) && $_GPC['paytype'] != '') { ?> selected="selected" <?php  } ?>>未确认</option>
                            <option value="1" <?php  if($_GPC['paytype'] == 1) { ?> selected="selected" <?php  } ?>>余额支付</option>
                            <option value="2" <?php  if($_GPC['paytype'] == 2) { ?> selected="selected" <?php  } ?>>微信支付</option>
                            <option value="3" <?php  if($_GPC['paytype'] == 3) { ?> selected="selected" <?php  } ?>>现金付款</option>
                            <option value="4" <?php  if($_GPC['paytype'] == 4) { ?> selected="selected" <?php  } ?>>支付宝</option>
                            <option value="10" <?php  if($_GPC['paytype'] == 10) { ?> selected="selected" <?php  } ?>>pos刷卡</option>
                            <option value="11" <?php  if($_GPC['paytype'] == 11) { ?> selected="selected" <?php  } ?>>挂帐</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">桌台号</label>
                    <div class="col-sm-2 col-lg-2">
                        <input class="form-control" name="tableid" id="tableid" type="text" value="<?php  echo $_GPC['tableid'];?>">
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width: 90px;">订单类型</label>
                    <div class="col-sm-7 col-lg-2 col-xs-12">
                        <select name="dining_mode" class="form-control">
                            <option value="">不限</option>
                            <option value="1" <?php  if($_GPC['dining_mode'] == 1) { ?> selected="selected" <?php  } ?>>堂点</option>
                            <option value="2" <?php  if($_GPC['dining_mode'] == 2) { ?> selected="selected" <?php  } ?>>外卖</option>
                            <option value="3" <?php  if($_GPC['dining_mode'] == 3) { ?> selected="selected" <?php  } ?>>预定</option>
                            <option value="4" <?php  if($_GPC['dining_mode'] == 4) { ?> selected="selected" <?php  } ?>>快餐</option>
                            <option value="5" <?php  if($_GPC['dining_mode'] == 5) { ?> selected="selected" <?php  } ?>>收银</option>
                            <option value="6" <?php  if($_GPC['dining_mode'] == 6) { ?> selected="selected" <?php  } ?>>充值</option>
                        </select>
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width: 90px;">下单时间</label>
                    <div class="col-sm-7 col-lg-3 col-xs-12">
                        <?php  echo tpl_form_field_daterange('time', array('starttime'=>date('Y-m-d', $starttime),'endtime'=>date('Y-m-d', $endtime)),true);?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width: 90px;">支付状态</label>
                    <div class="col-sm-7 col-lg-2 col-xs-12">
                        <select name="ispay" class="form-control">
                            <option value="">不限</option>
                            <option value="0" <?php  if($_GPC['ispay'] == 0 && isset($_GPC['ispay']) && $_GPC['ispay'] != '') { ?> selected="selected" <?php  } ?>>未支付</option>
                            <option value="1" <?php  if($_GPC['ispay'] == 1) { ?> selected="selected" <?php  } ?>>已支付</option>
                            <option value="2" <?php  if($_GPC['ispay'] == 2) { ?> selected="selected" <?php  } ?>>待退款</option>
                            <option value="3" <?php  if($_GPC['ispay'] == 3) { ?> selected="selected" <?php  } ?>>已退款</option>
                            <option value="4" <?php  if($_GPC['ispay'] == 4) { ?> selected="selected" <?php  } ?>>退款失败</option>
                        </select>
                    </div>
                    <div class="col-sm-3 col-lg-3">
                        <button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
                        <button class="btn btn-success" name="out_put" value="output"><i class="fa fa-file"></i> 导出</button>
                        <button class="btn btn-success" name="out_put" value="out_goods"><i class="fa fa-file"></i>
                            导出(商品)
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            <div class="row-fluid">
                <div class="span3 control-group">
                    总订单:<strong class="text-danger"><?php  echo $total;?></strong>
                    <?php  if($order_count > 0) { ?>
                    ,未处理订单:<strong class="text-danger"><?php  echo $order_count;?></strong>
                    <?php  } ?>
                    ,订单总金额:<strong class="text-danger"><?php  echo $order_price;?></strong>
                    <?php  if($cur_store['is_fengniao'] == 1) { ?>
                    <a class="btn btn-danger btn-sm" href="<?php  echo $this->createWebUrl('order', array('op' => 'fengniaolist', 'storeid' => $storeid))?>">
                        蜂鸟回调日志
                    </a>
                    <?php  } ?>
                </div>
            </div>
        </div>
        <form action="" method="post" class="form-horizontal form" >
            <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                        <tr>
                            <th class='with-checkbox' style="width:2%;"><input type="checkbox" class="check_all" /></th>
                            <th style="width:5%;">编号</th>
                            <th style="width:16%;">订单号</th>
                            <th style="width:10%;">订单总额</th>
                            <th style="width:15%;">联系信息</th>
                            <th style="width:14%;">类型</th>
                            <th style="width:8%;">状态</th>
                            <th style="width:10%;">支付状态</th>
                            <th style="width:10%;">下单时间</th>
                            <th style="width:12%; text-align:right;"></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php  if(is_array($list)) { foreach($list as $item) { ?>
                        <tr>
                            <td class="with-checkbox"><input type="checkbox" name="check" value="<?php  echo $item['id'];?>"></td>
                            <td>
                                <?php  echo $item['id'];?>
                            </td>
                            <td>
                                <?php  echo $item['ordersn'];?>
                                <?php  $br = 0?>
                                <?php  if($item['is_append']==1) { ?>
                                <br/>
                                <span class="label label-success">加单</span>
                                <?php  $br = 1?>
                                <?php  } ?>
                                <?php  if($item['append_dish']==1) { ?>
                                <?php  if($br == 0) { ?><br/><?php  } ?>
                                <span class="label label-danger">加菜</span>
                                <?php  $br = 1?>
                                <?php  } ?>
                                <?php  if($item['isvip']==1) { ?>
                                <?php  if($br == 0) { ?><br/><?php  } ?>
                                <span class="label label-success">会员</span>
                                <?php  } ?>
                                <?php  if($item['ismerge']==1) { ?>
                                <br/>
                                <span class="label label-success">并单</span>
                                <?php  } ?>
                            </td>
                            <td><span class="label label-warning" style="font-weight:bold;">￥<?php  echo $item['totalprice'];?></span></td>
                            <td>
                                <?php  echo $item['username'];?>
                                <br/><?php  echo $item['tel'];?>
                                <?php  if(!empty($item['address'])) { ?>
                                <br/><?php  echo $item['address'];?>
                                <?php  } ?>
                            </td>
                            <td>
                                <?php  if($item['dining_mode']==1) { ?><span class="label label-info" title="堂点" style="background-color: #9585bf;border-color: #9585bf;"><i class="fa fa-cutlery"> 店内</i></span>
                                <?php  } ?>
                                <?php  if($item['dining_mode']==2) { ?><span class="label label-info" title="外卖"  style="background-color: #4f99c6;border-color: #4f99c6;"><i class="fa fa-truck"> 外卖</i></span><?php  } ?>
                                <?php  if($item['dining_mode']==3) { ?><span class="label label-info" title="预定" style="background-color: #d43f3a;border-color: #fee188;"><i class="fa fa-calendar"> 预定</i></span><?php  } ?>
                                <?php  if($item['dining_mode']==4) { ?><span class="label label-info" title="快餐" style="background-color: #be386a;border-color: #be386a;"><i class="fa fa-delicious"> 快餐</i></span>
                                <?php  if(!empty($item['quicknum'])) { ?>
                                <br><span class="label label-info">牌号:<?php  echo $item['quicknum'];?></span>
                                <?php  } ?>
                                <?php  } ?>
                                <?php  if($item['dining_mode']==5) { ?><span class="label label-info" title="收银" style="background-color: #d43f3a;border-color: #fee188;"><i class="fa fa-calendar"> 收银</i></span><?php  } ?>
                                <?php  if($item['dining_mode']==6) { ?><span class="label label-info" title="充值" ><i class="fa fa-calendar"> 充值</i></span><?php  } ?>
                                <?php  if(!empty($item['meal_time'])) { ?>
                                <br><span class="label label-info"><?php  echo $item['meal_time'];?></span>
                                <?php  } ?>
                                <?php  if(!empty($item['table'])) { ?>
                                <br><span class="label label-info">桌号:<?php  echo $item['table'];?></span>
                                <?php  } ?>
                            </td>
                            <td>
                                <?php  if($item['status'] == 0) { ?><span class="label label-info">待处理</span><?php  } ?>
                                <?php  if($item['status'] == 1) { ?><span class="label label-warning">已确认</span><?php  } ?>
                                <?php  if($item['status'] == 2) { ?><span class="label label-success">已并台</span><?php  } ?>
                                <?php  if($item['status'] == 3) { ?><span class="label label-success">已完成</span><?php  } ?>
                                <?php  if($item['status'] == -1) { ?><span class="label label-danger">已取消</span><?php  } ?>
                            </td>
                            <td>
                                <?php  if($item['paytype']) { ?>
                                <?php  if($item['paytype'] == 1) { ?>
                                <span class="label label-success"><i class="fa fa-money">&nbsp;余额支付</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 2) { ?>
                                <span class="label label-success"><i class="fa fa-check-circle">&nbsp;微信支付</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 3) { ?>
                                <span class="label label-success"><i class="fa fa-money">&nbsp;现金支付</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 4) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;支付宝</i></span>
                                <?php  } ?>
                                <!--5现金，6银行卡，7会员卡，8微信，9支付宝-->
                                <?php  if($item['paytype'] == 5) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;现金</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 6) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;银行卡</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 7) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;会员卡</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 8) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;微信</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 9) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;支付宝</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 10) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;pos刷卡</i></span>
                                <?php  } ?>
                                <?php  if($item['paytype'] == 11) { ?>
                                <span class="label label-info"><i class="fa fa-alipay">&nbsp;挂帐</i></span>
                                <?php  } ?>
                                <br/>
                                <?php  } ?>
                                <?php  if($item['ispay'] == 0) { ?><span class="label label-warning">未支付</span><?php  } ?>
                                <?php  if($item['ispay'] == 1) { ?><span class="label label-success"><i class="fa fa-cloud">已支付</i></span><?php  } ?>
                                <?php  if($item['ispay'] == 2) { ?><span class="label label-info">待退款</span><?php  } ?>
                                <?php  if($item['ispay'] == 3) { ?><span class="label label-danger">已退款</span><?php  } ?>
                                <?php  if($item['ispay'] == 4) { ?><span class="label label-danger">退款失败</span><?php  } ?>
                            </td>
                            <td><?php  echo date("Y-m-d", $item['dateline'])?><br/>
                                <?php  echo date("H:i:s", $item['dateline'])?>
                            </td>
                            <td style="text-align:left;">
                                <a class="btn btn-info btn-sm" href="<?php  echo $this->createWebUrl('order', array('op' => 'detail', 'id' => $item['id'], 'storeid' => $storeid))?>" title="详情">详情</a>
                                <?php  if($cur_store['is_fengniao'] == 1) { ?>
                                <?php  if($item['dining_mode']==2) { ?>
                                <a class="btn btn-danger btn-sm" href="<?php  echo $this->createWebUrl('order', array('op' => 'sendfengniao', 'id' => $item['id'], 'storeid' => $storeid))?>" title="蜂鸟配送">蜂鸟配送</a>
                                <?php  } ?>
                                <?php  } ?>

                                <?php  if($item['status'] != 3 && $item['ispay'] != 3) { ?>

                                <?php  if($item['ispay'] == 1 || $item['ispay'] == 2 || $item['ispay'] == 4) { ?>
                                <a class="btn btn-danger btn-sm <?php  if($setting['is_operator_pwd'] == 1) { ?>btnrefund<?php  } ?>"
                                   href="<?php  if($setting['is_operator_pwd'] == 1) { ?>javascript:void(0);<?php  } else { ?><?php  echo $this->createWebUrl('order', array('op' => 'refund', 'id' => $item['id'], 'storeid' => $storeid))?><?php  } ?>" title="退款" <?php  if($setting['is_operator_pwd'] == 0) { ?>onclick="return confirm('此操作不可恢复，确认退款？');return false;"<?php  } ?> data-orderid=<?php  echo $item['id'];?> >退款</a>
                                <?php  } ?>
                                <?php  } ?>
                            </td>
                        </tr>
                        <?php  } } ?>
                    </tbody>
                </table>
                <?php  echo $pager;?>
            </div>
            <div style="height: 50px;"></div>
        </form>
    </div>
</form>
<div class="shop-preview col-xs-12 col-sm-9 col-lg-10">
    <div class="text-left alert alert-info">
        <input type="button" class="btn btn-success" name="btn_printall" value="前台打印" />
        <input type="button" class="btn btn-success" name="btn_printall2" value="后厨打印" />
        <input type="button" class="btn btn-warning" name="btn_payall" value="付款" />
        <input type="button" class="btn btn-info" name="btn_confirmall" value="确认" />
        <input type="button" class="btn btn-success" name="btn_finishall" value="完成" />
        <input type="button" class="btn btn-danger" name="btn_cancelall" value="取消" />
        <input type="button" class="btn btn-info" name="btn_noticeall" value="通知" />
        <input type="button" class="btn btn-warning" name="btn_mergeall" value="合并店内订单" />
        <!--<div style="margin-top: 10px;">-->
            <!-- -->
        <!--</div>-->
    </div>
</div>
<style>
    .shop-preview {
        position: fixed;
        padding: 0 15px;
        bottom: 0;
        right: 0;
        z-index: 100;
        width: 83.33333333%;
    }
    .shop-preview div {
        filter:alpha(opacity=20);
        /*background: rgba(255, 254, 220, 0.8);*/
    }
</style>
</div>

<div id="order-operator-modal"  class="modal fade" tabindex="-1">
    <div class="modal-dialog" style='width: 520px;'>
        <div class="modal-content">
            <div class="modal-header"><button aria-hidden="true" data-dismiss="modal" class="close" type="button">×
                </button><h3>订单退款</h3></div>
            <div class="modal-body">
                <form id="Form1" action="<?php  echo $this->createWebUrl('order', array('op' => 'refund', 'storeid' => $storeid))?>" method="post" class="form-horizontal">
                    <input type="hidden" name="id" id="id" value="0">
                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label">操作密码</label>
                        <div class="col-sm-9">
                            <div class="input-append">
                                <input type="password" placeholder="操作密码" name="operator_pwd" id="operator_pwd" class="form-control" data-rule-required="true" data-rule-number="true">
                                <span class="add-on"><i class="icon-cny"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
                        <div class="col-sm-9">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                            <button type="submit" class="btn btn-primary">提交</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(function () {
        $("tr").delegate(".btnrefund", "click", function () {
            $("#id").val($(this).attr("data-orderid"));
            $('#order-operator-modal').modal();
        });

        $(".check_all").click(function () {
            var checked = $(this).get(0).checked;
            $("input[type=checkbox]").attr("checked", checked);
        });

        $("input[name=btn_printall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要打印的订单!');
                return false;
            }
            if (confirm("确认要打印选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'printall', 'storeid' => $storeid, 'position_type' => 1))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                );
            }
        });
        $("input[name=btn_printall2]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要打印的订单!');
                return false;
            }
            if (confirm("确认要打印选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'printall', 'storeid' => $storeid, 'position_type' => 2))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                );
            }
        });


        $("input[name=btn_payall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要支付的订单!');
                return false;
            }
            if (confirm("确认要支付选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'payall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                        );
            }
        });
        $("input[name=btn_confirmall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要确认的订单!');
                return false;
            }
            if (confirm("确定要确认选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'confirmall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                        );
            }
        });
        $("input[name=btn_finishall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要完成的订单!');
                return false;
            }
            if (confirm("确定要完成选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'finishall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                        );
            }
        });
        $("input[name=btn_cancelall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要取消的订单!');
                return false;
            }
            if (confirm("确定要取消选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'cancelall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                        );
            }
        });
        $("input[name=btn_noticeall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要通知的订单!');
                return false;
            }
            if (confirm("确定要通知选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'noticeall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                        );
            }
        });

        $("input[name=btn_mergeall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 2) {
                alert('请选择要合并的订单!');
                return false;
            }
            if (confirm("确定要合并选择的订单?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('order', array('op' => 'mergeall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                );
            }
        });
    });
</script>
<?php  } else if($operation == 'detail') { ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/order_detail', TEMPLATE_INCLUDEPATH)) : (include template('web/order_detail', TEMPLATE_INCLUDEPATH));?>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>