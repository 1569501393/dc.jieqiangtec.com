<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<?php  if($operation == 'post') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('savewine', array('op' => 'display', 'storeid' => $storeid))?>">返回寄存管理
            </a>
        </div>
    </div>
	<form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
		<input type="hidden" name="id" value="<?php  echo $item['id'];?>" />
        <div class="panel panel-default">
            <div class="panel-heading">
                存酒信息
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">状态</label>
                    <div class="col-sm-9">
                        <label for="status1" class="radio-inline"><input type="radio" name="status" value="1" id="status1" <?php  if(empty($item) || $item['status'] == 1) { ?>checked="true"<?php  } ?> /> 已存入</label>
                        <label for="status2" class="radio-inline"><input type="radio" name="status" value="0" id="status2"  <?php  if(!empty($item) && $item['status'] == 0) { ?>checked="true"<?php  } ?> /> 等待存入</label>
                        <label for="status3" class="radio-inline"><input type="radio" name="status" value="-1" id="status3"  <?php  if(!empty($item) && $item['status'] == -1) { ?>checked="true"<?php  } ?> /> 取出存物</label>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">存物卡号</label>
                    <div class="col-sm-9">
                        <input type="text" name="savenumber" class="form-control" value="<?php  echo $item['savenumber'];?>" <?php  if(!empty($item)) { ?>readonly<?php  } ?>/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">物品名称</label>
                    <div class="col-sm-9">
                        <input type="text" name="title" class="form-control" value="<?php  echo $item['title'];?>"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">姓名</label>
                    <div class="col-sm-9">
                        <input type="text" name="username" class="form-control" value="<?php  echo $item['username'];?>"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">联系电话</label>
                    <div class="col-sm-9">
                        <input type="text" name="tel" id="tel" value="<?php  echo $item['tel'];?>" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">备注</label>
                    <div class="col-sm-9">
                        <textarea name="remark" class="form-control richtext-clone"><?php  echo $item['remark'];?></textarea>
                    </div>
                </div>
                <?php  if(!empty($item['dateline'])) { ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">申请时间</label>
                    <div class="col-sm-9">
                        <p class="form-control"><font color=green><?php  echo date('Y-m-d H:i', $item['dateline'])?></font></p>
                    </div>
                </div>
                <?php  } ?>
                <?php  if(!empty($item['savetime'])) { ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">存入时间</label>
                    <div class="col-sm-9">
                        <p class="form-control"><font color=green><?php  echo date('Y-m-d H:i', $item['savetime'])?></font></p>
                    </div>
                </div>
                <?php  } ?>
                <?php  if(!empty($item['takeouttime'])) { ?>
                <div class="form-group">
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">取酒时间</label>
                    <div class="col-sm-9">
                        <p class="form-control"><font color=green><?php  echo date('Y-m-d H:i', $item['takeouttime'])?></font></p>
                    </div>
                </div>
                <?php  } ?>
            </div>
        </div>
        <div class="form-group col-sm-12">
            <input type="submit" name="submit" value="提交" class="btn btn-primary col-lg-3" />
            <input type="hidden" name="token" value="<?php  echo $_W['token'];?>" />
        </div>
	</form>
