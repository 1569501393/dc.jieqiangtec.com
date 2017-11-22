<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<style>
    .label-success,.btn-success{
        background-color: #1ab394;
        color: #FFFFFF;
    }
    .label-info,.btn-info{
        background-color: #1c84c6;
        color: #FFFFFF;
    }
    .label-danger,.btn-danger{
        background-color: #ed5565;
        color: #FFFFFF;
    }
</style>

<ul class="nav nav-tabs">
    <li <?php  if($operation == 'display' || $operation == 'post') { ?>class="active"<?php  } ?>><a href="<?php  echo $this->createWebUrl('business', array('op' => 'display'))?>">提现设置</a></li>
    <?php  if($_W['role'] == 'manager' || $_W['isfounder']) { ?>
    <li <?php  if($operation == 'adminbusinesslog') { ?>class="active"<?php  } ?>>
    <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog'))?>">提现管理</a></li>
    <?php  } ?>
</ul>
<?php  if($operation == 'display') { ?>
<div class="main">
    <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $("[data-toggle='tooltip']").tooltip();
        });
    </script>
    <?php  if(empty($returnid)) { ?>
    <div class="panel panel-default" id="uploaddata" style="display: none;">
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
    <div class="panel panel-default">
        <div class="panel-heading">
            筛选
        </div>
        <div class="panel-body">
            <form action="./index.php" method="get" class="form-horizontal" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="stores" />
                <input type="hidden" name="op" value="display" />
                <div class="form-group">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">关键字</label>
                    <div class="col-sm-2 col-lg-2">
                        <input class="form-control" name="keyword" id="" type="text" value="<?php  echo $_GPC['keyword'];?>" placeholder="请输入门店名称">
                    </div>
                    <div class="col-sm-2 col-lg-2">
                        <button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <?php  } ?>
    <div class="panel panel-default">
        <div class="table-responsive panel-body">
            <form action="" method="post" class="form-horizontal form" enctype="multipart/form-data">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:15%;">门店名称</th>
                        <th style="width:15%;">账户余额</th>
                        <th style="width:15%;">提现费率</th>
                        <th style="width:15%;">最低提现</th>
                        <th style="width:15%;">手续费最低</th>
                        <th style="width:10%;">手续费最高</th>
                        <th style="width:15%;text-align: right;" >操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($storeslist)) { foreach($storeslist as $item) { ?>
                    <tr>
                        <td>
                            <?php  echo $item['title'];?>
                        </td>
                        <td>
                            <span class="label label-success" ><?php  echo $item['totalprice'];?></span>
                        </td>
                        <td>
                            <?php  if($item['is_default_rate']==1) { ?>
                            <?php  echo $setting['fee_rate'];?>
                            <?php  } else { ?>
                            <?php  echo $item['fee_rate'];?>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['is_default_rate']==1) { ?>
                            <?php  echo $setting['getcash_price'];?>
                            <?php  } else { ?>
                            <?php  echo $item['getcash_price'];?>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['is_default_rate']==1) { ?>
                            <?php  echo $setting['fee_min'];?>
                            <?php  } else { ?>
                            <?php  echo $item['fee_min'];?>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['is_default_rate']==1) { ?>
                            <?php  echo $setting['fee_max'];?>
                            <?php  } else { ?>
                            <?php  echo $item['fee_max'];?>
                            <?php  } ?>
                        </td>
                        <td style="max-width:70px;text-align: right;">
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('business', array('id' => $item['id'], 'op' => 'post'))?>" title="修改">修改</a>
                            <a class="btn btn-default btn-sm" href="<?php  echo $this->createWebUrl('businesscenter', array('storeid' =>  $item['id']))?>" >管理</a>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
    <?php  echo $pager;?>
</div>
<?php  } else if($operation == 'post') { ?>
<?php  include $this->template('web/business_post');?>
<?php  } else if($operation == 'adminbusinesslog') { ?>
<?php  include $this->template('web/stores_adminbusinesslog');?>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
