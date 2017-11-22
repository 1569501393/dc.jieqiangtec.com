<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>



<ul class="nav nav-tabs">

	<li <?php  if($operation == 'display' || empty($operation)) { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('ad', array('op' => 'display'))?>">管理广告</a></li>

    <li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('ad', array('op' => 'post'))?>">添加广告</a></li>

</ul>

<?php  if($operation == 'display') { ?>

<div class="main">

    <div class="panel panel-default">

        <form action="" method="post" class="form-horizontal form">

        <div class="table-responsive panel-body">

                <table class="table table-hover">

                    <thead class="navbar-inner">

                    <tr>

                        <th style="width:10%;">排序</th>

                        <th style="width:10%;text-align: center;">位置</th>

                        <th style="width:23%;text-align: center;">链接地址</th>

                        <th style="width:15%;text-align: center;">时间段</th>

                        <th style="width:12%;text-align: center;">状态(点击可切换)</th>

                        <th style="width:15%;text-align: center;">操作</th>

                    </tr>

                    </thead>

                    <tbody>

                    <?php  if(is_array($list)) { foreach($list as $item) { ?>

                    <tr>

                        <td><input type="text" class="form-control" name="displayorder[<?php  echo $item['id'];?>]" value="<?php  echo $item['displayorder'];?>"></td>

                        <td style="text-align: center;">

                            <label class='label label-info'>

                            <?php  if($item['position'] == 1) { ?>全屏倒计时<?php  } else if($item['position'] == 2) { ?>列表顶部<?php  } else if($item['position'] == 3) { ?>商家详情顶部<?php  } ?>

                            </label>

                        </td>

                        <td style="text-align: center;">

                            <?php  echo $item['url'];?>

                        </td>

                        <td style="text-align: center;">

                            <?php  if(TIMESTAMP>$item['endtime']) { ?>

                            <label class='label label-danger' >已过期</label>

                            <?php  } else { ?>

                            <?php  echo date('Y-m-d H:i', $item['starttime'])?><br/>

                            <?php  echo date('Y-m-d H:i', $item['endtime'])?>

                            <?php  } ?>

                        </td>

                        <td style="text-align: center;">

                            <label data='<?php  echo $item['status'];?>' class='label label-default <?php  if($item['status']==1) { ?>label-success<?php  } ?>' onclick="setProperty(this,<?php  echo $item['id'];?>,'status')">启用</label>

                        </td>

                        <td style="text-align: center;">

                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('ad', array('op' => 'post', 'id' => $item['id']))?>" title="编辑">改</a>

                            <a class="btn btn-default btn-sm" onclick="return confirm('确认删除吗？');return false;" href="<?php  echo $this->createWebUrl('ad', array('op' => 'delete', 'id' => $item['id']))?>" title="删除">删</a>

                        </td>

                    </tr>

                    <?php  } } ?>

                    </tbody>

                    <tfoot>

                    <tr>

                        <td colspan="6">

                            <input name="submit" type="submit" class="btn btn-primary" value="批量排序">

                            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />

                        </td>

                    </tr>

                    </tfoot>

                </table>

            </div>

        </form>

    </div>

    <?php  echo $pager;?>

</div>

<script type="text/javascript">

    <!--

    function setProperty(obj,id,type){

        $(obj).html($(obj).html() + "...");

        $.post("<?php  echo $this->createWebUrl('setadproperty')?>"

                ,{id:id,type:type, data: obj.getAttribute("data")}

                ,function(d){

                    $(obj).html($(obj).html().replace("...",""));

                    $(obj).attr("data",d.data)

                    if(d.result==1){

                        $(obj).toggleClass("label-success");

                    }

                },"json"

        );

    }

    //-->

</script>

<?php  } else if($operation == 'post') { ?>

<div class="main">

	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">

		<input type="hidden" name="id" value="<?php  echo $item['id'];?>" />

        <div class="panel panel-default">

            <div class="panel-heading">

                广告信息

            </div>

            <div class="panel-body">

                <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">位置</label>

                    <div class="col-sm-9">

                        <select class="form-control" id="position" name="position" autocomplete="off">

                            <option value="1" <?php  if($item['position'] == 1) { ?>

                            selected="selected"<?php  } ?>>全屏倒计时(800*1370)</option>

                            <option value="2" <?php  if($item['position'] == 2) { ?> selected="selected"<?php  } ?>>门店列表顶部</option>
                            <option value="3" <?php  if($item['position'] == 3) { ?> selected="selected"<?php  } ?>>商家详情顶部</option>

                        </select>

                    </div>

                </div>

                <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">广告图片</label>

                    <div class="col-sm-9">

                        <?php  echo tpl_form_field_image('thumb', $thumb, '', array('width' => 480, 'height' => 200))?>

                    </div>

                </div>

                <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label"><span style='color:red'>*</span> 时间段</label>

                    <div class="col-sm-9 col-xs-12">

                        <?php  echo tpl_form_field_daterange('datelimit', array('starttime'=>date('Y-m-d H:i',$item['starttime']),'endtime'=>date('Y-m-d H:i',$item['endtime'])), true)?>

                        <span class="help-block"></span>

                    </div>

                </div>

                <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">链接地址</label>

                    <div class="col-sm-9">

                        <input type="text" name="url" class="form-control" value="<?php  if(empty($item['url'])) { ?>#<?php  } else { ?><?php  echo $item['url'];?><?php  } ?>" placeholder="请填写链接地址"/>

                    </div>

                </div>

                <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">状态</label>

                    <div class="col-sm-9">

                        <label for="status" class="checkbox-inline">

                            <input type="checkbox" name="status" value="1" id="status" <?php  if($item['status'] == 1) { ?>checked="true"<?php  } ?> /> 是否启用

                        </label>

                        <span class="help-block"></span>

                    </div>

                </div>

                <div class="form-group">

                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>

                    <div class="col-sm-9">

                        <input type="text" name="displayorder" class="form-control" value="<?php  if(empty($item) || empty($item['displayorder'])) { ?>0<?php  } else { ?><?php  echo $item['displayorder'];?><?php  } ?>" />

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

</div>

<?php  } ?>

<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>