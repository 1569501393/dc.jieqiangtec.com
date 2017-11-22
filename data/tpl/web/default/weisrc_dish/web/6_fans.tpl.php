<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>

<?php  if($operation == 'display') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-heading">筛选</div>
        <div class="table-responsive panel-body">
            <form action="./index.php" method="get" class="navbar-form navbar-left" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="fans" />
                <input type="hidden" name="op" value="display" />
                <input type="hidden" name="storeid" value="<?php  echo $storeid;?>" />
                <div class="form-group">
                    <select class="form-control" id="status" name="status" autocomplete="off">
                        <option value="">全部</option>
                        <option value="1">正常下单</option>
                        <option value="0">禁止下单</option>
                    </select>
                </div>
                <div class="form-group">
                    <select class="form-control" id="types" name="types" autocomplete="off">
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
    <form action="" method="post" class="form-horizontal form" >
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:14%;">昵称</th>
                        <th style="width:14%;">用户名称</th>
                        <th style="width:18%;">手机号码</th>
                        <th style="width:12%;">下单数量</th>
                        <th style="width:12%;">消费金额</th>
                        <th style="width:10%;">状态</th>
                        <th style="width:20%;"></th>
                    </tr>
                    </thead>
                    <tbody id="level-list">
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td style="white-space:normal;">
                            <img src="<?php  echo tomedia($item['headimgurl']);?>" style="width:30px;height:30px;padding1px;border:1px solid #ccc"/>
                            </br><?php  echo $item['nickname'];?></td>
                        <td><?php  if(empty($item['username'])) { ?>-------<?php  } else { ?><?php  echo $item['username'];?><?php  } ?></td>
                        <td><?php  if(empty($item['mobile'])) { ?>-------<?php  } else { ?><?php  echo $item['mobile'];?><?php  } ?></td>
                        <td>
                            <?php  if(!empty($order_count[$item['from_user']]['count'])) { ?><?php  echo $order_count[$item['from_user']]['count'];?><?php  } else { ?>0<?php  } ?>
                        </td>
                        <td>
                            <?php  if(!empty($pay_price[$item['from_user']]['totalprice'])) { ?><?php  echo sprintf('%.2f', $pay_price[$item['from_user']]['totalprice']);?>
                            <?php  } else { ?>0<?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['status'] == 0) { ?>
                            <span class="label label-danger">禁止下单</span>
                            <?php  } else { ?>
                            <span class="label label-success">正常</span>
                            <?php  } ?>
                        </td>
                        <td>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('fans', array('id' => $item['id'], 'op' => 'post', 'storeid' => $storeid))?>"><i class="fa fa-search"></i>详情</a>
                            <?php  if($_W['isfounder'] || $_W['role'] == 'manager') { ?>
                            <?php  if($item['status'] == 1) { ?>
                            <a class="btn btn-default btn-sm" onclick="return confirm('您确定要禁止下单吗？');return false;" href="<?php  echo $this->createWebUrl('fans', array('id' => $item['id'], 'status' => $item['status'], 'op' => 'setstatus', 'storeid' => $storeid))?>"
 title="冻结"><i class="fa fa-lock"></i>禁止</a>
                            <?php  } else { ?>
                            <a class="btn btn-default btn-sm" onclick="return confirm('您确定要解除禁止状态吗？');return false;" href="<?php  echo $this->createWebUrl('fans', array('id' => $item['id'], 'status' => $item['status'], 'op' => 'setstatus', 'storeid' => $storeid))?>"
                                title="解冻"><i class="fa fa-unlock"></i>解除</a>
                            <?php  } ?>
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
<?php  } else if($operation == 'post') { ?>
<div class="main">
    <div class="panel panel-default">
        <div class="panel-body">
            <a class="btn btn-warning" href="<?php  echo $this->createWebUrl('fans', array('op' => 'display', 'storeid' => $storeid))?>">返回会员管理
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
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">微信ID</label>
                    <div class="col-sm-9">
                        <p class="form-control-static">
                            <?php  echo $item['from_user'];?>
                        </p>
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
                    <label class="col-xs-12 col-sm-3 col-md-2 control-label">昵称</label>
                    <div class="col-sm-9">
                        <input type="text" name="nickname" value="<?php  echo $item['nickname'];?>" id="nickname" class="form-control" />
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
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
