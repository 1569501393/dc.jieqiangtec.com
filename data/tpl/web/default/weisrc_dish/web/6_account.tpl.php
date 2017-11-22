<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<ul class="nav nav-tabs">
    <li <?php  if($operation == 'display' || empty($operation)) { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('account', array('op' => 'display'))?>">账号管理</a></li>
    <li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('account', array('op' => 'post'))?>">添加账号</a></li>
</ul>
<?php  if($operation == 'display') { ?>
<div class="main">
    <div class="alert alert-info">
        <i class="fa fa-info-circle"></i> 提示：
        <br/>
        1.商家登陆地址:<a href="<?php  echo $_W['siteroot'];?>web/store.php?c=user&a=login&" target="_blank"><?php  echo $_W['siteroot'];?>web/store.php?c=user&a=login&</a>
        <br/>
        2.注意:删除账号后还要到<a href="index.php?c=user&a=display&">系统用户列表</a>删除对应的管理用户.
    </div>
    <div class="panel panel-default">
        <div class="table-responsive panel-body">
        <form action="" method="post" class="form-horizontal form" >
            <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
            <table class="table table-hover">
                <thead class="navbar-inner">
                <tr>
                    <th style="width:10%;">顺序</th>
                    <th style="width:30%;">(ID)账号</th>
                    <th style="width:20%;">所属门店</th>
                    <th style="width:20%;">角色</th>
                    <th style="width:10%;">状态</th>
                    <th style="width:10%;text-align:right;">操作</th>
                </tr>
                </thead>
                <tbody id="level-list">
                <?php  if(is_array($list)) { foreach($list as $row) { ?>
                <tr>
                    <td><input type="text" class="form-control" name="displayorder[<?php  echo $row['id'];?>]" value="<?php  echo $row['displayorder'];?>"></td>
                    <td>(<?php  echo $row['id'];?>)<?php  if(!empty($row['username'])) { ?><?php  echo $row['username'];?><?php  } else { ?>对应的账号已被删除<?php  } ?></td>
                    <td><div class="type-parent"><?php  echo $stores[$row['storeid']]['title'];?></div></td>
                    <td>
                        <span class="label label-info">店长</span>
                    </td>
                    <td><?php  if($row['status']==2) { ?><span class="label label-success">启用</span><?php  } else { ?><span class="label label-danger">禁止</span><?php  } ?></td>
                    <td style="text-align:right;">
                        <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('account', array('op' => 'post', 'id' => $row['id'], 'storeid' => $storeid))?>" title="编辑"><i class="fa fa-pencil"> 改</i></a>
                        <a class="btn btn-default btn-sm" onclick="return confirm('确认删除吗？');return false;"
                           href="<?php  echo $this->createWebUrl('account', array('id' => $row['id'], 'op' => 'delete'))?>" title="删除">删</a>
                    </td>
                </tr>
                <?php  } } ?>
                </tbody>
            </table>
        </form>
        <?php  echo $pager;?>
        </div>
    </div>
</div>
<?php  } else if($operation == 'post') { ?>
<link rel="stylesheet" href="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/public/web/css/awesome-bootstrap-checkbox.css">
<div class="main">
    <script type="text/javascript">
        require(['jquery', 'util'], function($, u){
            $('#form1').submit(function(e) {
                if($.trim($(':text[name="username"]').val()) == '') {
                    u.message('没有输入用户名.', '', 'error');
                    return false;
                }
                "<?php  if(empty($users)) { ?>"
                if($('#password').val() == '') {
                    u.message('没有输入密码.', '', 'error');
                    return false;
                }
                if($('#password').val().length < 8) {
                    u.message('密码长度不能小于8个字符.', '', 'error');
                    return false;
                }
                if($('#password').val() != $('#repassword').val()) {
                    u.message('两次输入的密码不一致.', '', 'error');
                    return false;
                }
                "<?php  } ?>"
                if($('#storeid option:selected').val() == 0) {
                    u.message('请选择所属门店.', '', 'error');
                    return false;
                }
            });
        });
    </script>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data" id="form1">
        <div class="alert alert-info">
            <h4>说明: 店长可从后台登陆系统并拥有门店的所有权限. 可添加多个店员, 店员可在手机端管理门店</h4>
        </div>
        <input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                添加新用户
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">登录账号</label>
                    <div class="col-sm-10 col-lg-9">
                        <input id="" name="username" type="text" class="form-control" value="<?php  echo $users['username'];?>" />
                        <span class="help-block">请输入用户名，用户名为 3 到 15 个字符组成，包括汉字，大小写字母（不区分大小写）</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">登录密码</label>
                    <div class="col-sm-10 col-lg-9">
                        <input id="password" name="password" type="password" class="form-control" value="" autocomplete="off" />
                        <span class="help-block">请填写密码，最小长度为 8 个字符</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">确认密码</label>
                    <div class="col-sm-10 col-lg-9">
                        <input id="repassword" type="password" class="form-control" value="" autocomplete="off" />
                        <span class="help-block">重复输入密码，确认正确输入</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">所属门店</label>
                    <div class="col-sm-10 col-lg-9">
                        <select name="storeid" class="form-control" id="groupid">
                            <option value="0">请选择所属门店</option>
                            <?php  if(is_array($stores)) { foreach($stores as $row) { ?>
                            <option value="<?php  echo $row['id'];?>" <?php  if($account['storeid']==$row['id'] || $storeid==$row['id']) { ?>selected<?php  } ?>><?php  echo $row['title'];?></option>
                            <?php  } } ?>
                        </select>
                        <span class="help-block">管理门店</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label"><span class="require">*</span>微信昵称</label>
                    <div class="col-sm-9 col-xs-12">
                        <div class="input-group">
                            <input type="text" name="nickname" value="<?php  echo $fans['nickname'];?>" class="form-control" readonly="">
                            <input type="hidden" name="from_user" value="<?php  echo $account['tpluser'];?>">
                        <span class="input-group-btn">
				            <button class="btn btn-default" type="button" onclick="$('#modal-module-menus').modal();" data-original-title="" title="">选择粉丝</button>
			            </span>
                        </div>
                        <div class="input-group cover" style="margin-top:.5em;">
                            <img src="<?php  echo tomedia($fans['headimgurl']);?>" width="150" />
                        </div>
                        <div class="help-block">手机端管理订单，接收订单通知。</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">真实姓名</label>
                    <div class="col-sm-10 col-lg-9">
                        <input type="text" name="truename" class="form-control" value="<?php  echo $account['username'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">手机号码</label>
                    <div class="col-sm-10 col-lg-9">
                        <input type="text" name="mobile" class="form-control" value="<?php  echo $account['mobile'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">电子邮箱</label>
                    <div class="col-sm-10 col-lg-9">
                        <input type="text" name="email" class="form-control" value="<?php  echo $account['email'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">操作权限</label>
                    <div class="col-sm-10 col-lg-9">
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox2" value="1" <?php  if($account['is_admin_order']==1) { ?>checked<?php  } ?> name="is_admin_order">
                            <label for="inlineCheckbox2" style="padding-left: 0px;">订单管理</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox1" value="1" <?php  if($account['is_notice_order']==1) { ?>checked<?php  } ?> name="is_notice_order">
                            <label for="inlineCheckbox1" style="padding-left: 0px;">接收订单通知</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox3" value="1" <?php  if($account['is_notice_service']==1) { ?>checked<?php  } ?> name="is_notice_service">
                            <label for="inlineCheckbox3" style="padding-left: 0px;">服务员通知</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox5" value="1" <?php  if($account['is_notice_queue']==1) { ?>checked<?php  } ?> name="is_notice_queue">
                            <label for="inlineCheckbox5" style="padding-left: 0px;">排队通知</label>
                        </div>
                        <div class="checkbox checkbox-success checkbox-inline">
                            <input type="checkbox" id="inlineCheckbox4" value="1" <?php  if($account['is_notice_boss']==1) { ?>checked<?php  } ?> name="is_notice_boss">
                            <label for="inlineCheckbox4" style="padding-left: 0px;">每日统计通知</label>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">状态</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="status" value="2" <?php  if($users['status']==2 || empty($users)) { ?>checked<?php  } ?>>启用
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="status" value="1" <?php  if($users['status'] == 1) { ?>checked<?php  } ?>>关闭
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-2 control-label">备注</label>
                    <div class="col-sm-10 col-lg-9">
                        <textarea name="remark" style="height:80px;" class="form-control"><?php  echo $users['remark'];?></textarea>
                        <span class="help-block">方便注明此用户的身份</span>
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
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/_modal_fans', TEMPLATE_INCLUDEPATH)) : (include template('web/_modal_fans', TEMPLATE_INCLUDEPATH));?>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>