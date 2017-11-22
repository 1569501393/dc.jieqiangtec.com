<?php defined('IN_IA') or exit('Access Denied');?><div class="main">
    <div class="alert alert-info">
        <h4>
            <i class="fa fa-info-circle"></i>
            说明:提现申请审核后微信账号会自动打款，其他类型账号需要管理员手动打款，打款后标记对应的提现申请处理成功!
        </h4>
        <p style="color: red">&nbsp;&nbsp;&nbsp;&nbsp;商户结算数据涉及钱款操作，请认真审核，谨慎操作！</p>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">筛选</div>
        <div class="panel-body">
            <form action="./index.php" method="get" class="form-horizontal" role="form">
                <input type="hidden" name="c" value="site" />
                <input type="hidden" name="a" value="entry" />
                <input type="hidden" name="m" value="weisrc_dish" />
                <input type="hidden" name="do" value="business" />
                <input type="hidden" name="op" value="adminbusinesslog" />
                <input type="hidden" name="status" value="<?php  echo $_GPC['status'];?>" />
                <input type="hidden" name="business_type" value="<?php  echo $_GPC['business_type'];?>" />
                <div class="form-group" style="margin-left: 40px">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">提现状态</label>
                    <div class="col-sm-8 col-lg-10 col-xs-12">
                        <div class="btn-group">
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'business_type' => $_GPC['business_type']))?>" class="btn <?php  if($_GPC['status'] == '') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>" style="width: 80px">不限</a>
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'status' => 0, 'business_type' => $_GPC['business_type']))?>"
                               class="btn <?php  if($_GPC['status'] == 0 && isset($_GPC['status']) && $_GPC['status'] != '') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">待处理</a>
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'status' => 1, 'business_type' => $_GPC['business_type']))?>" class="btn <?php  if($_GPC['status'] == 1) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">已提现</a>
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'status' => -1, 'business_type' => $_GPC['business_type']))?>" class="btn <?php  if($_GPC['status'] == -1) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">提现失败</a>
                        </div>
                    </div>
                </div>
                <div class="form-group" style="margin-left: 40px">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label">账号类型</label>
                    <div class="col-sm-8 col-lg-10 col-xs-12">
                        <div class="btn-group">
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'status' => $_GPC['status']))?>" class="btn <?php  if($_GPC['business_type'] == '') { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>" style="width: 80px">不限</a>
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'business_type' => 1, 'status' => $_GPC['status']))?>" class="btn <?php  if($_GPC['business_type'] == 1) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">微信</a>
                            <a href="<?php  echo $this->createWebUrl('business', array('op' => 'adminbusinesslog', 'business_type' => 2, 'status' => $_GPC['status']))?>" class="btn <?php  if($_GPC['business_type'] == 2) { ?>btn-primary<?php  } else { ?>btn-default<?php  } ?>">支付宝</a>
                        </div>
                    </div>
                </div>
                <div class="form-group" style="margin-left: 40px">
                    <label class="col-xs-12 col-sm-2 col-md-2 col-lg-1 control-label" >下单时间</label>
                    <div class="col-sm-7 col-lg-3 col-xs-12">
                        <div class="input-group-btn">
                            <?php  echo tpl_form_field_daterange('time', array('starttime'=>date('Y-m-d', $starttime),'endtime'=>date('Y-m-d', $endtime)));?>

                            <button class="btn btn-default"><i class="fa fa-search"></i> 搜索</button>
                            <button class="btn btn-success" name="out_put" value="output"><i class="fa fa-file"></i> 导出</button>
                        </div>
                    </div>
                </div>

            </form>
        </div>
    </div>
    <form action="" method="post" class="form-horizontal form">
        <div class="panel panel-default">
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:15%;">(ID)申请时间</th>
                        <th style="width:12%;">提现金额</th>
                        <th style="width:12%;">手续费</th>
                        <th style="width:12%;">到帐金额</th>
                        <th style="width:15%;">账号信息</th>
                        <th style="width:12%;">所属门店</th>
                        <th style="width:12%;">状态</th>
                        <th style="width:10%;">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td>
                            (<?php  echo $item['id'];?>)<?php  echo date("Y-m-d H:i:s", $item['dateline'])?>
                            <?php  if($item['business_type']== 1 && $item['status'] == 1) { ?>
                            <br/>
                            <span class="label label-success">商户单号:<?php  echo $item['trade_no'];?></span>
                            <br/>
                            <span class="label label-success">微信单号:<?php  echo $item['payment_no'];?></span>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  echo $item['price'];?>元
                        </td>
                        <td>
                            <?php  echo $item['charges'];?>元
                        </td>
                        <td>
                            <?php  echo $item['successprice'];?>元
                        </td>
                        <td>
                            <?php  if($item['business_type']!=0) { ?>
                            <?php  if($item['business_type']== 1) { ?>
                            微信账号:<?php  echo $stores[$item['storeid']]['business_wechat'];?><br/>
                            <?php  } else { ?>
                            支付宝:<?php  echo $stores[$item['storeid']]['business_alipay'];?><br/>
                            <?php  } ?>
                            姓名:<?php  echo $stores[$item['storeid']]['business_username'];?>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  echo $stores[$item['storeid']]['title'];?>
                        </td>
                        <td>
                            <?php  if($item['status'] == 1) { ?>
                            <span class="label label-success">已提现</span>
                            <?php  } else if($item['status'] == -1) { ?>
                            <span class="label label-danger">提现失败</span>
                            <br/>
                            <?php  echo $item['result'];?>
                            <?php  } else { ?>
                            <span class="label label-danger">待审核</span>
                            <?php  } ?>
                        </td>
                        <td>
                            <?php  if($item['status'] == 0) { ?>
                            <a class="btn btn-success btn-sm" href="<?php  echo $this->createWebUrl('business', array('id' => $item['id'], 'op' => 'setstatus'))?>" title="管理" onclick="return confirm('确认操作吗？');return false;"><i class="fa fa-cog"></i> 审核</a>
                            <?php  } ?>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
                <?php  echo $pager;?>
            </div>
        </div>
    </form>
</div>