<?php defined('IN_IA') or exit('Access Denied');?><script type="text/html" id="distance-form-html">
    <?php  include $this->template('web/_distance_item');?>
</script>
<style>
    .no-b {
        border-left-width:0px;
        border-right-width:0px;
    }
    .no-l-b {
        border-left-width:0px;
    }
    .no-r-b {
        border-right-width:0px;
    }
</style>
<div class="tab-pane" id="tab_out">
    <?php  if($config['is_fengniao']==1) { ?>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">蜂鸟配送</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_fengniao1" value="1" name="is_fengniao" <?php  if($reply['is_fengniao']==1) { ?>checked<?php  } ?>>
                <label for="is_fengniao1"> 开启 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_fengniao2" value="0" name="is_fengniao" <?php  if(empty($reply['is_fengniao'])) { ?>checked<?php  } ?>>
                <label for="is_fengniao2"> 关闭 </label>
            </div>
            <div class="help-block">
            </div>
        </div>
    </div>
    <?php  } ?>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">消费满多少元免配送费</label>
        <div class="col-sm-9">
            <input type="text" name="freeprice" class="form-control" value="<?php  echo $reply['freeprice'];?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">外卖起送价格</label>
        <div class="col-sm-9">
            <input type="text" name="sendingprice" class="form-control" value="<?php  echo $reply['sendingprice'];?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">外卖配送费用</label>
        <div class="col-sm-9">
            <input type="text" name="dispatchprice" class="form-control" value="<?php  echo $reply['dispatchprice'];?>" />
            <div class="help-block" style="color: #f00;">
                （注意：若开启按距离收外送费，此处的外送费将失效。）
            </div>
        </div>
    </div>
    <?php  if($setting['is_auto_address'] == 0 || empty($setting)) { ?>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否打开按距离收外送费</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_delivery_distance1" value="1" name="is_delivery_distance" <?php  if($reply['is_delivery_distance']==1) { ?>checked<?php  } ?>>
                <label for="is_delivery_distance1"> 开启 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_delivery_distance2" value="0" name="is_delivery_distance" <?php  if($reply['is_delivery_distance']==0) { ?>checked<?php  } ?>>
                <label for="is_delivery_distance2"> 关闭 </label>
            </div>
            <div class="help-block">
                请设置添加 <a href="#" id="add-distance"><i class="fa fa-plus-circle"></i> 添加按距离收外送费</a>
            </div>
        </div>
    </div>
    <div id="distance-list">
        <?php  if(!empty($distancelist)) { ?>
        <?php  if(is_array($distancelist)) { foreach($distancelist as $row) { ?>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
            <div class="col-sm-7">
                <div class="input-group">
                    <span class="input-group-addon">配送距离：</span>
                    <input type="text" class="form-control" value="<?php  echo $row['begindistance'];?>" name="begindistance[]">
                    <span class="input-group-addon no-b">公里至</span>
                    <input type="text" class="form-control" value="<?php  echo $row['enddistance'];?>" name="enddistance[]">
                    <span class="input-group-addon no-b">公里,配送费</span>
                    <input type="text" class="form-control" value="<?php  echo $row['dispatchprice'];?>" name="dispatchprice[]">
                    <!--<span class="input-group-addon no-b">元,起送费</span>-->
                    <!--<input type="text" class="form-control" value="" name="sendingprice[]">-->
                    <span class="input-group-addon no-l-b">元</span>
                    <!--freeprice-->
                </div>
            </div>
            <div class="col-sm-1">
                <a class="btn btn-danger btn-sm" onclick="$(this).parents('.form-group').remove(); return false;" href="#">删除
                </a>
            </div>
        </div>

        <?php  $flag = false;?>
        <?php  } } ?>
        <?php  } ?>
    </div>
    <?php  } ?>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">允许提前几天点外卖</label>
        <div class="col-sm-9">
            <input type="text" name="delivery_within_days" class="form-control" value="<?php  echo $reply['delivery_within_days'];?>" />
            <div class="help-block">单位：天，如果只接受当天订单，请填写0</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">配送半径</label>
        <div class="col-sm-9">
            <input type="text" name="delivery_radius" class="form-control" value="<?php  echo $reply['delivery_radius'];?>" />
            <div class="help-block">单位：公里</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-9">
            <label for="not_in_delivery_radius" class="checkbox-inline">
                <input type="checkbox" name="not_in_delivery_radius" value="1" id="not_in_delivery_radius" <?php  if($reply['not_in_delivery_radius'] == 1) { ?>checked="true"<?php  } ?> /> 在配送半径之外是否允许下单
            </label>
            <div class="help-block">距离大于配送半径时是否允许下单，注意：手机定位精确性受天气、用户终端设备是否开启GPS以及硬件配置等影响很大，若此项设置为不允许下单，可能会导致部分用户无法成功下单</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">指定配送区域</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_dispatcharea1" value="1" name="is_dispatcharea" <?php  if($reply['is_dispatcharea']==1) { ?>checked<?php  } ?>>
                <label for="is_dispatcharea1"> 开启 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_dispatcharea2" value="0" name="is_dispatcharea" <?php  if(empty($reply['is_dispatcharea'])) { ?>checked<?php  } ?>>
                <label for="is_dispatcharea2"> 关闭 </label>
            </div>
            <div class="help-block">
            还没有配送区域，点我 <a href="<?php  echo $this->createWebUrl('dispatcharea', array('op' => 'post', 'storeid' => $storeid))?>"><i class="fa fa-plus-circle"></i> 添加配送区域</a>
            </div>
        </div>
    </div>



    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">当日商家配送</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="delivery_isnot_today2" value="0" name="delivery_isnot_today" <?php  if(empty($reply['delivery_isnot_today'])) { ?>checked<?php  } ?>>
                <label for="delivery_isnot_today2"> 允许 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="delivery_isnot_today1" value="1" name="delivery_isnot_today" <?php  if($reply['delivery_isnot_today']==1) { ?>checked<?php  } ?>>
                <label for="delivery_isnot_today1"> 不允许 </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">当前时间段</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_delivery_nowtime1" value="1" name="is_delivery_nowtime" <?php  if($reply['is_delivery_nowtime']==1) { ?>checked<?php  } ?>>
                <label for="is_delivery_nowtime1"> 允许 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_delivery_nowtime2" value="0" name="is_delivery_nowtime" <?php  if(empty($reply['is_delivery_nowtime'])) { ?>checked<?php  } ?>>
                <label for="is_delivery_nowtime2"> 不允许 </label>
            </div>
            <div class="help-block">设置不允许,开始时间大于当前时间的才会显示</div>
        </div>
    </div>
    <div id="time-list">
        <?php  $flag = true;?>
        <?php  if(!empty($timelist)) { ?>
        <?php  if(is_array($timelist)) { foreach($timelist as $row) { ?>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if($flag==true) { ?>配送时间<?php  } ?></label>
            <div class="col-sm-3">
                <div class="input-group clockpicker">
                    <input type="text" class="form-control" value="<?php  echo $row['begintime'];?>" name="begintimes[<?php  echo $row['id'];?>]">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time"></span>
                                        </span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="input-group clockpicker">
                    <input type="text" class="form-control" value="<?php  echo $row['endtime'];?>" name="endtimes[<?php  echo $row['id'];?>]">
                                        <span class="input-group-addon">
                                            <span class="glyphicon glyphicon-time"></span>
                                        </span>
                </div>
            </div>
            <div class="col-sm-2">
                <?php  if($flag==true) { ?><a href="javascript:;" id="add-time"><i class="fa fa-plus-sign-alt"></i> 添加时间</a><?php  } else { ?><a class="btn btn-default btn-sm" onclick="$(this).parents('.form-group').remove(); return false;" href="#"><i class="fa fa-times"></i></a><?php  } ?>
            </div>
        </div>
        <?php  $flag = false;?>
        <?php  } } ?>
        <?php  } else { ?>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">配送时间</label>
            <div class="col-sm-3">
                <div class="input-group clockpicker">
                    <input type="text" class="form-control" value="08:30" name="newbegintime[]">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
                </div>
            </div>
            <div class="col-sm-3">
                <div class="input-group clockpicker">
                    <input type="text" class="form-control" value="18:00" name="newendtime[]">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
                </div>
            </div>
            <div class="col-sm-2">
                <a href="javascript:;" id="add-time"><i class="fa fa-plus-sign-alt"></i> 添加时间</a>
            </div>
        </div>
        <?php  } ?>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-9">
            <div class="help-block">请尽量以半小时为单位,方便顾客选择</div>
        </div>
    </div>



</div>

<script type="text/javascript">
    $('#add-distance').click(function(){
        $('#distance-list').append($('#distance-form-html').html());

    });
</script>