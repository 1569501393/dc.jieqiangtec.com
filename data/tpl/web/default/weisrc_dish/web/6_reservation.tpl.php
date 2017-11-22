<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<?php  if($operation == 'display') { ?>
<div class="main">
    <ul class="nav nav-tabs" role="tablist">
        <li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>>
            <a href="<?php  echo $this->createWebUrl('reservation', array('op' => 'display', 'storeid' => $storeid))?>">预订时间</a>
        </li>
        <li <?php  if($operation == 'setting') { ?>class="active"<?php  } ?>>
            <a href="<?php  echo $this->createWebUrl('reservation', array('op' => 'setting', 'storeid' => $storeid))?>">预订详情设置</a>
        </li>
        <li>
        <a
                href="<?php  echo $this->createWebUrl('order', array('op' => 'display', 'storeid' => $storeid, 'dining_mode' => 3))?>">预订订单(待处理:<?php  echo $order_count;?>)</a>
        </li>
    </ul>
    <div class="panel panel-default">
        <div class="panel-body">
            <div class="header">
                <h3>预订开放时间段 列表</h3>
            </div>
            <div class="form-group">
                <a class="btn btn-primary btn-sm" href="<?php  echo $this->createWebUrl('reservation', array('op' => 'post', 'storeid' => $storeid))?>">新建 预订开放时间段</a>
                <a class="btn btn-success btn-sm" href="<?php  echo $this->createWebUrl('reservation', array('op' => 'batch', 'storeid' => $storeid))?>">批量新建</a>
            </div>
            <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:10%;">顺序</th>
                        <th style="width:23%;">桌台区域或类型</th>
                        <th style="width:23%;">预订预付款</th>
                        <th style="width:23%;">预定时间点</th>
                        <th style="width:21%;text-align: center;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td><input type="text" class="form-control" name="displayorder[<?php  echo $item['id'];?>]" value="<?php  echo $item['displayorder'];?>"></td>
                        <td>
                            <?php  echo $tablezones[$item['tablezonesid']]['title'];?>
                            <a href="<?php  echo $this->createWebUrl('tablezones', array('storeid' => $storeid, 'op' => 'display'))?>">(查看)</a>
                        </td>
                        <td>
                            <?php  echo $tablezones[$item['tablezonesid']]['reservation_price'];?>
                        </td>
                        <td>
                            <?php  echo $item['time'];?><?php  if($item['label']) { ?>(<?php  echo $item['label'];?>)<?php  } ?>
                        </td>
                        <td style="max-width:70px;text-align: center;">
                            <a class="btn btn-success btn-sm" href="<?php  echo $this->createWebUrl('reservation', array('id' => $item['id'], 'storeid' => $storeid, 'op' => 'order'))?>" title="预订">预订</a>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('reservation', array('id' => $item['id'], 'storeid' => $storeid, 'op' => 'post'))?>" title="编辑">改</a>
                            <a class="btn btn-danger btn-sm" href="<?php  echo $this->createWebUrl('reservation', array('id' => $item['id'], 'storeid' => $storeid, 'op' => 'delete'))?>" onclick="return confirm('确认操作吗？');return false;" title="删除">删</a>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="5">
                            <input name="token" type="hidden" value="<?php  echo $_W['token'];?>" />
                            <input type="submit" class="btn btn-primary" name="submit" value="批量更新排序" />
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </form>
            <?php  echo $pager;?>
        </div>
    </div>

</div>
<?php  } else if($operation == 'post') { ?>
<link rel="stylesheet" type="text/css" href="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/plugin/clockpicker/clockpicker.css" media="all">
<script type="text/javascript" src="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/plugin/clockpicker/clockpicker.js"></script>
<link rel="stylesheet" type="text/css" href="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/plugin/clockpicker/standalone.css" media="all">
<script>
    $(function(){
        $('.clockpicker').clockpicker();
    })
</script>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('reservation', array('op' => 'display', 'storeid' => $storeid))?>">返回预订管理
            </a>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
        <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                预订开放时间段 详情
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">时间点</label>
                    <div class="col-sm-3">
                        <div class="input-group clockpicker">
                            <input type="text" class="form-control" value="<?php  if(empty($item['time'])) { ?>09:00<?php  } else { ?><?php  echo $item['time'];?><?php  } ?>" name="time">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                        </div>
                        <div class="help-block">
                            在此时间点前可预定
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">标签</label>
                    <div class="col-sm-9">
                        <input type="text" class="form-control" value="<?php  echo $item['label'];?>" name="label">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">桌台区域或类型</label>
                    <div class="col-sm-9">
                        <select class="form-control" style="margin-right:15px;" name="tablezonesid" autocomplete="off" class="form-control">
                            <?php  if(is_array($tablezones)) { foreach($tablezones as $row) { ?>
                            <option value="<?php  echo $row['id'];?>" <?php  if($row['id'] == $item['tablezonesid']) { ?> selected="selected"<?php  } ?>><?php  echo $row['title'];?></option>
                            <?php  } } ?>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <input type="submit" name="submit" value="保存设置" class="btn btn-primary col-lg-3" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
    </form>
</div>
<?php  } else if($operation == 'batch') { ?>
<link rel="stylesheet" type="text/css" href="../addons/weisrc_dish/plugin/clockpicker/clockpicker.css" media="all">
<script type="text/javascript" src="../addons/weisrc_dish/plugin/clockpicker/clockpicker.js"></script>
<link rel="stylesheet" type="text/css" href="../addons/weisrc_dish/plugin/clockpicker/standalone.css" media="all">
<script>
    $(function(){
        $('.clockpicker').clockpicker();
    })
</script>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('reservation', array('op' => 'display', 'storeid' => $storeid))?>">返回预订管理
            </a>
        </div>
    </div>
    <div class="alert alert-info">
        <strong>温馨提示：</strong>
        <p>
            系统会根据您填写的起始时间点，和创建间隔, 批量创建预订时间点。
            <br>
            例如： 想要在 18:00 开始预订， 每隔30分钟创建一个预订时间点， 创建4个预订时间点。
            <br>
            系统会创建: 18:00, 18:30, 19:00, 19:30 共4个时间点
        </p>
    </div>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
        <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                批量创建预订时间点
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">桌台区域或类型</label>
                    <div class="col-sm-9">
                        <select class="form-control" style="margin-right:15px;" name="tablezonesid" autocomplete="off" class="form-control">
                            <?php  if(is_array($tablezones)) { foreach($tablezones as $row) { ?>
                            <option value="<?php  echo $row['id'];?>" <?php  if($row['id'] == $item['tablezonesid']) { ?> selected="selected"<?php  } ?>><?php  echo $row['title'];?></option>
                            <?php  } } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">开放时间点</label>
                    <div class="col-sm-3">
                        <div class="input-group clockpicker">
                            <input type="text" class="form-control" value="09:00" name="time">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-time"></span></span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">创建间隔(单位： 分钟)</label>
                    <div class="col-sm-9">
                        <input type="number" name="time_point" class="form-control" value="30" placeholder=""/>
                        <span class="help-block">
                            例如每30分钟设立一个预订时间点： 30
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">创建数量</label>
                    <div class="col-sm-9">
                        <input type="number" name="time_count" class="form-control" value="1" placeholder=""/>
                        <span class="help-block">
                            一次最多创建15个预订时间点
                        </span>
                    </div>
                </div>

            </div>
        </div>
        <div class="form-group col-sm-12">
            <input type="submit" name="submit" value="保存设置" class="btn btn-primary col-lg-1" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
    </form>

</div>
<?php  } else if($operation == 'setting') { ?>
<link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/public/web/css/awesome-bootstrap-checkbox.css">
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('reservation', array('op' => 'display', 'storeid' => $storeid))?>">返回预订管理
            </a>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
        <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                预订设置 详情
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否允许提前点餐</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="inlineRadio1" value="1" name="is_reservation_dish" <?php  if($cur_store['is_reservation_dish']==1) { ?>checked<?php  } ?>>
                            <label for="inlineRadio1"> 开启 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="inlineRadio2" value="0" name="is_reservation_dish" <?php  if(empty($cur_store['is_reservation_dish'])) { ?>checked<?php  } ?>>
                            <label for="inlineRadio2"> 关闭 </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否允许今天预定</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="inlineRadio3" value="1" name="is_reservation_today" <?php  if($cur_store['is_reservation_today']==1) { ?>checked<?php  } ?>>
                            <label for="inlineRadio3"> 开启 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="inlineRadio4" value="0" name="is_reservation_today" <?php  if(empty($cur_store['is_reservation_today'])) { ?>checked<?php  } ?>>
                            <label for="inlineRadio4"> 关闭 </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">提前几天预订天数</label>
                    <div class="col-sm-9">
                        <input type="text" name="reservation_days" class="form-control" value="<?php  echo $cur_store['reservation_days'];?>" />
                        <span class="help-block">
                        </span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">预订备注框提示</label>
                    <div class="col-sm-9">
                        <input type="text" name="reservation_tip" class="form-control" value="<?php  if(empty($cur_store['reservation_tip'])) { ?>请输入备注，人数口味等等（可不填）<?php  } else { ?><?php  echo $cur_store['reservation_tip'];?><?php  } ?>" />
                        <span class="help-block"></span>
                    </div>
                </div>
                <?php  if($setting['wechat']==1) { ?>
                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label">微信支付</label>
                        <div class="col-sm-9">
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="wechat1" value="1" name="reservation_wechat" <?php  if($cur_store['reservation_wechat']==1) { ?>checked<?php  } ?>>
                                <label for="wechat1"> 开启 </label>
                            </div>
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="wechat2" value="0" name="reservation_wechat" <?php  if($cur_store['reservation_wechat']==0) { ?>checked<?php  } ?>>
                                <label for="wechat2"> 关闭 </label>
                            </div>
                            <span class="help-block"></span>
                        </div>
                    </div>
                <?php  } ?>
                <?php  if($setting['alipay']==1) { ?>
                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label">支付宝</label>
                        <div class="col-sm-9">
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="alipay1" value="1" name="reservation_alipay" <?php  if($cur_store['reservation_alipay']==1) { ?>checked<?php  } ?>>
                                <label for="alipay1"> 开启 </label>
                            </div>
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="alipay2" value="0" name="reservation_alipay" <?php  if($cur_store['reservation_alipay']==0) { ?>checked<?php  } ?>>
                                <label for="alipay2"> 关闭 </label>
                            </div>
                            <span class="help-block"></span>
                        </div>
                    </div>
                <?php  } ?>
                <?php  if($setting['credit']==1) { ?>

                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label">余额支付</label>
                        <div class="col-sm-9">
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="credit1" value="1" name="reservation_credit" <?php  if($cur_store['reservation_credit']==1) { ?>checked<?php  } ?>>
                                <label for="credit1"> 开启 </label>
                            </div>
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="credit2" value="0" name="reservation_credit" <?php  if($cur_store['reservation_credit']==0) { ?>checked<?php  } ?>>
                                <label for="credit2"> 关闭 </label>
                            </div>
                            <span class="help-block"></span>
                        </div>
                    </div>

                <?php  } ?>
                <?php  if($setting['delivery']==1) { ?>
                    <div class="form-group">
                        <label class="col-xs-12 col-sm-3 col-md-2 control-label">货到付款</label>
                        <div class="col-sm-9">
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="delivery1" value="1" name="reservation_delivery" <?php  if($cur_store['reservation_delivery']==1) { ?>checked<?php  } ?>>
                                <label for="delivery1"> 开启 </label>
                            </div>
                            <div class="radio radio-info radio-inline">
                                <input type="radio" id="delivery2" value="0" name="reservation_delivery" <?php  if($cur_store['reservation_delivery']==0) { ?>checked<?php  } ?>>
                                <label for="delivery2"> 关闭 </label>
                            </div>
                            <span class="help-block"></span>
                        </div>
                    </div>

                <?php  } ?>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <input type="submit" name="submit" value="更新预订设置" class="btn btn-primary col-lg-3" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
    </form>
</div>
<?php  } else if($operation == 'order') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('reservation', array('op' => 'display', 'storeid' => $storeid))?>">返回预订管理
            </a>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
        <input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        <input type="hidden" name="tablezonesid" value="<?php  echo $tablezones['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                <?php  echo $tablezones['title'];?>
            </div>
            <div class="panel-body">

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">日期</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="meal_date" onchange="changeDate(this);">
                            <?php  if(is_array($dates)) { foreach($dates as $date) { ?>
                            <option value="<?php  echo $date;?>" <?php  if($date==$select_date) { ?>selected="selected"<?php  } ?>><?php  echo $date;?></option>
                            <?php  } } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">时间</label>
                    <div class="col-sm-9">
                        <input type="text" name="time" class="form-control" value="<?php  echo $time['time'];?>" readonly/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">包厢/桌号</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="tables" id="tables">
                            <?php  if(is_array($tables)) { foreach($tables as $item) { ?>
                            <option value="<?php  echo $item['id'];?>" selected="selected"><?php  echo $item['title'];?></option>
                            <?php  } } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">姓名</label>
                    <div class="col-sm-9">
                        <input type="text" name="username" class="form-control" value="" />
                        <span class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">电话</label>
                    <div class="col-sm-9">
                        <input type="text" name="mobile" class="form-control" value="" />
                        <span class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">金额</label>
                    <div class="col-sm-9">
                        <input type="text" name="totalprice" class="form-control" value="" />
                        <span class="help-block"></span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">备注</label>
                    <div class="col-sm-9">
                        <textarea style="height:150px;" class="form-control" name="remark" cols="70"></textarea>
                        <span class="help-block"></span>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <input type="submit" name="submit" value="提交订单" class="btn btn-primary col-lg-3" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
    </form>
</div>
<script>
    function changeDate(obj) {
        var select_date = obj.value;
        $.post("<?php  echo $this->createWebUrl('reservation', array('id' => $item['id'], 'timeid' => $timeid, 'storeid' => $storeid, 'op' => 'changedate'))?>",{select_date:select_date}
                ,function(d){
                    $('#tables').html(d);
                },
                "json"
        );
    }
</script>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>