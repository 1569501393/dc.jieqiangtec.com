<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>

<ul class="nav nav-tabs">
    <li class="active"><a href="#">系统设置</a></li>
    <?php  if($_W['isfounder']) { ?>
    <li><a href="<?php  echo $this->createWebUrl('stores2', array('op' => 'setting'))?>">站长设置</a></li>
    <?php  } ?>
    <!--<li <?php  if($operation == 'display') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('nave', array('op' => 'display'))?>">管理首页导航</a></li>-->
</ul>

<script type="text/javascript">
    $(function(){
        $(':radio[name="ismail"]').click(function(){
            if(this.checked) {
                if($(this).val() == '1') {
                    $('.mail').show();
                } else {
                    $('.mail').hide();
                }
            }
        });
        $(':radio[name="sms_enable"]').click(function(){
            if(this.checked) {
                if($(this).val() == '1') {
                    $('.sms').show();
                } else {
                    $('.sms').hide();
                }
            }
        })
        $(':radio[name="isprint"]').click(function(){
            if(this.checked) {
                if($(this).val() == '1') {
                    $('.print').show();
                } else {
                    $('.print').hide();
                }
            }
        });
    });
</script>
<link rel="stylesheet" type="text/css" href="../addons/weisrc_dish/plugin/clockpicker/clockpicker.css" media="all">
<script type="text/javascript" src="../addons/weisrc_dish/plugin/clockpicker/clockpicker.js"></script>
<link rel="stylesheet" type="text/css" href="../addons/weisrc_dish/plugin/clockpicker/standalone.css" media="all">
<div class="main">
    <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-nave', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-nave', TEMPLATE_INCLUDEPATH));?>
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <div class="tab-content">
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-basic', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-basic', TEMPLATE_INCLUDEPATH));?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-paytype', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-paytype', TEMPLATE_INCLUDEPATH));?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-info', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-info', TEMPLATE_INCLUDEPATH));?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-price', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-price', TEMPLATE_INCLUDEPATH));?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-commission', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-commission', TEMPLATE_INCLUDEPATH));?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-link', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-link', TEMPLATE_INCLUDEPATH));?>
            <?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('web/setting-sms', TEMPLATE_INCLUDEPATH)) : (include template('web/setting-sms', TEMPLATE_INCLUDEPATH));?>
        </div>
        <div class="form-group col-sm-12">
            <input type="hidden" name="id" value="<?php  echo $setting['id'];?>" />
            <input type="submit" name="submit" value="保存设置" class="btn btn-primary col-lg-3" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
	</form>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>