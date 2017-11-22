<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>

<?php  if(!empty($storeid)) { ?>
<?php  echo $this -> set_tabbar($action, $storeid);?>
<?php  } else { ?>
<ul class="nav nav-tabs">
    <li<?php  if($operation=='display') { ?> class="active"<?php  } ?>><a
        href="<?php  echo $this->createWebUrl('allfans', array('op' => 'display'))?>">会员管理</a></li>
    <li<?php  if($operation=='record') { ?> class="active"<?php  } ?>><a
        href="<?php  echo $this->createWebUrl('allfans', array('op' => 'record'))?>">会员交易统计</a></li>
    <li><a href="<?php  echo $this->createWebUrl('commission', array('op' => 'display'))?>">推广佣金管理</a></li>
    <?php  if($_W['role'] == 'manager' || $_W['isfounder']) { ?>
    <li><a href="<?php  echo $this->createWebUrl('cashlog', array('op' => 'display', 'logtype' => 1))?>">佣金提现管理</a></li>
    <?php  } ?>
</ul>
<?php  } ?>
<?php  if($operation == 'display') { ?>
<div class="main">
    <div class="panel panel-default" style="margin-top: 15px;">
        <div class="panel-heading">筛选</div>
        <div class="table-responsive panel-body">
            <form action="./index.php" method="get" class="navbar-form navbar-left" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="allfans" />
                <input type="hidden" name="op" value="display" />
                <div class="form-group">
                    <select class="form-control" id="status" name="status" autocomplete="off">
                        <option value="">全部</option>
                        <option value="1">正常下单</option>
                        <option value="0">禁止下单</option>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control" id="types" name="types" autocomplete="off">
                        <option value="nickname">昵称</option>
                        <option value="username">用户名称</option>
                        <option value="mobile">手机号码</option>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="请输入" name="keyword">
                </div>
                <button class="btn btn-success"><i class="fa fa-search"></i> 搜索</button>
            </form>
        </div>
    </div>
    <style>
        /*width:50px;height:50px;border-radius:50%;*/
    </style>
    <form action="" method="post" class="form-horizontal form" >
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:10%;">推荐人</th>
                        <th style="width:10%;">昵称</th>
                        <th style="width:10%;">名称/手机</th>
                        <th style="width:12%;">推广佣金/配送佣金</th>
                        <th style="width:10%;">下单数量</th>
                        <th style="width:10%;">消费金额</th>
                        <th style="width:20%;">余额/积分</th>

                        <th style="width:8%;">状态</th>
                        <th style="width:10%;"></th>
                    </tr>
                    </thead>
                    <tbody id="level-list">
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td>
                            <?php  if($item['agentid']<>0) { ?>
                            <img src="<?php  echo tomedia($item['agentheadimgurl']);?>" style="width:30px;height:30px;padding1px;border:1px solid #ccc"/>
                            </br><?php  echo $item['agentnickname'];?></td>
                        <?php  } else { ?>
                        <span class="label label-primary">平台</span>
                        <?php  } ?>
                        </td>
                        <td style="white-space:normal;">
                            <img src="<?php  echo tomedia($item['headimgurl']);?>" style="width:30px;height:30px;padding1px;border:1px solid #ccc"/>
                            </br><?php  echo $item['nickname'];?>
                            <?php  if($item['is_commission']==2) { ?>
                            </br>
                            <?php  if($item['agentid']>0) { ?>
                            <span class="label label-danger">代理商</span>
                            <?php  } else { ?>
                            <span class="label label-danger">股东</span>
                            <?php  } ?>
                            <?php  } ?>
                            </br><?php  if($item['iscard']==0) { ?>
                            <span class="label label-primary">非会员</span>
                            <?php  } else { ?><span class="label label-success">会员</span><?php  } ?>
                        </td>
                        <td>
                            <?php  if(empty($item['username'])) { ?>-------<?php  } else { ?><?php  echo $item['username'];?><?php  } ?><br>
                            <?php  if(empty($item['mobile'])) { ?>-------<?php  } else { ?><?php  echo $item['mobile'];?><?php  } ?>
                        </td>
                        <td>
                            <span class="label label-info">推广佣金:<?php  if(empty($item['commission_price'])) { ?>0.00<?php  } else { ?><?php  echo $item['commission_price'];?><?php  } ?></span><br>
                            <span class="label label-default">配送佣金:<?php  if(empty($item['delivery_price'])) { ?>0<?php  } else { ?><?php  echo $item['delivery_price'];?><?php  } ?></span>
                        </td>
                        <td>
                            <?php  if(!empty($order_count[$item['from_user']]['count'])) { ?><?php  echo $order_count[$item['from_user']]['count'];?><?php  } else { ?>0<?php  } ?>
                        </td>
                        <td>
                            <?php  if(!empty($pay_price[$item['from_user']]['totalprice'])) { ?>
                            <?php  echo sprintf('%.2f', $pay_price[$item['from_user']]['totalprice']);?>
                            <?php  } else { ?>0<?php  } ?>
                        </td>
                        <td>
                            <span class="label label-info">余额:<?php  if(empty($item['credit2'])) { ?>0.00<?php  } else { ?><?php  echo $item['credit2'];?><?php  } ?></span><br>
                            <span class="label label-default">积分:<?php  if(empty($item['credit1'])) { ?>0<?php  } else { ?><?php  echo $item['credit1'];?><?php  } ?></span>
                        </td>
                        <td>
                            <?php  if($item['status'] == 0) { ?>
                            <span class="label label-danger">禁止下单</span>
                            <?php  } else { ?>
                            <span class="label label-success">正常</span>
                            <?php  } ?>
                        </td>
                        <td>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('allfans', array('id' => $item['id'], 'op' => 'post'))?>"><i class="fa fa-search"></i>详情</a>
                            <?php  if($_W['isfounder'] || $_W['role'] == 'manager') { ?>
                            <?php  if($item['status'] == 1) { ?>
                            <a class="btn btn-default btn-sm" onclick="return confirm('您确定要禁止下单吗？');return false;" href="<?php  echo $this->createWebUrl('allfans', array('id' => $item['id'], 'status' => $item['status'], 'op' => 'setstatus'))?>"
                               title="冻结"><i class="fa fa-lock"></i>禁止</a>
                            <?php  } else { ?>
                            <a class="btn btn-default btn-sm" onclick="return confirm('您确定要解除禁止状态吗？');return false;" href="<?php  echo $this->createWebUrl('allfans', array('id' => $item['id'], 'status' => $item['status'], 'op' => 'setstatus'))?>"
                               title="解冻"><i class="fa fa-unlock"></i>解除</a>
                            <?php  } ?>
                            <?php  } ?>
                            <!--<a href="javascript:;" class="btn btn-success btn-sm" order-id="164"-->
                               <!--onclick="$('#order-remark-container').modal();">[发送]</a>-->
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
<div class="modal fade" id="order-remark-container" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                <h4 class="modal-title">信息通知</h4></div>
            <div class="modal-body">
                <textarea name="reply" class="form-control" rows="5" oninput="$(this).parent().next().find('.js-count').text(100 - $(this).val().length);;" onpropertychange="$(this).parent().next().find('.js-count').text(100 - $(this).val().length);;" maxlength="100" placeholder="最多填写 100 字"></textarea>
            </div>
            <div class="modal-footer" style="padding: 5px 15px;">
                <span class="help-block pull-left">					您还可以输入：<storng>
                    <span style="color:red; font-size:18px;" name="count" class="js-count">100</span></storng> 个字符</span>
                <a class="btn btn-default js-cancel" data-dismiss="modal">取消</a>
                <button type="submit" class="btn btn-primary" name="confriminfo" value="正常">发送</button>
                <!--<a class="btn btn-primary js-order-remark-post">确定</a>-->
            </div>
        </div>
    </div>
</div>
<?php  } else if($operation == 'record') { ?>
<div class="main">
    <div class="panel panel-default" style="margin-top: 15px;">
        <div class="panel-heading">筛选</div>
        <div class="table-responsive panel-body">
            <form action="./index.php" method="get" class="form-horizontal" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="allfans" />
                <input type="hidden" name="op" value="record" />
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">会员等级</label>
                    <div class="col-sm-2 col-lg-9">
                        <label class="radio-inline">
                            <input type="radio" name="groupid" value="0" <?php  if($groupid==0) { ?>checked="checked"<?php  } ?> />所有会员
                        </label>
                        <?php  if(is_array($groups)) { foreach($groups as $level) { ?>
                        <label class="radio-inline">
                            <input type="radio" name="groupid" value="<?php  echo $level['groupid'];?>" <?php  if($groupid==$level['groupid']) { ?>checked="checked"<?php  } ?>/><?php  echo $level['title'];?>
                        </label>
                        <?php  } } ?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">关注时间</label>
                    <div class="col-sm-2 col-lg-2">
                        <select class="form-control" id="addtime" name="addtime" autocomplete="off">
                            <option value="0"<?php  if($addtime==0) { ?> selected<?php  } ?>>不限</option>
                            <option value="1"<?php  if($addtime==1) { ?> selected<?php  } ?>>过去7天</option>
                            <option value="2"<?php  if($addtime==2) { ?> selected<?php  } ?>>过去30天</option>
                            <option value="3"<?php  if($addtime==3) { ?> selected<?php  } ?>>过去3个月</option>
                            <option value="4"<?php  if($addtime==4) { ?> selected<?php  } ?>>过去6个月</option>
                            <option value="5"<?php  if($addtime==5) { ?> selected<?php  } ?>>过去12个月</option>
                        </select>
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">性别</label>
                    <div class="col-sm-2 col-lg-2">
                        <select class="form-control" id="gender" name="gender" autocomplete="off">
                            <option value="0"<?php  if($gender==0) { ?> selected<?php  } ?>>不限</option>
                            <option value="1"<?php  if($gender==1) { ?> selected<?php  } ?>>男</option>
                            <option value="2"<?php  if($gender==2) { ?> selected<?php  } ?>>女</option>
                        </select>
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">年龄</label>
                    <div class="col-sm-2 col-lg-2">
                        <select class="form-control" id="age" name="age" autocomplete="off">
                            <option value="0"<?php  if($age==0) { ?> selected<?php  } ?>>不限</option>
                            <option value="1"<?php  if($age==1) { ?> selected<?php  } ?>>18岁以下</option>
                            <option value="2"<?php  if($age==2) { ?> selected<?php  } ?>>18-24</option>
                            <option value="3"<?php  if($age==3) { ?> selected<?php  } ?>>25-30</option>
                            <option value="4"<?php  if($age==4) { ?> selected<?php  } ?>>31-35</option>
                            <option value="5"<?php  if($age==5) { ?> selected<?php  } ?>>36-40</option>
                            <option value="6"<?php  if($age==6) { ?> selected<?php  } ?>>40岁以上</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">上次交易</label>
                    <div class="col-sm-2">
                        <select class="form-control" id="paytime" name="paytime" autocomplete="off">
                            <option value="0"<?php  if($paytime==0) { ?> selected<?php  } ?>>不限</option>
                            <option value="1"<?php  if($paytime==1) { ?> selected<?php  } ?>>1个月内</option>
                            <option value="2"<?php  if($paytime==2) { ?> selected<?php  } ?>>1-3个月内</option>
                            <option value="3"<?php  if($paytime==3) { ?> selected<?php  } ?>>3-6个月内</option>
                            <option value="4"<?php  if($paytime==4) { ?> selected<?php  } ?>>6-12个月内</option>
                        </select>
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">交易笔数</label>
                    <div class="col-sm-2" style="width:250px;">
                        <div class="input-group input-medium">
                            <input type="text" class="form-control" name="count_min"
                                   value="<?php  if($count_min!=0) { ?><?php  echo $count_min;?><?php  } ?>">
                            <span class="input-group-addon" style="border-left:0px;border-right:0px;">至</span>
                            <input type="text" class="form-control" name="count_max"
                                   value="<?php  if($count_max!=0) { ?><?php  echo $count_max;?><?php  } ?>">
                        </div>
                    </div>
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">交易金额</label>
                    <div class="col-sm-2" style="width:250px;">
                        <div class="input-group input-medium">
                            <input type="text" class="form-control" name="price_min"
                                   value="<?php  if($price_min!=0) { ?><?php  echo $price_min;?><?php  } ?>">
                            <span class="input-group-addon" style="border-left:0px;border-right:0px;">至</span>
                            <input type="text" class="form-control" name="price_max"
                                   value="<?php  if($price_max!=0) { ?><?php  echo $price_max;?><?php  } ?>">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;">所属门店</label>
                    <div class="col-sm-2 col-lg-2">
                        <select class="form-control" id="selstoreid" name="selstoreid" autocomplete="off">
                            <option value="0"<?php  if($selstoreid==0) { ?> selected<?php  } ?>>不限</option>
                            <?php  if(is_array($storelist)) { foreach($storelist as $item) { ?>
                            <option value="<?php  echo $item['id'];?>"<?php  if($selstoreid==$item['id']) { ?> selected<?php  } ?>><?php  echo $item['title'];?></option>
                            <?php  } } ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width:90px;"></label>
                    <div class="col-sm-2 col-lg-9">
                        <button class="btn btn-success"><i class="fa fa-search"></i> 搜索</button>
                        <button class="btn btn-info" name="out_put" value="output"><i class="fa fa-file"></i> 导出数据
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form" >
        <div class="panel panel-default">
            <div class="panel-heading">
                <div class="row-fluid">
                    <div class="span3 control-group">
                        总共 <strong><?php  echo $total;?></strong> 条
                    </div>
                </div>
            </div>
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:12%;">昵称</th>
                        <th style="width:12%;">姓名</th>
                        <th style="width:12%;">手机号码</th>
                        <th style="width:12%;">会员等级</th>
                        <th style="width:12%;">交易总额（元）</th>
                        <th style="width:12%;">交易笔数（笔）</th>
                        <th style="width:16%;">上次交易时间</th>
                        <th style="width:12%;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td style="white-space:normal;">
                            <img src="<?php  echo tomedia($item['headimgurl']);?>" style="width:30px;height:30px;padding1px;border:1px solid #ccc"/>
                            </br><?php  echo $item['nickname'];?>(<?php  echo $item['birthyear'];?>)
                        </td>
                        <td><?php  if(empty($item['username'])) { ?>-------<?php  } else { ?><?php  echo $item['username'];?><?php  } ?></td>
                        <td><?php  if(empty($item['mobile'])) { ?>-------<?php  } else { ?><?php  echo $item['mobile'];?><?php  } ?></td>
                        <td><?php  echo $groups[$item['groupid']]['title'];?></td>
                        <td>
                            <?php  echo $item['totalprice'];?>
                        </td>
                        <td><?php  echo $item['totalcount'];?></td>
                        <td>
                            <?php  if(!empty($item['paytime'])) { ?>
                            <?php  echo date('Y-m-d H:i:s', $item['paytime'])?>
                            <?php  } ?>
                        </td>
                        <td>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('allfans', array('id' => $item['id'], 'op' => 'post'))?>"><i class="fa fa-list"></i>详情</a>
                            <?php  if($item['status'] == 1) { ?>
                            <a class="btn btn-default btn-sm" onclick="return confirm('您确定要禁止下单吗？');return false;" href="<?php  echo $this->createWebUrl('allfans', array('id' => $item['id'], 'status' => $item['status'], 'op' => 'setstatus'))?>"
                               title="冻结"><i class="fa fa-lock"></i>禁止</a>
                            <?php  } else { ?>
                            <a class="btn btn-default btn-sm" onclick="return confirm('您确定要解除禁止状态吗？');return false;" href="<?php  echo $this->createWebUrl('allfans', array('id' => $item['id'], 'status' => $item['status'], 'op' => 'setstatus'))?>"
                               title="解冻"><i class="fa fa-unlock"></i>解除</a>
                            <?php  } ?>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
            </div>
            <div class="panel-footer">
                <a class="btn btn-warning" onclick="return confirm('此操作不可恢复，确认同步？');return false;" href="<?php  echo $this->createWebUrl('allfans', array('op' => 'synchrodata'))?>"><i class="fa fa-cog" ></i> 同步数据</a>
            </div>
        </div>
    </form>
    <?php  echo $pager;?>
</div>
<div class="modal fade" id="order-remark-container" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                        aria-hidden="true">×</span></button>
                <h4 class="modal-title">信息通知</h4></div>
            <div class="modal-body">
                <textarea name="reply" class="form-control" rows="5" oninput="$(this).parent().next().find('.js-count').text(100 - $(this).val().length);;" onpropertychange="$(this).parent().next().find('.js-count').text(100 - $(this).val().length);;" maxlength="100" placeholder="最多填写 100 字"></textarea>
            </div>
            <div class="modal-footer" style="padding: 5px 15px;">
                <span class="help-block pull-left">					您还可以输入：<storng>
                    <span style="color:red; font-size:18px;" name="count" class="js-count">100</span></storng> 个字符</span>
                <a class="btn btn-default js-cancel" data-dismiss="modal">取消</a>
                <button type="submit" class="btn btn-primary" name="confriminfo" value="正常">发送</button>
                <!--<a class="btn btn-primary js-order-remark-post">确定</a>-->
            </div>
        </div>
    </div>
</div>
<?php  } else if($operation == 'post') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('allfans', array('op' => 'display', 'storeid' => $storeid))?>">返回会员管理
            </a>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data" id="invitative">
        <div class="panel panel-default">
            <div class="panel-heading">
                用户信息
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否为代理商</label>
                    <div class="col-sm-9">
                        <label for="is_commission1" class="radio-inline"><input type="radio" name="is_commission" value="1" id="is_commission1" <?php  if($item['is_commission'] == 1) { ?>checked="true"<?php  } ?> /> 普通用户</label>
                        &nbsp;&nbsp;&nbsp;
                        <label for="is_commission2" class="radio-inline"><input type="radio" name="is_commission" value="2" id="is_commission2"  <?php  if(empty($item) || $item['is_commission'] == 2) { ?>checked="true"<?php  } ?> /> 代理商</label>
                        <span class="help-block"></span>
                    </div>
                </div>
                <?php  if(!empty($item)) { ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">推广二维码</label>
                    <div class="col-sm-9">
                        <img src="<?php  echo $this->createWebUrl('GetQrcode',array('url'=>$agent_url))?>"/>
                    </div>
                </div>
                <?php  } ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label"><span class="require">*</span>推荐人</label>
                    <div class="col-sm-9 col-xs-12">
                        <div class="input-group">
                            <input type="text" name="nickname" value="<?php  echo $agent['nickname'];?>" class="form-control" id="nickname"
                                   readonly="">
                            <input type="hidden" name="agentid" value="<?php  echo $agent['id'];?>" id="agentid">
                        <span class="input-group-btn">
				            <button class="btn btn-default" type="button" onclick="$('#modal-module-menus').modal();" data-original-title="" title="">选择粉丝</button>
                            <button class="btn btn-default" type="button" onclick="$('#agentid').val('0');$('#nickname').val('');"
                                    data-original-title="" title="">清除</button>
			            </span>
                        </div>
                        <div class="input-group cover" style="margin-top:.5em;">
                            <img src="<?php  echo tomedia($fans['headimgurl']);?>" width="150" />
                        </div>
                        <div class="help-block"></div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">微信ID</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  echo $item['from_user'];?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">昵称</label>
                    <div class="col-sm-9">
                        <input type="text" name="nickname2" value="<?php  echo $item['nickname'];?>"
 class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">头像</label>
                    <div class="col-sm-9">
                        <?php  if(empty($item['headimgurl'])) { ?>
                        <?php  echo tpl_form_field_image('headimgurl', '../addons/weisrc_dish/template/images/default-headimg.jpg')?>
                        <?php  } else { ?>
                        <?php  echo tpl_form_field_image('headimgurl', $item['headimgurl'])?>
                        <?php  } ?>
                        <div class="help-block">大图片建议尺寸：80像素 * 80像素</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">累计下单数量</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  echo $order_count;?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">取消订单数量</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  echo $cancel_count;?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">累计消费金额</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  if(empty($pay_price)) { ?>0<?php  } else { ?><?php  echo $pay_price;?><?php  } ?>
                        </p>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">用户名</label>
                    <div class="col-sm-9">
                        <input type="text" name="username" value="<?php  echo $item['username'];?>" id="username" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">手机</label>
                    <div class="col-sm-9">
                        <input type="text" name="mobile" value="<?php  echo $item['mobile'];?>" id="mobile" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">地址</label>
                    <div class="col-sm-9">
                        <input type="text" name="address" value="<?php  echo $item['address'];?>" id="address" class="form-control" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">坐标</label>
                    <div class="col-sm-9">
                        <?php  echo tpl_form_field_coordinate('baidumap', $item)?>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">最后访问时间</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  echo date('Y-m-d H:i:s', $item['lasttime'])?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">加入时间</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  echo date('Y-m-d H:i:s', $item['dateline'])?>
                        </p>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="color:#f00;">禁止下单</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="status" value="1" <?php  if($item['status']==1 || empty($item)) { ?>checked<?php  } ?>>正常
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="status" value="0" <?php  if(isset($item['status']) && empty($item['status'])) { ?>checked<?php  } ?>>禁止</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <input type="submit" name="submit" value="保存设置" class="btn btn-primary col-lg-3"/>
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
    </form>
</div>
<script type="text/javascript">
    function check() {
        if($.trim($('#username').val()) == '') {
            message('没有输入姓名.', '', 'error');
            return false;
        }s
        return true;
    }
</script>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/_modal_fans', TEMPLATE_INCLUDEPATH)) : (include template('web/_modal_fans', TEMPLATE_INCLUDEPATH));?>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
