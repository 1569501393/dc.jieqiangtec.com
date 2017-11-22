<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<link href="./resource/css/shop.css" rel="stylesheet" type="text/css">

<style type="text/css">
    .pricing{ min-height: 300px; }
</style>


<h3 class="page-title">增值业务 <small></small></h3>
<ul class="nav nav-tabs">
    <li <?php  if($do=='member' ) { ?> class="active" <?php  } ?>><a href="<?php  echo url('shop/member/member');?>">在线充值</a></li>
    <li class="active"><a href="<?php  echo url('member/buypackage');?>">增值业务</a></li>
    <li <?php  if($do=='record' ) { ?> class="active" <?php  } ?>><a href="<?php  echo url('shop/member/record');?>">消费记录</a></li>
    <li <?php  if($do=='chongzhi' ) { ?> class="active" <?php  } ?>><a href="<?php  echo url('shop/member/chongzhi');?>">充值记录</a></li>
</ul>
<div class="col-md-12">
    <!-- BEGIN INLINE NOTIFICATIONS PORTLET-->
    <div class="portlet">
        <div class="portlet-body">
            <div class="row margin-bottom-40">
                <!-- Pricing -->
                <?php  if(is_array($usergroups)) { foreach($usergroups as $item) { ?>
                <div class="col-md-3">
                    <div class="pricing hover-effect">
                        <div class="pricing-head">
                            <h3><?php  echo $item["name"];?>

                                </h3>
                            <h4><i>￥</i><i><?php  echo $item['price'];?>元/月</i>

                                </h4>
                        </div>
                        <ul class="pricing-content list-unstyled" style="color:red">
                            <li>
                                <i class="fa fa-tags"></i> 充值余额、购买应用优惠：<?php  echo $item['discount'];?>折
                            </li>
                            <li>
                                <i class="fa fa-tags"></i> 可以自定义微系列的版权功能
                            </li>
                            <li>
                                <i class="fa fa-tags"></i> 其它更功能
                            </li>
                        </ul>
                        <div class="pricing-footer">
                            <?php  if($user['groupid'] == $item['id']) { ?>
                            <p>
                                <span class="label label-success">正在使用</span>
                            </p>
                            <?php  } ?> <?php  if($user['groupid'] == $item['id']) { ?>
                            <p>
                                <span class="label label-success">有效期：<?php  if($_W["user"]['endtime']) { ?><?php  echo date("Y-m-d H:i:s",$_W["user"]['endtime'])?><?php  } else { ?>永久使用<?php  } ?></span>
                            </p>
                            <a href="<?php  echo url('member/buypackage', array('groupid' =>$item['id']))?>" class="btn yellow-crusta">

                                    立即续费 <i class="m-icon-swapright m-icon-white"></i>

                                </a> <?php  } else if($group['price'] >= $item['price']) { ?>
                            <a href="#" class="btn yellow-crusta">

                                    无需升级 <i class="m-icon-swapright m-icon-white"></i>

                                </a> <?php  } else { ?>
                            <a href="<?php  echo url('member/buypackage', array('groupid' =>$item['id']))?>" class="btn yellow-crusta">

                                    立即升级<i class="m-icon-swapright m-icon-white"></i>

                                </a> <?php  } ?>
                        </div>
                    </div>
                </div>
                <?php  } } ?>

                <div class="clearfix">
                
                </div>
                <?php  if(is_array($listvipprice)) { foreach($listvipprice as $item) { ?>
                <div class="col-md-3">
                    <div class="pricing hover-effect">
                        <div class="pricing-head">
                            <h3><?php  echo $item["title"];?></h3>
                            <h4><i>￥</i><i><?php  echo $item['price'];?>元</i></h4>
                        </div>
                        <ul class="pricing-content list-unstyled" style="color:red">
                            <li>
                                <i class="fa fa-tags"></i> 会员时间：<?php  echo $item['day'];?>天
                            </li>
                            <li>
                                <i class="fa fa-tags"></i> <?php  echo $item['desc'];?>
                            </li>
                        </ul>
                        <div class="pricing-footer">
                            
                            <a href="<?php  echo url('member/buypackage', array('gpid' =>$item['gpid']))?>" class="btn yellow-crusta">立即续费 <i class="m-icon-swapright m-icon-white"></i></a>
                            
                        </div>
                    </div>
                </div>
                <?php  } } ?>
                <!--//End Pricing -->
            </div>
        </div>
    </div>
    <!-- END INLINE NOTIFICATIONS PORTLET-->
</div>
</div>
<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>