</div>
<?php  } else if($operation == 'display') { ?>
<div class="main">
    <div class="panel panel-info">
        <div class="panel-heading">筛选</div>
        <div class="panel-body">
            <form action="./index.php" method="get" class="form-horizontal" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="savewine" />
                <input type="hidden" name="op" value="display" />
                <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" style="width: 100px;">关键字</label>
                    <div class="col-sm-3 col-lg-4">
                        <input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>" placeholder="请输入寄存卡号/物品名称/用户名称">
                    </div>
                    <div class="col-sm-2 col-lg-1">
                        <button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
                    </div>
                    <div class="col-sm-2 col-lg-1">
                        <a href="<?php  echo $this->createWebUrl('SaveWine', array('op' => 'post', 'storeid' => $storeid))?>"
                           class="btn btn-success">添加寄存物品</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div style="margin: 10px 0;" class="clearfix">
        <div class="btn-group pull-left" style="margin-right: 10px;">
            <a class="btn btn-default <?php  if($status == -2) { ?>active<?php  } ?>" href="<?php  echo $this->createWebUrl('savewine', array('op' => 'display', 'storeid' => $storeid))?>">
                全部
            </a>
            <a class="btn btn-default <?php  if($status == 0) { ?> active<?php  } ?>" href="<?php  echo $this->createWebUrl('savewine', array('op' => 'display', 'status' => 0, 'storeid' => $storeid))?>">
                待存入
            </a>
            <a class="btn btn-default <?php  if($status == 1) { ?> active<?php  } ?>" href="<?php  echo $this->createWebUrl('savewine', array('op' => 'display', 'status' => 1, 'storeid' => $storeid))?>">
                已存入
            </a>
            <a class="btn btn-default <?php  if($status == -1) { ?> active<?php  } ?>" href="<?php  echo $this->createWebUrl('savewine', array('op' => 'display', 'status' => -1, 'storeid' => $storeid))?>">
                已取出
            </a>
        </div>
    </div>
    <div class="panel panel-default" style="float: left;">
        <form action="" method="post" class="form-horizontal form">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:7%;">编号</th>
                        <th style="width:15%;">存物卡号</th>
                        <th style="width:11%;">物品名称</th>
                        <th style="width:10%;">用户名称</th>
                        <!--<th style="width:12%;">微信昵称</th>-->
                        <th style="width:20%;">处理时间</th>
                        <th style="width:10%;">状态</th>
                        <th style="width:15%;text-align: right;">操作</th>
                    </tr>
                    </thead>
                    <tbody id="level-list">
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td><?php  echo $item['id'];?></td>
                        <td>
                            <?php  echo $item['savenumber'];?>
                        </td>
                        <td>
                            <?php  echo $item['title'];?>
                        </td>
                        <td>
                            <?php  echo $item['username'];?>
                        </td>
                        <!--<td>-->
                            <?php  if(!empty($item['nickname'])) { ?>
                            <!--<img src="<?php  echo tomedia($item['headimgurl'])?>" width="50px" onerror="javascript:this.src='<?php echo RES;?>/images/default-headimg.jpg';" style="border-radius: 2px;"/><br/>-->
                            <?php  echo $item['nickname'];?>
                            <?php  } ?>
                        <!--</td>-->
                        <td>
                            <font color=green>申请:<?php  echo date('Y-m-d H:i', $item['dateline'])?></font><br/>
                            <?php  if(!empty($item['savetime'])) { ?><font color=green>存入:<?php  echo date('Y-m-d H:i', $item['savetime'])?></font><br/><?php  } ?>
                            <?php  if(!empty($item['takeouttime'])) { ?><font color=red>取出:<?php  echo date('Y-m-d H:i', $item['takeouttime'])?></font><?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['status']==0) { ?>
                            <label class='label label-default' >等待存入</label>
                            <?php  } ?>
                            <?php  if($item['status']==1) { ?>
                            <label class='label label-success' >已存入</label>
                            <?php  } ?>
                            <?php  if($item['status']==-1) { ?>
                            <label class='label label-danger' >已取出</label>
                            <?php  } ?>
                        </td>
                        <td style="text-align: right;">
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('SaveWine', array('op' => 'post', 'id' => $item['id'], 'storeid' => $storeid))?>" title="编辑">改</a>
                            <a class="btn btn-default btn-sm" onclick="return confirm('确认删除吗？');return false;" href="<?php  echo $this->createWebUrl('SaveWine', array('op' => 'delete', 'id' => $item['id'], 'storeid' => $storeid))?>"
                               title="删除">删</a>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
                <?php  echo $pager;?>
            </div>
        </form>
    </div>
</div>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>