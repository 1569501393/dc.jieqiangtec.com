<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<?php  if($operation == 'display') { ?>
<ul class="nav nav-tabs">
    <!--<li><a href="<?php  echo $this->createWebUrl('coupon', array('op' => 'display', 'storeid' => $storeid))?>">优惠管理</a></li>-->
    <!--<li><a href="<?php  echo $this->createWebUrl('coupon', array('op' => 'post', 'storeid' => $storeid))?>">添加优惠</a></li>-->
    <li <?php  if($operation == 'display' || empty($operation)) { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('recharge', array('op' => 'display', 'storeid' => $storeid))?>">充值返现管理</a></li>
    <li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('recharge', array('op' => 'post', 'storeid' => $storeid))?>">添加充值返现</a></li>
</ul>

<div class="main">
    <div class="alert alert-warning">
        注：如商户设置2个充值赠送，1:充值100送10元，2:充值200送20，当用户充值200甚至更多时，只会送20元，不会重复赠送，同类营销活动依此类推。
        <br/>
    </div>
    <div class="alert alert-info">
        <i class="fa fa-info-circle"></i> 充值返现链接:<?php echo $_W['siteroot'] . 'app/index.php?i=' . $weid.'&c=entry&do=recharge&m=weisrc_dish'?>
    </div>
    <form action="" method="post" class="form-horizontal form">
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:10%;">显示顺序</th>
                        <th style="width:28%;">名称</th>
                        <th style="width:10%;">分期</th>
                        <th style="width:8%;">状态</th>
                        <th style="width:25%;">时间</th>
                        <th style="width:19%;"></th>
                    </tr>
                    </thead>
                    <tbody id="level-list">
                    <?php  if(is_array($recharges)) { foreach($recharges as $recharge) { ?>
                    <tr>
                        <td><input type="text" class="form-control" name="displayorder[<?php  echo $recharge['id'];?>]"
                                   value="<?php  echo $recharge['displayorder'];?>"></td>
                        <td><?php  echo $recharge['title'];?></td>
                        <td>
                            <?php  if($recharge['total']==0) { ?><span class="label label-danger">未分期</span><?php  } else { ?><span class="label label-success"><?php  echo $recharge['total'];?>期</span><?php  } ?>
                        </td>
                        <td>
                            <?php  if(TIMESTAMP<$recharge['starttime']) { ?>
                            <span class="label label-danger">未开始</span>
                            <?php  } else if(TIMESTAMP>$recharge['starttime'] && TIMESTAMP<$recharge['endtime']) { ?>
                            <span class="label label-success">进行中</span>
                            <?php  } else { ?>
                            <span class="label label-danger">已结束</span>
                            <?php  } ?>
                        </td>
                        <td>
                            开始时间：<?php  echo date('Y-m-d H:i:s', $recharge['starttime']);?><br/>
                            结束时间：<?php  echo date('Y-m-d H:i:s', $recharge['endtime']);?>
                        </td>
                        <td>
                            <a class="btn btn-default btn-sm"
                               href="<?php  echo $this->createWebUrl('recharge', array('op' => 'record', 'rechargeid' => $recharge['id'], 'storeid' => $storeid))?>"><i class="fa fa-bar-chart"> 领取记录</i></a>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('recharge', array('op' => 'post', 'id' => $recharge['id'], 'storeid' => $storeid))?>">改</a>
                            <a class="btn btn-default btn-sm" onclick="return confirm('确认删除吗？');return false;"
                               href="<?php  echo $this->createWebUrl('recharge', array('op' => 'delete', 'id' => $recharge['id'], 'storeid' => $storeid))?>">删</i></a>
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
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('recharge', array('op' => 'display'))?>">返回充值返现管理
            </a>
        </div>
    </div>
    <?php  if(!empty($reply['id'])) { ?>
    <div class="panel panel-default account">
        <div class="panel-body">
            <p style="margin: 0px"><strong>活动链接 :</strong>
                <a href="javascript:;" title="点击复制Token"><?php echo $_W['siteroot'] . 'app/index.php?i=' . $reply['weid'] . '&c=entry&do=recharge&m=weisrc_dish'?></a></p>
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
                充值返现管理
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="title" value="<?php  echo $reply['title'];?>" id="title" class="form-control" placeholder="请输入活动名称"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">期限</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_daterange('datelimit', array('starttime'=>$starttime,'endtime' =>$endtime), true)?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">活动策略</label>
                    <div class="col-sm-9">
                        <div class="input-group">
                            <span class="input-group-addon" style="border-right:0px;">充值送现金 满</span>
                            <input type="text" class="form-control" name="recharge_value" id="recharge_value" value="<?php  if(empty($reply)) { ?>0<?php  } else { ?><?php  echo $reply['recharge_value'];?><?php  } ?>">
                            <span class="input-group-addon" style="border-left:0px;border-right:0px;">元,送</span>
                            <input type="text" name="give_value" id="give_value" value="<?php  if(empty($reply)) { ?>0<?php  } else { ?><?php  echo $reply['give_value'];?><?php  } ?>" class="form-control" >
                            <span class="input-group-addon" style="border-left:0px;">元,分</span>
                            <input type="text" name="total" id="total" value="<?php  if(empty($reply)) { ?>0<?php  } else { ?><?php  echo $reply['total'];?><?php  } ?>" class="form-control" >
                            <span class="input-group-addon" style="border-left:0px;">期</span>
                        </div>
                    </div>
                </div>
                <div class="form-group">
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
</script>
<?php  } else if($operation == 'record') { ?>
<div class="panel panel-default">
    <div class="panel-body">
        <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('recharge', array('op' => 'display', 'storeid' => $storeid))?>">返回充值返现管理
        </a>
    </div>
</div>
<div class="main">
    <form action="" method="post" class="form-horizontal form">
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:10%;">订单编号</th>
                        <th style="width:15%;">用户资料</th>
                        <th style="width:15%;">返还金额</th>
                        <th style="width:20%;">充值日期</th>
                        <th style="width:20%;">返还日期</th>
                        <th style="width:20%;">状态</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($recharges)) { foreach($recharges as $row) { ?>
                    <tr>
                        <td><?php  echo $row['orderid'];?></td>
                        <td>
                            <img src="<?php  echo tomedia($row['headimgurl']);?>" style="width:30px;height:30px;padding1px;border:1px solid #ccc"/>
                            </br>昵称:<?php  echo $row['nickname'];?>
                        </td>
                        <td>
                            <?php  echo $row['price'];?>
                        </td>
                        <td>
                            <?php  echo date('Y-m-d H:i:s', $row['dateline']);?><br/>
                        </td>
                        <td>
                            <?php  echo date('Y-m-d H:i:s', $row['givetime']);?>
                        </td>
                        <td>
                            <?php  if($row['status']==1) { ?>
                            <span class="label label-success">已返还</span>
                            <?php  } else { ?>
                            <span class="label label-danger">未返还</span>
                            <?php  } ?>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
    <?php  echo $pager;?>
</div>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
