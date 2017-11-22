<?php defined('IN_IA') or exit('Access Denied');?><html ng-app="diandanbao" class="ng-scope">
    <script src="<?php  echo $this->cur_mobile_path?>/script/jquery-1.8.3.min.js"></script>
    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/script/swiper/idangerous.swiper.css">
    <script src="<?php  echo $this->cur_mobile_path?>/script/swiper/idangerous.swiper.min.js"></script>

<head>

    <style type="text/css">
        .pc_home_roll { width:100%; height:135px; position:relative; overflow:hidden; }
        .pc_home_roll .swiper-container { height:100%; width:100%; }
        .pc_home_roll .swiper-container a { height: 135px; width: 100%; }
        .pc_home_roll .swiper-container .swiper-slide  img { height: 100%; width: auto; }
        .pc_home_roll .pagination { position:absolute; z-index:1027; left:0; bottom:0px; text-align:center; width:100%; margin:0px 0; }
        .pc_home_roll span.swiper-pagination-switch { display:inline-block; width:8px; height:8px; border-radius:4px; margin:0 3px; cursor:pointer; margin:0 5px; background:#888; }
        .pc_home_roll span.swiper-active-switch { background:#333; }
    </style>
    <style type="text/css">@charset "UTF-8";

    [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak, .ng-hide:not(.ng-hide-animate) {

        display: none !important;

    }

    ng\:form {

        display: block;

    }</style>

    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <meta content="telephone=no" name="format-detection">

    <title><?php  echo $setting['title'];?></title>



    <link rel="stylesheet" href="<?php echo RES;?>/plugin/light7/light7.min.css">

    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/common.css"/>

    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/iconfont.css"/>



    <link data-turbolinks-track="true" href="<?php echo RES;?>/mobile/<?php  echo $this->cur_tpl?>/assets/diandanbao/weixin.css?v=1" media="all" rel="stylesheet">

    <style type="text/css">@media screen{.smnoscreen {display:none}} @media print{.smnoprint{display:none}}</style>

</head>

<body>



<div class="ng-scope">

    <div class="ddb-nav-header ng-scope">

        <div class="nav-left-item"  onclick="javascript :history.back(-1);"><i class="fa fa-angle-left"></i></div>

        <div class="header-title ng-binding">我的订单</div>

    </div>
    <!-- Hjay AD滚动列表 -->
    <div class="pc_home_roll">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <?php  if(is_array($adlist)) { foreach($adlist as $item1) { ?>
                <div class="swiper-slide">
                    <center>
                        <a href="<?php  echo $item1['url'];?>">
                            <img src="<?php  echo $item1['thumb'];?>">
                        </a>
                    </center>
                </div>
                <?php  } } ?>
            </div>
            <div class="swiper-wrapper">
            </div>
        </div>
        <div class="pagination"></div>
    </div>
    <!-- Hjay AD滚动列表 -->


    <?php  include $this->template($this->cur_tpl.'/_nave');?>

    <div class="orders-index-page main-view ng-scope"  style="height: 100%;overflow: scroll ;overflow-y:scroll;-webkit-overflow-scrolling:touch;">

        <?php  if(is_array($order_list)) { foreach($order_list as $items) { ?>

        <div class="space-12"></div>

        <div class="order-item section ng-scope">

            <a class="list-item">

                <div class="time">下单时间：<?php  echo date('Y-m-d H:i:s',$items['dateline'])?></div>

            </a>

            <a class="list-item" onclick="go_detail(<?php  echo $items['id'];?>)">

                <div class="name">

                    [<?php  if($items['dining_mode']==1) { ?>堂点

                    <?php  } else if($items['dining_mode']==2) { ?>外卖

                    <?php  } else if($items['dining_mode']==3) { ?>预订

                    <?php  } else if($items['dining_mode']==4) { ?>快餐

                    <?php  } else if($items['dining_mode']==5) { ?>收银

                    <?php  } else if($items['dining_mode']==6) { ?>充值<?php  } ?>]

                    <?php  if(empty($storelist[$items['storeid']]['title'])) { ?>平台<?php  } else { ?><?php  echo $storelist[$items['storeid']]['title'];?><?php  } ?>

                    <div class="operation" style="font-size: 14px;">

                        <?php  if($items['ispay']==4) { ?>退款失败<?php  } ?>

                        <?php  if($items['ispay']==3) { ?>已退款<?php  } ?>

                        <?php  if($items['ispay']==2) { ?>待退款<?php  } ?>

                        <?php  if($items['ispay']==1) { ?><i class="fa fa-check-square-o"></i>已支付<?php  } ?>

                        <?php  if($items['ispay']==0) { ?>未支付<?php  } ?>

                    </div>

                </div>

                <?php  if($items['dining_mode']==3) { ?>

                <div class="total-amount">预订房号：<?php  echo $items['table_title'];?>房</div>

                <br />预订到店时间：<?php  echo $items['meal_time'];?>

                <?php  } ?>

                <?php  if($items['dining_mode']==1) { ?>

                <div class="total-amount">桌号：<?php  echo $items['table_title'];?></div>

                <br />

                <?php  } ?>

                <div class="variants overflow-ellipsis">

                    共计<?php  echo $items['totalnum'];?>件商品 <?php  if($items['is_append']==1) { ?>(<font color="#f00">加单!</font>)<?php  } ?>

                </div>

            </a>

            <div class="list-item">

                <div class="total-amount"><span class="amount-label">金额：</span>￥<?php  echo $items['totalprice'];?></div>

                <div class="operation">

                    <?php  if($items['status']==0) { ?>

                    <?php  $lbl_color = 'label-default';?>

                    <?php  $lbl_stauts = '未确认';?>

                    <?php  } else if($items['status']==1) { ?>

                    <?php  $lbl_color = 'label-green';?>

                    <?php  $lbl_stauts = '已确认';?>

                    <?php  } else if($items['status']==3) { ?>

                    <?php  $lbl_color = 'label-green';?>

                    <?php  $lbl_stauts = '已完成';?>

                    <?php  } else if($items['status']==-1) { ?>

                    <?php  $lbl_color = 'label-red';?>

                    <?php  $lbl_stauts = '已取消';?>

                    <?php  } ?>

                    <span class="button <?php  echo $lbl_color;?>">

                        <?php  echo $lbl_stauts;?>

                    </span>

                    <?php  if($items['status']==3) { ?>

                    <?php  if($items['isfeedback']==0) { ?><span class="button label-orange" onclick="go_feedback(<?php  echo $items['id'];?>)">

                    待评价</span><?php  } ?>

                    <?php  } ?>

                </div>

                <div class="space"></div>

            </div>

        </div>

        <?php  } } ?>

        <div style="height:100px;"></div>

    </div>

</div>

<script>

    function jump(status) {

        window.location.href = "<?php  echo $this->createMobileUrl('order', array(), true)?>" + "&status=" + status;

    }



    function go_detail(id) {

        window.location.href = "<?php  echo $this->createMobileUrl('orderdetail', array(), true)?>" + "&orderid=" + id;

    }



    function go_feedback(id) {

        window.location.href = "<?php  echo $this->createMobileUrl('feedback', array(), true)?>" + "&orderid=" + id;

    }

</script>
<script type="text/javascript">
$(function() {
    new Swiper('.swiper-container', {
        loop: true,
        grabCursor: true,
        speed: 500,
        autoplay: 3000,
        pagination: '.pagination',
        autoplayDisableOnInteraction: false,
        paginationClickable: true,
        preventClicks: false,
        preventLinksPropagation: false
    });
});
</script>

</body>

</html>