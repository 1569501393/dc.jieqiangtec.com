<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<?php  if($operation == 'post') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('category', array('op' => 'display', 'storeid' => $storeid))?>">返回分类管理
            </a>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
        <input type="hidden" name="parentid" value="<?php  echo $parent['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                分类详细设置
            </div>
            <div class="panel-body">
                <?php  if(!empty($parentid)) { ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">上级分类</label>
                    <div class="col-sm-9">
                        <?php  echo $parent['name'];?>
                    </div>
                </div>
                <?php  } ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
                    <div class="col-sm-9 input-group">
                        <input type="text" name="displayorder" class="form-control" value="<?php  echo $category['displayorder'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">分类名称</label>
                    <div class="col-sm-9 input-group">
                        <input type="text" name="catename" class="form-control" value="<?php  echo $category['name'];?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">分类描述</label>
                    <div class="col-sm-9 input-group">
                        <textarea name="description" class="form-control richtext" cols="70"><?php  echo $category['description'];?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">折扣比率</label>
                    <div class="input-group col-sm-9">
                        <input type="text" name="rebate" class="form-control" value="<?php  echo $category['rebate'];?>" />
                        <div class="input-group-addon">折</div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">支持店内</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="is_meal" value="1" <?php  if($category['is_meal']==1 || empty($category)) { ?>checked<?php  } ?>>启用
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="is_meal" value="0" <?php  if(isset($category['is_meal']) && empty($category['is_meal'])) { ?>checked<?php  } ?>>关闭
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">支持外卖</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="is_delivery" value="1" <?php  if($category['is_delivery']==1 || empty($category)) { ?>checked<?php  } ?>>启用
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="is_delivery" value="0" <?php  if(isset($category['is_delivery']) && empty($category['is_delivery'])) { ?>checked<?php  } ?>>关闭
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">支持折扣</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="is_discount" value="1" <?php  if($category['is_discount']==1 || empty($category)) { ?>checked<?php  } ?>>启用
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="is_discount" value="0" <?php  if(isset($category['is_discount']) && empty($category['is_discount'])) { ?>checked<?php  } ?>>关闭
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">支持预定</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="is_reservation" value="1" <?php  if($category['is_reservation']==1 || empty($category)) { ?>checked<?php  } ?>>启用
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="is_reservation" value="0" <?php  if(isset($category['is_reservation']) && empty($category['is_reservation'])) { ?>checked<?php  } ?>>关闭
                        </label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">支持快餐</label>
                    <div class="col-sm-9">
                        <label class="radio-inline">
                            <input type="radio" name="is_snack" value="1" <?php  if($category['is_snack']==1 || empty($category)) { ?>checked<?php  } ?>>启用
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="is_snack" value="0" <?php  if(isset($category['is_snack']) && empty($category['is_snack'])) { ?>checked<?php  } ?>>关闭
                        </label>
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
<?php  } else if($operation == 'display') { ?>
<ul class="nav nav-tabs">
    <li <?php  if($operation == 'display' || empty($operation)) { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('category', array('op' => 'display', 'storeid' => $storeid))?>">分类管理</a></li>
    <li <?php  if($operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('category', array('op' => 'post', 'storeid' => $storeid))?>">添加分类</a></li>
    <li><a href="#" onclick="$('#uploaddata').slideToggle();">批量导入</a></li>
</ul>
<div class="main">
    <style>
        .form th {
            text-align: left;
            width: 15px;
            margin-right: 20px;
            overflow: hidden;
            float: none;
        }
    </style>
    <div class="panel panel-default" id="uploaddata" style="display: none;">
        <div class="panel-body">
            <form action="./index.php" method="post" class="navbar-form navbar-left" onsubmit="return formcheck(this)"  enctype="multipart/form-data">
                <input type="hidden" name="leadExcel" value="true">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="UploadExcel" />
                <input type="hidden" name="ac" value="category" />
                <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
                <span class="input-group">
                    <input name="viewfile" id="viewfile" type="text" value="" class="form-control" style="width:300px;" readonly>
                    <span class="input-group-btn">
                        <a class="btn btn-default ms_br">
                            <label for="unload" class="ms_mp" >选择...</label>
                        </a>
                        <input type="submit" style="border-radius: 0px;" class="btn btn-success" value="上传"
                               onclick="if (document.getElementById('viewfile').value == '') {
                                           alert('请先选择上传文件!');
                                           return false;
                                       }">
                        <a class="btn btn-primary ms_mb" href="<?php  echo $_W['siteroot'];?>addons/weisrc_dish/example/example_category.xls">下载导入模板
                        </a>
                    </span>
                    <input type="file" name="inputExcel" id="unload" class="form-control" style="display: none;"
                           onchange="document.getElementById('viewfile').value = this.value;this.style.display = 'none';">
                </span>
            </form>
            <style>
                .ms_br {
                    border-radius: 0px;border-left-width: 0px;
                }
                .ms_mp {
                    margin: 0px;padding:0px;
                }
                .ms_mb {
                    border-top-left-radius:0px;border-bottom-left-radius:0px;
                }
            </style>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="table-responsive panel-body">
            <form action="" method="post" class="form-horizontal form" >
                <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
                <table class="table table-hover table-bordered">
                    <thead class="navbar-inner">
                        <tr>
                            <th style="width:5%;" class='with-checkbox'><input type="checkbox" class="check_all" /></th>
                            <th style="width:10%;">顺序</th>
                            <th style="width:35%;">分类名称</th>
                            <th style="width:40%;">支持类型</th>
                            <th style="width:10%;text-align:right;">操作</th>
                        </tr>
                    </thead>
                    <tbody id="level-list">
                        <?php  if(is_array($category)) { foreach($category as $row) { ?>
                        <tr>
                            <td class="with-checkbox"><input type="checkbox" name="check" value="<?php  echo $row['id'];?>"></td>
                            <td><input type="text" class="form-control" name="displayorder[<?php  echo $row['id'];?>]" value="<?php  echo $row['displayorder'];?>"></td>
                            <td><input type="text" class="form-control" style="width:150px;" name="goodsname[<?php  echo $row['id'];?>]" value="<?php  echo $row['name'];?>"></td>
                            <td>
                                <span class="label <?php  if(!empty($row['is_meal'])) { ?>label-success<?php  } else { ?>label-default<?php  } ?>" >店内</span>
                                <span class="label <?php  if(!empty($row['is_delivery'])) { ?>label-success<?php  } else { ?>label-default<?php  } ?>" >外卖</span>
                                <span class="label <?php  if(!empty($row['is_snack'])) { ?>label-success<?php  } else { ?>label-default<?php  } ?>" >快餐</span>
                                <span class="label <?php  if(!empty($row['is_reservation'])) { ?>label-success<?php  } else { ?>label-default<?php  } ?>">预定</span>
                                <?php  if(!empty($row['is_discount'])) { ?>
                                <span class="label label-success"><?php  echo $row['rebate'];?>折</span>
                                <?php  } ?>
                            </td>
                            <td style="text-align:right;"><a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('category', array('op' => 'post', 'id' => $row['id'], 'storeid' => $storeid))?>" title="编辑">改</a>&nbsp;&nbsp;<a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('category', array('op' => 'delete', 'id' => $row['id'], 'storeid' => $storeid))?>" onclick="return confirm('确认删除此分类吗？');return false;" title="删除">删</a></td>
                        </tr>
                        <?php  } } ?>
                        <tr>
                            <td colspan="5">
                                <input name="submit" type="submit" class="btn btn-primary" value="保存设置">
                                <input type="button" class="btn btn-primary" name="btndeleteall" value="批量删除" />
                                <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <?php  echo $pager;?>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $(".check_all").click(function () {
            var checked = $(this).get(0).checked;
            $("input[type=checkbox]").attr("checked", checked);
        });

        $("input[name=btndeleteall]").click(function () {
            var check = $("input[type=checkbox][class!=check_all]:checked");
            if (check.length < 1) {
                alert('请选择要删除的分类!');
                return false;
            }
            if (confirm("确认要删除选择的分类?")) {
                var id = new Array();
                check.each(function (i) {
                    id[i] = $(this).val();
                });
                var url = "<?php  echo $this->createWebUrl('category', array('op' => 'deleteall', 'storeid' => $storeid))?>";
                $.post(
                        url,
                        {idArr: id},
                        function (data) {
                            alert(data.error);
                            location.reload();
                        }, 'json'
                        );
            }
        });

    });
</script>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>