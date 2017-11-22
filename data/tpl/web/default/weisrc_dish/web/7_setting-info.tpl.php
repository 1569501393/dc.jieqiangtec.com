<?php defined('IN_IA') or exit('Access Denied');?><div class="tab-pane" id="tab_info">
    <div class="panel panel-default">
        <div class="panel-heading">
            管理员信息提醒设置
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否信息提醒</label>
                <div class="col-sm-9">
                    <label for="is_notice1" class="radio-inline"><input type="radio" name="is_notice" value="1" id="is_notice1" <?php  if($setting['is_notice'] == 1) { ?>checked="true"<?php  } ?> /> 是</label>
                    &nbsp;&nbsp;&nbsp;
                    <label for="is_notice2" class="radio-inline"><input type="radio" name="is_notice" value="0" id="is_notice2"  <?php  if(empty($setting) || $setting['is_notice'] == 0) { ?>checked="true"<?php  } ?> /> 否</label>
                    <span class="help-block"></span>
                </div>
            </div>
            <!--<div class="form-group">-->
            <!--<label class="col-xs-12 col-sm-3 col-md-2 control-label">通知用户OPENID</label>-->
            <!--<div class="col-sm-9">-->
            <!--<input type="text" name="tpluser" class="form-control" value="<?php  echo $setting['tpluser'];?>"/>-->
            <!--<span class="help-block">请填写微信编号。系统根据微信编号获取对应公众号的openid,多个管理员请用','符号分开</span>-->
            <!--</div>-->
            <!--</div>-->
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label"><span class="require">*</span>微信昵称</label>
                <div class="col-sm-9 col-xs-12">
                    <div class="input-group">
                        <input type="text" name="nickname" value="<?php  echo $fans['nickname'];?>" class="form-control" readonly="">
                        <input type="hidden" name="from_user" value="<?php  echo $setting['tpluser'];?>">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button" onclick="$('#modal-module-menus').modal();" data-original-title="" title="">选择粉丝</button>
                        </span>
                    </div>
                    <div class="input-group cover" style="margin-top:.5em;">
                        <img src="<?php  echo tomedia($fans['headimgurl']);?>" width="150" />
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">邮箱</label>
                <div class="col-sm-9">
                    <input type="text" name="email" class="form-control" value="<?php  echo $setting['email'];?>" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">手机号</label>
                <div class="col-sm-9">
                    <input type="text" name="sms_mobile" class="form-control" value="<?php  echo $setting['sms_mobile'];?>" />
                    <div class="help-block">请输入要接受订单提醒的手机号码.</div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            模版消息通知
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否开启</label>
                <div class="col-sm-9">
                    <label for="isshow1" class="radio-inline"><input type="radio" name="istplnotice" value="1" id="isshow1" <?php  if($setting['istplnotice'] == 1) { ?>checked="true"<?php  } ?> /> 是</label>
                    &nbsp;&nbsp;&nbsp;
                    <label for="isshow2" class="radio-inline"><input type="radio" name="istplnotice" value="0" id="isshow2"  <?php  if(empty($setting) || $setting['istplnotice'] == 0) { ?>checked="true"<?php  } ?> /> 否</label>
                    <span class="help-block"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">行业类型</label>
                <div class="col-sm-9">
                    <label for="tpltype1" class="radio-inline"><input type="radio" name="tpltype" value="1" id="tpltype1" <?php  if(empty($setting) || $setting['tpltype'] == 1) { ?>checked="true"<?php  } ?> /> 餐饮</label>
                    &nbsp;&nbsp;&nbsp;
                    <label for="tpltype2" class="radio-inline"><input type="radio" name="tpltype" value="2" id="tpltype2"  <?php  if($setting['tpltype'] == 2) { ?>checked="true"<?php  } ?> /> IT科技</label>
                    <span class="help-block"></span>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">订单状态提醒模版ID</label>
                <div class="col-sm-9">
                    <input type="text" name="tplneworder" value="<?php  echo $setting['tplneworder'];?>" class="form-control"/>
                    <div class="help-block">
                        a.<code>餐饮行业</code>在模板库选择行业<code>餐饮－餐饮</code>，搜索“<code>订单状态提醒</code>”编号为<code>OPENTM202045454</code>的模板<br/>
                        b.<code>IT科技行业</code>在模板库选择行业<code>IT科技－互联网|电子商务</code>，搜索“<code>订单状态提醒</code>”编号为<code>OPENTM206848054</code>的模板
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">排队通知模版ID</label>
                <div class="col-sm-9">
                    <input type="text" name="tplnewqueue" value="<?php  echo $setting['tplnewqueue'];?>" class="form-control"/>
                    <div class="help-block">
                        a.<code>餐饮行业</code>在模板库选择行业<code>餐饮－餐饮</code>，搜索“<code>排号通知</code>”编号为<code>OPENTM383288748</code>的模板<br/>
                        b.<code>IT科技行业</code>在模板库选择行业<code>IT科技－互联网|电子商务</code>，搜索“<code>排号提醒通知</code>”编号为<code>OPENTM205984119</code>的模板
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">呼叫服务员模版ID</label>
                <div class="col-sm-9">
                    <input type="text" name="tploperator" value="<?php  echo $setting['tploperator'];?>"
                           class="form-control"/>
                    <div class="help-block">
                        a.<code>餐饮行业</code>在模板库选择行业<code>餐饮－餐饮</code>，搜索“<code>呼叫服务员提醒</code>”编号为<code>OPENTM400182254</code>的模板<br/>
                        b.<code>IT科技行业</code>在模板库选择行业<code>IT科技－互联网|电子商务</code>，搜索“<code>服务状态提醒</code>”编号为<code>OPENTM401684051</code>的模板
                    </div>
                </div>
            </div>


            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">提现申请通知模版ID</label>
                <div class="col-sm-9">
                    <input type="text" name="tplapplynotice" class="form-control" value="<?php  echo $setting['tplapplynotice'];?>" />
                    <div class="help-block">IT科技行业在模板库选择行业<code>IT科技－互联网|电子商务</code>，搜索“提现申请通知”编号为<code>OPENTM410103702</code>的模板</div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">老板通知模版ID</label>
                <div class="col-sm-9">
                    <input type="text" name="tplboss" class="form-control" value="<?php  echo $setting['tplboss'];?>" />
                    <div class="help-block">IT科技行业在模板库选择行业<code>IT科技－互联网|电子商务</code>，搜索“周销售统计通知”编号为<code>OPENTM207510014</code>的模板</div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            邮件设置
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">邮箱提醒</label>
                <div class="col-sm-9">
                    <label for="email_enable" class="radio-inline"><input type="radio" name="email_enable" value="1" id="email_enable" <?php  if($setting['email_enable']==1) { ?>checked<?php  } ?> /> 是</label>
                    &nbsp;&nbsp;&nbsp;
                    <label for="email_enable2" class="radio-inline"><input type="radio" name="email_enable" value="0" id="email_enable2"  <?php  if($setting['email_enable']==0 || empty($setting)) { ?>checked<?php  } ?> /> 否</label>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">邮箱服务器</label>
                <div class="col-sm-9">
                    <select name="email_host" class="form-control">
                        <option value="smtp.qq.com" <?php  if($setting['email_host'] == 'smtp.qq.com' ) { ?> selected="selected"<?php  } ?>>QQ邮箱</option>
                        <option value="smtp.126.com" <?php  if($setting['email_host'] == 'smtp.126.com' ) { ?> selected="selected"<?php  } ?>>126邮箱</option>
                        <option value="smtp.163.com" <?php  if($setting['email_host'] == 'smtp.163.com' ) { ?> selected="selected"<?php  } ?>>163邮箱</option>
                        <option value="smtp.sina.com" <?php  if($setting['email_host'] == 'smtp.sina.com' ) { ?> selected="selected"<?php  } ?>>sina邮箱</option>
                    </select>
                    <div class="help-block">QQ邮箱务必开启smtp服务</div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">发件人名称</label>
                <div class="col-sm-9">
                    <input type="text" name="email_user" class="form-control" value="<?php  if(empty($setting['email_user']) || empty($setting)) { ?>微点餐<?php  } else { ?><?php  echo $setting['email_user'];?><?php  } ?>" />
                    <div class="help-block">指定发送邮件发信人名称</div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">发送帐号用户名</label>
                <div class="col-sm-9">
                    <input type="text" name="email_send" class="form-control" value="<?php  echo $setting['email_send'];?>" />
                    <div class="help-block">指定发送邮件的用户名，例如：123456@qq.com</div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">发送帐号密码</label>
                <div class="col-sm-9">
                    <input type="password" name="email_pwd" class="form-control" value="<?php  echo $setting['email_pwd'];?>" />
                    <div class="help-block">指定发送邮件的密码<code>163邮箱记得填授权密码</code></div>
                </div>
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
            短信设置
        </div>
        <div class="panel-body">
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">商户短信提醒</label>
                <div class="col-sm-9">
                    <label for="sms_enable" class="radio-inline"><input type="radio" name="sms_enable" value="1" id="sms_enable" <?php  if($setting['sms_enable']==1) { ?>checked<?php  } ?> /> 是</label>
                    &nbsp;&nbsp;&nbsp;
                    <label for="sms_enable2" class="radio-inline"><input type="radio" name="sms_enable" value="0" id="sms_enable2"  <?php  if($setting['sms_enable']==0 || empty($setting)) { ?>checked<?php  } ?> /> 否</label>
                    <div>
                        使用短信提醒必须申请接口才能使用 <a href="http://www.dxton.com/" target="_blank">申请网址查看这里</a>.
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台帐号</label>
                <div class="col-sm-9">
                    <input type="text" name="sms_username" class="form-control" value="<?php  echo $setting['sms_username'];?>" />
                </div>
            </div>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">短信平台密码</label>
                <div class="col-sm-9">
                    <input type="password" name="sms_pwd" class="form-control" value="<?php  echo $setting['sms_pwd'];?>" />
                </div>
            </div>
        </div>
    </div>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/_modal_fans', TEMPLATE_INCLUDEPATH)) : (include template('web/_modal_fans', TEMPLATE_INCLUDEPATH));?>