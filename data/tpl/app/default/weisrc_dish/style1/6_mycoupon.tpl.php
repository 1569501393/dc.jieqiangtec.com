<?php defined('IN_IA') or exit('Access Denied');?><html class="ng-scope">
<head>
    <style type="text/css">@charset "UTF-8";
    [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
        display: none !important;
    }
    ng\:form {
        display: block;
    }</style>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta content="telephone=no" name="format-detection">
    <link rel="shortcut icon" href="data:image/x-icon;," type="image/x-icon">
    <meta name="wechat_account_be_verified" content="true">
    <title><?php  echo $setting['title'];?></title>
    <link data-turbolinks-track="true" href="<?php echo RES;?>/mobile/<?php  echo $this->cur_tpl?>/assets/diandanbao/weixin.css?v=2"
          media="all" rel="stylesheet">
    <style type="text/css">@media screen {
        .smnoscreen {
            display: none
        }
    }

    @media print {
        .smnoprint {
            display: none
        }
    }</style>
</head>
<body>

<div ng-view="" style="height: 100%;" class="ng-scope">
    <div class="ddb-nav-header ng-scope" common-header="">
        <div class="nav-left-item"
             onclick="location.href='<?php  echo $this->createMobileUrl('usercenter', array(), true)?>';"><i
                class="fa fa-angle-left"></i></div>
        <div class="header-title ng-binding">优惠劵</div>
    </div>
    <div class="ddb-secondary-nav-header coupons-index-secondary-nav ng-scope">
        <div class="filter-switch">
            <div class="filter-tab <?php  if($type==1) { ?>active<?php  } ?>" onclick="change_filter_tab('1')">
                <div class="text">可用</div>
            </div>
            <div class="filter-tab <?php  if($type==2) { ?>active<?php  } ?>" onclick="change_filter_tab('2')">
                <div class="text">已使用</div>
            </div>
            <div class="filter-tab <?php  if($type==3) { ?>active<?php  } ?>" onclick="change_filter_tab('3')">
                <div class="text">已过期</div>
            </div>
            <!--<div class="filter-tab" ng-click="change_filter_tab('refund')" ng-class="{'active': tab == 'refund'}">-->
            <!--<div class="text">已退款</div>-->
            <!--</div>-->
        </div>
    </div>
    <script>
        function change_filter_tab(type)
        {
            var url = "<?php  echo $this->createMobileUrl('mycoupon', array(), true)?>" + '&type=' + type;
            window.location.href = url;
        }
    </script>
    <div class="coupons-index-page main-view ng-scope">
        <div class="space-12"></div>
        <?php  $data_index = 1;?>
        <?php  if(is_array($couponlist)) { foreach($couponlist as $item) { ?>
        <?php  $data_status = $data_index%3;?>
        <div
                class="coupon-item ng-scope <?php  if($data_status==1) { ?>coupon-green<?php  } else if($data_status==2) { ?>coupon-orange<?php  } else if($data_status==0) { ?>coupon-red<?php  } ?>">
            <div class="coupon-inner">
                <div class="exchangecode ng-binding" style="font-size: 16px;"><?php  echo $item['sncode'];?></div>
                <div class="norminal-value ng-binding"><?php  if($item['dmoney']>0) { ?>￥<?php  echo $item['dmoney'];?>(满￥<?php  echo $item['gmoney'];?>可用)<?php  } else { ?>
                    满￥<?php  echo $item['gmoney'];?>可用<?php  } ?>
                </div>
                <div class="name ng-binding"><?php  echo $item['title'];?>
                    <span <?php  if(TIMESTAMP<=$item['endtime']) { ?>class="ng-hide"<?php  } ?>>（已过期）</span>
                </div>
                <div class="usablestarts ng-binding">有效期<?php  echo date("Y年m月d日", $item['starttime'])?>-<?php  echo date("Y年m月d日", $item['endtime'])?></div>
            </div>
            <div class="coupon-spliter"></div>
            <div class="branch-name overflow-ellipsis ng-binding">适用门店:<?php  echo $storelist[$item['storeid']]['title'];?></div>
        </div>
        <?php  $data_index++;?>
        <?php  } } ?>
        <div class="space"></div>
        <div class="space-12"></div>
    </div>
</div>
</body>
</html>