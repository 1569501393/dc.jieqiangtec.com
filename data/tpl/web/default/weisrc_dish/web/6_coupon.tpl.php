<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<?php  if($operation == 'display') { ?>
<ul class="nav nav-tabs">
    <li <?php  if($operation == 'display' || empty($operation)) { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('coupon', array('op' => 'display', 'storeid' => $storeid))?>">优惠管理</a></li>
    <li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('coupon', array('op' => 'post', 'storeid' => $storeid))?>">添加优惠</a></li>
    <!--<li><a href="<?php  echo $this->createWebUrl('recharge', array('op' => 'display', 'storeid' => $storeid))?>">充值返现管理-->
    <!--</a></li>-->
    <!--<li><a href="<?php  echo $this->createWebUrl('recharge', array('op' => 'post', 'storeid' => $storeid))?>">添加充值返现</a></li>-->
</ul>
<!--<div class="panel panel-default">-->
    <!--<div class="panel-body text-danger">-->
    <!-- -->
    <!--</div>-->
<!--</div>-->
<div class="alert alert-info">
    <i class="fa fa-info-circle"></i>提示：<br/>
    1.代金券适用于当用户下单满足指定条件时，商家给予订单指定额度的减免优惠。例如订单总额满100元，优惠5元。<br/>
    2.商品赠送适用于当用户下单满足指定条件时，商家给予订单指定的商品赠送。例如订单总额满100元，赠送xx商品。
</div>
<div class="main">
    <form action="" method="post" class="form-horizontal form">
        <div style="margin: 10px 0;" class="clearfix">
            <div class="btn-group pull-left" style="margin-right: 10px;">
                <a class="btn btn-default <?php  if(empty($_GPC['attrtype'])) { ?>active<?php  } ?>" href="<?php  echo $this->createWebUrl('coupon', array('op' => 'display', 'storeid' => $storeid))?>">全部</a>

                <a class="btn btn-default <?php  if($_GPC['attrtype']==1) { ?>active<?php  } ?>" href="<?php  echo $this->createWebUrl('coupon', array('op' => 'display', 'attrtype' => 1, 'storeid' => $storeid))?>">消费券(<?php  echo $type_count1;?>)</a>
                <a class="btn btn-default <?php  if($_GPC['attrtype']==2) { ?>active<?php  } ?>" href="<?php  echo $this->createWebUrl('coupon', array('op' => 'display', 'attrtype' => 2, 'storeid' => $storeid))?>">营销券(<?php  echo $type_count2;?>)</a>
            </div>
        </div>
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:10%;">显示顺序</th>
                        <th style="width:28%;">名称</th>
                        <th style="width:10%;">类型</th>
                        <th style="width:10%;">属性</th>
                        <th style="width:8%;">状态</th>
                        <th style="width:25%;">时间</th>
                        <th style="width:19%;"></th>
                    </tr>
                    </thead>
                    <tbody id="level-list">
                    <?php  if(is_array($coupons)) { foreach($coupons as $coupon) { ?>
                    <tr>
                        <td><input type="text" class="form-control" name="displayorder[<?php  echo $coupon['id'];?>]"
                                   value="<?php  echo $coupon['displayorder'];?>"></td>
                        <td><?php  echo $coupon['title'];?></td>
                        <td>
                            <span class="label label-success"><?php  echo $coupon_type[$coupon['type']];?></span>
                        </td>
                        <td>
                            <span class="label label-success"><?php  echo $coupon_attr_type[$coupon['attr_type']];?></span>
                        </td>
                        <td>
                            <?php  if(TIMESTAMP<$coupon['starttime']) { ?>
                            <span class="label label-danger">未开始</span>
                            <?php  } else if(TIMESTAMP>$coupon['starttime'] && TIMESTAMP<$coupon['endtime']) { ?>
                            <span class="label label-success">进行中</span>
                            <?php  } else { ?>
                            <span class="label label-danger">已结束</span>
                            <?php  } ?>
                        </td>
                        <td>
                            开始时间：<?php  echo date('Y-m-d H:i:s', $coupon['starttime']);?><br/>
                            结束时间：<?php  echo date('Y-m-d H:i:s', $coupon['endtime']);?>
                        </td>
                        <td>
                            <?php  if($coupon['type']==1 || $coupon['type']==2) { ?>
                            <a class="btn btn-default btn-sm"
                               href="<?php  echo $this->createWebUrl('sncodelist', array('op' => 'display', 'couponid' => $coupon['id'], 'storeid' => $storeid))?>"><i class="fa fa-bar-chart"> 领取记录</i></a>
                            <?php  } ?>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('coupon', array('op' => 'post', 'id' => $coupon['id'], 'storeid' => $storeid))?>">改</a>
                            <a class="btn btn-default btn-sm" onclick="return confirm('确认删除吗？');return false;"
                               href="<?php  echo $this->createWebUrl('coupon', array('op' => 'delete', 'id' => $coupon['id'], 'storeid' => $storeid))?>">删</i></a>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="7">
                            访问链接:<?php echo $_W['siteroot'] . 'app/index.php?i=' . $coupon['weid'] . '&c=entry&id=' . $coupon['id'] . '&do=coupon&m=weisrc_dish'?>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                    <tfoot>
                    <tr>
                        <td colspan="7">
                            <input name="submit" type="submit" class="btn btn-primary" value="批量排序">
                            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
                        </td>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </form>
    <?php  echo $pager;?>
</div>
<?php  } else if($operation == 'post') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('coupon', array('op' => 'display', 'storeid' => $storeid))?>">返回优惠管理
            </a>
        </div>
    </div>
    <?php  if(!empty($reply['id'])) { ?>
    <div class="panel panel-default account">
        <div class="panel-body">
            <p style="margin: 0px"><strong>活动链接 :</strong> <a href="javascript:;" title="点击复制Token"><?php echo $_W['siteroot'] . 'app/index.php?i=' . $reply['weid'] . '&c=entry&id=' . $reply['id'] . '&do=coupon&m=weisrc_dish'?></a></p>
        </div>
    </div>
    <script>
        require(['jquery', 'util'], function($, u){
            $('.account p a').each(function(){
                u.clip(this, $(this).text());
            });
        });
    </script>
    <?php  } ?>
    <form action="" method="post" onsubmit="return check();" class="form-horizontal form" enctype="multipart/form-data">
        <input type="hidden" id="id" name="id" value="<?php  echo $reply['id'];?>"/>
        <div class="panel panel-default">
            <div class="panel-heading">
                <?php  echo $title;?>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="title" value="<?php  echo $reply['title'];?>" id="title" class="form-control" placeholder="请输入优惠券名称"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">适用范围</label>
                    <div class="col-sm-9">
                        <!--<div class="checkbox checkbox-success checkbox-inline">-->
                            <!--<input type="checkbox" name="is_reservation" id="inlineCheckbox1"  value="1" <?php  if($reply['is_reservation']==1 || empty($reply)) { ?>checked<?php  } ?>>-->
                            <!--<label for="inlineCheckbox1" style="padding-left: 0px;">预定</label>-->
                        <!--</div>-->
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_meal" id="inlineCheckbox2"  value="1" <?php  if($reply['is_meal']==1 || empty($reply)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox2" style="padding-left: 0px;">店内</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_delivery" id="inlineCheckbox3"  value="1" <?php  if($reply['is_delivery']==1 || empty($reply)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox3" style="padding-left: 0px;">外卖</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" name="is_snack" id="inlineCheckbox4"  value="1" <?php  if($reply['is_snack']==1 || empty($reply)) { ?>checked<?php  } ?>>
                            <label for="inlineCheckbox4" style="padding-left: 0px;">快餐</label>
                        </div>
                    </div>
                </div>
                <!--<div class="form-group">-->
                    <!--<label class="col-xs-12 col-sm-3 col-md-2 control-label">属性</label>-->
                    <!--<div class="col-sm-9">-->
                        <!--<label class="radio-inline">-->
                            <!--<input type="radio" name="attr_type" value="1" <?php  if(empty($reply)) { ?>checked="checked"<?php  } else if($reply['attr_type']==1) { ?>checked="checked"<?php  } ?> />消费券-->
                        <!--</label>-->
                        <!--<label class="radio-inline">-->
                            <!--<input type="radio" name="attr_type" value="2" <?php  if($reply['attr_type']==2) { ?>checked="checked"<?php  } ?> />营销券-->
                        <!--</label>-->
                        <!--<div class="help-block"><code>选择营销券可以用于积分兑换</code></div>-->
                    <!--</div>-->
                <!--</div>-->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">期限</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_daterange('datelimit', array('starttime'=>$starttime,'endtime' =>$endtime), true)?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">类型</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="type" value="1" <?php  if(empty($reply)) { ?>checked="checked"<?php  } else if($reply['type']==1) { ?>checked="checked"<?php  } ?> />商品赠送
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="type" value="2" <?php  if($reply['type']==2) { ?>checked="checked"<?php  } ?> />代金券
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="type" value="3" <?php  if($reply['type']==3) { ?>checked="checked"<?php  } ?>/>新顾客满减
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="type" value="4" <?php  if($reply['type']==4) { ?>checked="checked"<?php  } ?>/>老顾客满减
                        </label>
                    </div>
                </div>
                <!--<div class="form-group">-->
                    <!--<label class="col-xs-12 col-sm-3 col-md-2 control-label">使用规则</label>-->
                    <!--<div class="col-sm-9">-->
                        <!--<label class="radio-inline">-->
                            <!--<input type="radio" name="ruletype" value="1" <?php  if(empty($reply)) { ?>checked="checked"{elseif-->
                                   <!--$reply['ruletype']==1}checked="checked"<?php  } ?> />不限-->
                        <!--</label>-->
                        <!--<label class="radio-inline">-->
                            <!--<input type="radio" name="ruletype" value="2" <?php  if($reply['ruletype']==2) { ?>checked="checked"<?php  } ?> />首单-->
                        <!--</label>-->
                    <!--</div>-->
                <!--</div>-->
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">消费金额满</label>
                    <div class="col-sm-9">
                        <input type="text" name="gmoney" value="<?php  if(empty($reply['gmoney'])) { ?>0.00<?php  } else { ?><?php  echo $reply['gmoney'];?><?php  } ?>" id="gmoney" class="form-control" />
                        <span class="help-block"><code>消费时使用条件,0表示没限制</code></span>
                    </div>
                </div>
                <div class="form-group type2" style="<?php  if(empty($reply) || $reply['type']!=2) { ?>display: none;<?php  } ?>">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label dmoneytip">抵用金额</label>
                    <div class="col-sm-9">
                        <input type="text" name="dmoney" value="<?php  if(empty($reply['dmoney'])) { ?>0.00<?php  } else { ?><?php  echo $reply['dmoney'];?><?php  } ?>" id="dmoney" class="form-control" />
                        <span class="help-block"><code>比如下单减10元，则填写：10。</code></span>

                    </div>
                </div>
                <div class="form-group attr_type2" style="<?php  if($reply['attr_type']==2) { ?>display: none;<?php  } ?>">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">参与名额数量</label>
                    <div class="col-sm-9">
                        <input type="text" name="totalcount" value="<?php  if(empty($reply['totalcount'])) { ?>0<?php  } else { ?><?php  echo $reply['totalcount'];?><?php  } ?>" id="totalcount" class="form-control" />
                        <div class="help-block"><code>不填写则没有名额数量限制</code></div>
                    </div>
                </div>
                <div class="form-group attr_type2" style="<?php  if($reply['attr_type']==2) { ?>display: none;<?php  } ?>">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">用户可领取数量</label>
                    <div class="col-sm-9">
                        <input type="text" name="usercount" value="<?php  if(empty($reply['usercount'])) { ?>0<?php  } else { ?><?php  echo $reply['usercount'];?><?php  } ?>" id="usercount" class="form-control" />
                        <div class="help-block"><code>不填写则没有数量限制</code></div>
                    </div>
                </div>
                <div class="form-group type3">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">优惠券图片</label>
                    <div class="col-sm-9">
                        <?php  if(empty($thumb)) { ?>
                            <?php  echo tpl_form_field_image('thumb','../addons/weisrc_dish/template/images/coupon.jpg')?>
                        <?php  } else { ?>
                            <?php  echo tpl_form_field_image('thumb', $reply['thumb'])?>
                        <?php  } ?>
                        <div class="help-block">大图片建议尺寸：720像素 * 400像素</div>
                    </div>
                </div>
                <div class="form-group type3">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">使用说明</label>
                    <div class="col-sm-9">
                        <textarea style="height:200px;" class="richtext form-control" name="content" id="content"><?php  echo $reply['content'];?></textarea>
                        <div class="help-block">在此说明券的使用方式，如最低消费金额，优惠券打折信息，不与其他优惠同时使用、节假日不可使用等。</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9">
                        <input type="text" name="displayorder" value="<?php  if(empty($reply)) { ?>0<?php  } else { ?><?php  echo $reply['displayorder'];?><?php  } ?>" id="displayorder" class="form-control" />
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-12">
                <input name="submit" type="submit" value="保存设置" class="btn btn-primary col-lg-3" />
                <input type="hidden" name="token" value="<?php  echo $_W['token'];?>"/>
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
    $(function () {
        var property = ""
//        $(":radio[name='attr_type']").click(function () {
//            var $this = $(this);
//            if(2 == $(this).val()){
//                $(".attr_type2").hide();
//            } else {
//                $(".attr_type2").show();
//            }
//        });

        $(":radio[name='type']").click(function () {
            var $this = $(this);
            var type = $(this).val();

            $(".dmoneytip").html('抵用金额');
            if(1 == type){//商品赠送
                $(".type3").show();
                $(".type2").hide();
                $(".type").show();
                $(".attr_type2").show();
            }
            if(2 == type){ //代金券
                $(".type3").show();
                $(".type2").show();
                $(".type").hide();
                $(".attr_type2").show();
            }
            if(3 == type){ //新用户
                $(".type3").hide();
                $(".type2").show();
                $(".type").hide();
                $(".attr_type2").hide();
                $(".dmoneytip").html('立减');
            }
            if(4 == type){ //满减
                $(".type3").hide();
                $(".type2").show();
                $(".type").hide();
                $(".attr_type2").hide();
                $(".dmoneytip").html('立减');
            }

        });
    });

    function check() {
        if($.trim($('#title').val()) == '') {
            message('没有输入标题.', '', 'error');
            return false;
        }
        if($.trim($('#title').val()).length > 30) {
            message('标题不能多于30个字.', '', 'error');
            return false;
        }
        var count = $.trim($('#count').val());
        if(count == '') {
            message('没有输入优惠券张数.', '', 'error');
            return false;
        }
        if(isNaN(count)){
            message('优惠券张数必须为数字.', '', 'error');
            return false;
        }
        return true;
    }
</script>
<script type="text/javascript">
    require(['jquery', 'util'], function ($, u) {
        $(function () {
            u.editor($('.richtext')[0]);
        });
    });

    $(document).ready(function () {
        var type = $(":radio[name='type']:checked").val();

        if(1 == type){//商品赠送
            $(".type3").show();
            $(".type2").hide();
            $(".type").show();
            $(".attr_type2").show();
        }
        if(2 == type){ //代金券
            $(".type3").show();
            $(".type2").show();
            $(".type").hide();
            $(".attr_type2").show();
        }
        if(3 == type){ //新用户
            $(".type3").hide();
            $(".type2").show();
            $(".type").hide();
            $(".attr_type2").hide();
        }
        if(4 == type){ //满减
            $(".type3").hide();
            $(".type2").show();
            $(".type").hide();
            $(".attr_type2").hide();
        }


    });
</script>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
