<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<style>
     .item_box img{
         width: 100%;
         height: 100%;
     }
</style>
<script type="text/javascript">
    $(function(){
        $(':radio[name="print_status"]').click(function(){
            if(this.checked) {
                if($(this).val() == '1') {
                    $('.sms').show();
                } else {
                    $('.sms').hide();
                }
            }
        });
    });
</script>
<?php  if($operation == 'display') { ?>
<div class="main">
    <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
    <div class="alert alert-info">
        <i class="fa fa-info-circle"></i>提示：请将打印机放置在干燥通风手机信号强的地方，请勿将打印机放置在厨房等油烟潮湿的环境，避免导致设备老化严重，故障频繁，缩短设备使用寿命。
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-success" href="<?php  echo $this->createWebUrl('PrintSetting', array('op' => 'post', 'storeid' => $storeid))?>"><i class="fa fa-plus"></i>添加打印机</a>
            <a class="btn btn-info" href="<?php  echo $this->createWebUrl('printlabel', array('op' => 'display', 'storeid' => $storeid))?>"><i class="fa fa-list"></i>打印标签</a>
            <a class="btn btn-default" href="<?php  echo $this->createWebUrl('printorder', array('op' => 'display', 'storeid' => $storeid))?>"><i class="fa fa-list"></i>打印数据</a>

        </div>
    </div>
    <form action="" method="post" class="form-horizontal form">
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:13%;">(ID)打印机名称</th>
                        <th style="width:12%;">类型</th>
                        <th style="width:10%;">位置</th>
                        <th style="width:15%;">设备编码</th>
                        <th style="width:10%;">打印方式</th>
                        <th style="width:10%;">打印记录</th>
                        <th style="width:10%;">是否整单打印</th>
                        <th style="width:10%;">状态</th>
                        <th style="width:10%; text-align:right;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td>(<?php  echo $item['id'];?>)<?php  echo $item['title'];?></td>
                        <td>
                            <span class="label label-success">
                            <?php  if($item['type']=='feiyin') { ?>
                            飞印
                            <?php  } else if($item['type']=='hongxin') { ?>
                            宏信物联
                            <?php  } else if($item['type']=='feie') { ?>
                            飞鹅
                            <?php  } else if($item['type']=='365') { ?>
                            365
                            <?php  } else if($item['type']=='yilianyun') { ?>
                            易联云
                            <?php  } ?>
                            </span>
                        </td>
                        <td>
                            <?php  if($item['position_type']=='1') { ?>
                            <span class="label label-warning">前台</span>
                            <?php  } else { ?>
                            <span class="label label-success">厨房</span>
                            <?php  } ?>
                        </td>
                        <td><?php  echo $item['print_usr'];?></td>
                        <td>
                            <span class="label label-info">
                            <?php  if($item['print_type']==0) { ?>
                            下单打印
                            <?php  } else if($item['print_type']==1) { ?>
                            付款订单
                            <?php  } else if($item['print_type']==2) { ?>
                            已确认订单
                            <?php  } ?>
                            </span>
                        </td>
                        <td>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('printorder', array('op' => 'display', 'usr' => $item['print_usr'], 'storeid' => $storeid))?>" title="查看订单"><i class="fa fa-bar-chart-o"> (<?php  if(!empty($print_order_count[$item['print_usr']]['count'])) { ?><font color="green"><?php  echo $print_order_count[$item['print_usr']]['count'];?></font><?php  } else { ?>0<?php  } ?>)</i></a>
                        </td>
                        <td>
                            <?php  if($item['is_print_all']==0) { ?>
                            <span class="label label-warning">分单打印</span>
                            <?php  } else if($item['is_print_all']==1) { ?>
                            <span class="label label-success">整单打印</span>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['print_status'] == 1) { ?>
                            <span class="label label-success">开启</span>
                            <?php  } else { ?>
                            <span class="label label-danger">关闭</span>
                            <?php  } ?>
                            <!--0为打印成功, 1为过热,3为缺纸卡纸等-->
                        </td>
                        <td style="text-align:right;">
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('printsetting', array('op' => 'post', 'id' => $item['id'], 'storeid' => $storeid))?>" title="查看订单">改</a>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('printsetting', array('op' => 'delete', 'id' => $item['id'], 'storeid' => $storeid))?>" title="删除" onclick="return confirm('此操作不可恢复，确认删除？');return false;">删</a>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
                <?php  echo $pager;?>
            </div>
        </div>
    </form>
    <!--<div class="panel panel-default">-->
        <!--<div class="panel-heading">打印机配置(宏信物联)</div>-->
        <!--<div class="panel-body">-->
            <!--<p>@@@12345 e 127.0.0.1 <font color=red>(网站ip)</font></p>-->
            <!--<p>@@@12345 z www.weixin.com <font color=red>(网址)</font></p>-->
            <!--<p>@@@12345 @ web/print.php? <font color=red>(入口文件)</font></p>-->
            <!--<p>@@@12345 % 10 <font color=red>(访问的时间间隔,建议8秒+)</font></p>-->
            <!--<p>@@@12345 s 1 <font color=red>(开启gprs上网功能)</font></p>-->
            <!--<p>以上是发送打印机的代码,单条发送</p>-->
            <!--<p>打印测试网址: web/print.php?usr=xxx  <font color=red>(xxx为打印机终端编号)</font></p>-->
            <!--<p>打印机长按左键1分钟恢复出厂设置</p>-->
            <!--<p>@@@12345 y 1 <font color=red>打印机配置信息</font></p>-->
        <!--</div>-->
    <!--</div>-->
</div>
<?php  } else if($operation == 'post') { ?>
<link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/public/web/css/awesome-bootstrap-checkbox.css">
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('printsetting', array('op' => 'display', 'storeid' => $storeid))?>">返回打印机管理
            </a>
        </div>
    </div>
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
	<input type="hidden" name="id" value="<?php  echo $setting['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                打印机设置
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印机状态</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="print_status" value="1" name="print_status" <?php  if($setting['print_status']==1) { ?>checked<?php  } ?>>
                            <label for="print_status"> 开启 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="print_status2" value="0" name="print_status" <?php  if($setting['print_status']==0 || empty($setting)) { ?>checked<?php  } ?>>
                            <label for="print_status2"> 关闭 </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印方式</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="print_type1" value="0" name="print_type" <?php  if($setting['print_type']==0) { ?>checked="true"<?php  } ?>>
                            <label for="print_type1"> 下单打印 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="print_type2" value="1" name="print_type" <?php  if($setting['print_type']==1) { ?>checked="true"<?php  } ?>>
                            <label for="print_type2"> 付款订单 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="print_type3" value="2" name="print_type" <?php  if($setting['print_type']==2) { ?>checked="true"<?php  } ?>>
                            <label for="print_type3"> 已确认订单 </label>
                        </div>
                        <span class="help-block">提示:选择下单打印用户得选择了某一种支付方式后才会打印.</span>
                    </div>
                </div>
                <div class="form-group" id="is_print_all">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印位置</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="position_type1" value="1" name="position_type"  <?php  if($setting['position_type']==1 || empty($setting)) { ?>checked<?php  } ?> >
                            <label for="position_type1"> 前台 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="position_type2" value="2" name="position_type" <?php  if($setting['position_type']==2) { ?>checked<?php  } ?>>
                            <label for="position_type2"> 后厨 </label>
                        </div>
                    </div>
                </div>
                <div class="form-group" id="is_print_all">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印类型</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="is_print_all2" value="1" name="is_print_all"  <?php  if($setting['is_print_all']==1 || empty($setting)) { ?>checked<?php  } ?> >
                            <label for="is_print_all2"> 整单 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="is_print_all1" value="0" name="is_print_all" <?php  if($setting['is_print_all']==0) { ?>checked<?php  } ?>>
                            <label for="is_print_all1"> 分单 </label>
                        </div>
                        <div class="help-block">
                            整单打印为： 打印订单的全部产品条目信息<br/>
                            分单打印为： 订单里的全部产品每个打印一次
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">支持模式</label>
                    <div class="col-sm-9">
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_reservation" id="inlineCheckbox1"  value="1" <?php  if($setting['is_reservation']==1 || empty($setting)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox1" style="padding-left: 0px;">支持预定</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_meal" id="inlineCheckbox2"  value="1" <?php  if($setting['is_meal']==1 || empty($setting)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox2" style="padding-left: 0px;">支持店内</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_delivery" id="inlineCheckbox3"  value="1" <?php  if($setting['is_delivery']==1 || empty($setting)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox3" style="padding-left: 0px;">支持外卖</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_snack" id="inlineCheckbox4"  value="1" <?php  if($setting['is_snack']==1 || empty($setting)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox4" style="padding-left: 0px;">支持快餐</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_shouyin" id="inlineCheckbox5"  value="1" <?php  if($setting['is_shouyin']==1 || empty($setting)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox5" style="padding-left: 0px;">支持收银</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印机名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="title" class="form-control" value="<?php  echo $setting['title'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印机类型</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="type" id="type" autocomplete="off">
                            <option value="365" <?php  if($setting['type']=='365') { ?>selected<?php  } ?>>365</option>
                            <option value="feiyin" <?php  if($setting['type']=='feiyin') { ?>selected<?php  } ?>>飞印</option>
                            <option value="feie" <?php  if($setting['type']=='feie') { ?>selected<?php  } ?>>飞鹅</option>
                            <option value="hongxin" <?php  if($setting['type']=='hongxin') { ?>selected<?php  } ?>>宏信物联</option>
                            <option value="yilianyun" <?php  if($setting['type']=='yilianyun') { ?>selected<?php  } ?>>易联云</option>
                        </select>
                    </div>
                </div>
                <div class="form-group" id="api_type">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">飞鹅API</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="api_type" autocomplete="off">
                            <option value="0" <?php  if($setting['api_type']=='0') { ?>selected<?php  } ?>>默认</option>
                            <option value="1" <?php  if($setting['api_type']=='1') { ?>selected<?php  } ?>>dzp.feieyun.com</option>
                            <option value="2" <?php  if($setting['api_type']=='2') { ?>selected<?php  } ?>>api163.feieyun.com</option>
                            <option value="3" <?php  if($setting['api_type']=='3') { ?>selected<?php  } ?>>api174.feieyun.com</option>
                            <option value="4" <?php  if($setting['api_type']=='4') { ?>selected<?php  } ?>>api.feieyun.cn</option>
                        </select>
                        <span class="help-block">如果不清楚打印机所属服务器，请发送机器编号给客服查询;</span>
                    </div>
                </div>

                <div class="form-group" id="yilian_type">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">易联云类型</label>
                    <div class="col-sm-9">
                        <select class="form-control" name="yilian_type" autocomplete="off">
                            <option value="1" <?php  if($setting['yilian_type']=='1') { ?>selected<?php  } ?>>(新版)K2S/K3S/K4</option>
                            <option value="2" <?php  if($setting['yilian_type']=='2') { ?>selected<?php  } ?>>(老版)K1、K2、K3</option>
                        </select>
                    </div>
                </div>
                <div class="form-group" id="print_code">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">商户编码</label>
                    <div class="col-sm-9">
                        <input type="text" name="member_code" class="form-control" value="<?php  echo $setting['member_code'];?>" placeholder="商户编码"/>
                    </div>
                </div>
                <div class="form-group" id="api_key">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">API密钥</label>
                    <div class="col-sm-9">
                        <input type="text" name="api_key" class="form-control" value="<?php  echo $setting['api_key'];?>" placeholder="API密钥"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印机设备编码</label>
                    <div class="col-sm-9">
                        <input type="text" name="print_usr" class="form-control" value="<?php  echo $setting['print_usr'];?>" placeholder="SN码|机器码|IMEI码"/>
                    </div>
                </div>
                <div class="form-group" id="print_key">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印机API密钥</label>
                    <div class="col-sm-9">
                        <input type="text" name="feyin_key" class="form-control" value="<?php  echo $setting['feyin_key'];?>" placeholder="API密钥"/>
                    </div>
                </div>
                <div class="form-group" id="print_label">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">设置可打印的标签</label>
                    <div class="col-sm-9">
                        <select class="form-control" style="margin-right:15px;" name="print_label[]" autocomplete="off" multiple="true" size="10">
                            <option value="0" <?php  if(count($print_label)==0) { ?>selected="selected"<?php  } ?>>全部标签</option>
                            <?php  if(is_array($lables)) { foreach($lables as $row) { ?>
<option value="<?php  echo $row['id'];?>" <?php  if(count($print_label)>0 && in_array($row['id'],$print_label)) { ?>
                            selected="selected"<?php  } ?>><?php  echo $row['title'];?></option>
                            <?php  } } ?>
                        </select>
                        <span class="help-block">当您设置了标签后，该打印机就只关心来自标签的订单。</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印联数</label>
                    <div class="col-sm-9">
                        <input type="text" name="print_nums" class="form-control"
                               value="<?php  if($setting['print_nums']) { ?><?php  echo $setting['print_nums'];?><?php  } else { ?>1<?php  } ?>" />
                        <p class="help-block">默认1</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">打印二维码</label>
                    <div class="col-sm-9">
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="qrcode_status1" value="1" name="qrcode_status" <?php  if($setting['qrcode_status']==1) { ?>checked="true"<?php  } ?>>
                            <label for="qrcode_status1"> 开启 </label>
                        </div>
                        <div class="radio radio-info radio-inline">
                            <input type="radio" id="qrcode_status2" value="0" name="qrcode_status" <?php  if($setting['qrcode_status']==0) { ?>checked="true"<?php  } ?>>
                            <label for="qrcode_status2"> 关闭 </label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">二维码网址</label>
                    <div class="col-sm-9">
                        <input type="text" name="qrcode_url" class="form-control" value="<?php  echo $setting['qrcode_url'];?>" />
                        <p class="help-block">网址过长的可先转为短网址</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">头部自定义信息</label>
                    <div class="col-sm-9">
                        <input type="text" name="print_top" class="form-control" value="<?php  echo $setting['print_top'];?>" />
                        <p class="help-block">建议少于20字</p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">底部自定义信息</label>
                    <div class="col-sm-9">
                        <input type="text" name="print_bottom" class="form-control" value="<?php  echo $setting['print_bottom'];?>" />
                        <p class="help-block">建议少于20字</p>
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
<script type="text/javascript">
    $(function(){
        "<?php  if($setting) { ?>"
            "<?php  if($setting['type']=='hongxin') { ?>"
                $('#print_code').hide();
                $('#api_key').hide();
                $('#yilian_type').hide();
                $('#api_type').hide();
                $('#print_key').hide();
                $('#print_label').hide();
                $('#is_print_all').hide();
            "<?php  } ?>"
            "<?php  if($setting['type']=='365') { ?>"
                $('#print_code').hide();
                $('#api_key').hide();
                $('#yilian_type').hide();
                $('#api_type').hide();
            "<?php  } ?>"
            "<?php  if($setting['type']=='feie') { ?>"
                $('#print_code').hide();
                $('#api_key').hide();
                $('#yilian_type').hide();
            "<?php  } ?>"
            "<?php  if($setting['type']=='feiyin') { ?>"
                $('#api_key').hide();
                $('#yilian_type').hide();
                $('#api_type').hide();
            "<?php  } ?>"
        "<?php  } else { ?>"
            $('#api_key').hide();
            $('#yilian_type').hide();
            $('#print_code').hide();
            $('#api_type').hide();
        "<?php  } ?>"
        $('#type').change(function(){
            $('#print_code').show();
            $('#print_key').show();
            $('#api_key').show();
            $('#yilian_type').show();
            $('#api_type').show();
            if($(this).val() == 'hongxin') {
                $('#print_code').hide();
                $('#print_key').hide();
                $('#print_label').hide();
                $('#is_print_all').hide();
                $('#api_key').hide();
                $('#yilian_type').hide();
                $('#api_type').hide();
            }
            if($(this).val() == '365') {
                $('#print_code').hide();
                $('#api_key').hide();
                $('#yilian_type').hide();
                $('#api_type').hide();
            }
            if ($(this).val() == 'feie') {
                $('#print_code').hide();
                $('#api_key').hide();
                $('#yilian_type').hide();
            }
            if($(this).val() == 'feiyin') {
                $('#api_key').hide();
                $('#yilian_type').hide();
                $('#api_type').hide();
            }
            if($(this).val() == 'yilianyun') {
                $('#api_type').hide();
            }
        });
    });
</script>


<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>