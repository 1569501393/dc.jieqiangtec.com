<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<div class="clearfix">
	<h5 class="page-header">自定义后台皮肤</h5>
	<form action="" method="post"  class="form-horizontal" role="form" enctype="multipart/form-data" onsubmit="return formcheck(this)">
		<div class="form-group">
			<label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">模板风格</label>
			<div class="col-sm-10 col-xs-12">
				<select name="pifu" class="form-control">
					<?php  if(is_array($template)) { foreach($template as $path) { ?>
					<option value="<?php  echo $path;?>" <?php  if($pifu == $path) { ?> selected<?php  } ?>><?php  echo $path;?></option>
					<?php  } } ?>
				</select>
				<div> 必须绑定并解析了自己的域名，才能用自己的域名访问并显示自己独有的皮肤</div>
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-2 col-md-offset-2 col-lg-offset-1 col-xs-12 col-sm-10 col-md-10 col-lg-11">
				<input name="submit" type="submit" value="提交" class="btn btn-primary span3" />
				<input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
			</div>
		</div>
	</form>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>