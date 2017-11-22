<?php defined('IN_IA') or exit('Access Denied');?><!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="maximum-scale=1.0,minimum-scale=1.0,user-scalable=0,width=device-width,initial-scale=1.0" />
    <title><?php  echo $title;?></title>
    <link rel="stylesheet" href="<?php echo RES;?>/plugin/light7/light7.min.css">
    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/api.css" />
    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/common.css" />
    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/goods-two.css" />
    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/fakeLoader.css">
    <link rel="stylesheet" type="text/css" href="<?php  echo $this->cur_mobile_path?>/css/iconfont.css?v=1" />
    <script src="<?php  echo $this->cur_mobile_path?>/script/jquery-1.8.3.min.js"></script>
    <script>
    function jumpurl() {

        var url = "<?php  echo $this->createMobileUrl('waprestlist', array(), true)?>";

        location.href = url;

    }

    function jumpsearch() {

        var url = "<?php  echo $this->createMobileUrl('search', array(), true)?>";

        location.href = url;

    }



    function SetCollection() {

        var url = "<?php  echo $this->createMobileUrl('SetCollection', array('id' => $id), true);?>";

        $.ajax

        ({

            url: url,

            type: 'POST',

            data: {},

            dataType: 'json',

            error: function() {

                alert('网络通讯异常，请稍后再试！');

            },

            success: function(result) {

                if (result.status == 1) {

                    $(".shopheader-activity-count").html('<i class="i-favorite"></i>已收藏');

                } else {

                    $(".shopheader-activity-count").html('<i class="i-favorite"></i>收藏');

                }

            }

        });

    }
    </script>
    <style>
    .operation-nav-item {

        display: table-cell;
        width: 18%;
        vertical-align: top;

        {
            if $btn_count>1
        }

        text-align: center;

        {
            else
        }

        text-align: left;

        {
            /if
        }

        width: 1%;
    }

    .operation-nav-item .icon2 {
        margin: auto;
        display: block;
        width: 50px;
        height: 50px;
        text-align: center;
        font-size: 25px;
        overflow: hidden;
        border: 5px solid #fcfcfc;
        box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
        -webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, .1);
        border-radius: 1000px;
        #background-color: rgba(219, 56, 49, 0.8);
		background-repeat: no-repeat;
		background-size: 100% 100%;
		-moz-background-size: 100% 100%;
    }

    .operation-nav-item .text {

        font-size: 14px;

        height: 40px;

        line-height: 30px;

        padding-bottom: 10px;
    }

    .operation-nav-item i {

        color: #2f2f2f;
    }



    .icon {

        font-family: "iconfont" !important;

        font-style: normal;

        -webkit-font-smoothing: antialiased;

        -webkit-text-stroke-width: .2px;

        -moz-osx-font-smoothing: grayscale;

        background-image: none;

        font-size: 1.1rem;

        top: 6px;

        /*color: #163636*/
    }



    .KF_Back {

        height: auto;

        width: 40px;

        border-radius: 0 2px 2px 0;

        position: fixed;

        bottom: 20%;

        z-index: 1003;
    }

    .KF_Back .linkKeFu {

        display: block;

        width: 100%;

        height: 40px;

        color: white;

        background-color: rgba(26, 174, 62, 0.8);

        border-radius: 0 2px 0 0;

        z-index: 1000;

        text-align: center;

        font-size: 18px;

        line-height: 100%;

        /*font-weight: bold;*/
        /*padding-top: 3px;*/
    }

    .KF_Back .linkKeFu p {

        font-size: 12px;

        text-align: center;

        margin-top: -1px;
    }

    .KF_Back .Leftback {

        height: 40px;

        width: 100%;

        background-color: rgba(0, 0, 0, 0.5);

        display: inline-block;

        font-size: 20px;

        line-height: 36px;

        text-align: center;

        border-radius: 0 0 2px 0;

        z-index: 1000;

        font-size: 30px;

        color: #fff;
    }



    .lxp a {

        color: #080808;
    }



    .gray2 {

        position: fixed;

        width: 100%;

        background-color: rgba(0, 0, 0, 0.7);

        display: none;

        z-index: 9002;

        top: 0;

        bottom: 0;

        left: 0;

        right: 0;
    }





    .link-KF {

        width: 352px;

        height: 380px;

        position: fixed;

        left: 50%;

        margin-left: -190px;

        display: none;

        z-index: 99999;

        text-align: center;

        overflow: hidden;
    }

    .con-ma {

        width: 80%;

        height: auto;

        margin-left: 14%;

        border-radius: 8px;

        background-color: #E8E8E8;

        padding-bottom: 50px;

        -webkit-box-sizing: border-box;
    }

    .link-KF p {

        height: 50px;

        line-height: 50px;

        font-size: 18px;

        font-weight: none;

        color: #080808;
    }

    .link-KF img {

        max-width: 203px !important;

        max-height: 203px !important;

        width: 100%;

        height: 100%;

        margin-top: 5%;
    }

    .text {

        text-align: center;
    }


        .pc_home_roll { width:100%; height:135px; position:relative; overflow:hidden; background-color: #ccc; }
        .pc_home_roll .swiper-container1 { height:100%; width:100%; }
        .pc_home_roll .swiper-container1 a { height: 135px; width: 100%; }
        .pc_home_roll .swiper-container1 .swiper-slide  img { height: 100%; width: auto; }
        .pc_home_roll .pagination.pagination1 { position:absolute; z-index:1027; left:0; bottom:0px; text-align:center; width:100%; margin:0px 0; }
        .pc_home_roll span.swiper-pagination-switch { display:inline-block; width:8px; height:8px; border-radius:4px; margin:0 3px; cursor:pointer; margin:0 5px; background:#888; }
        .pc_home_roll span.swiper-active-switch { background:#333; }
        .pc_home_roll .swiper-pagination-bullet{ background-color: #BDBDBD; margin: 0 4px; }
    </style>
</head>

<body>
    <?php  include $this->template($this->cur_tpl.'/_nave');?> <?php  if(!empty($item['kefu_qrcode'])) { ?>
    <div class="KF_Back">
        <div class="linkKeFu">
            <i class="iconfont"></i>
            <p style="color: #fff;">客服</p>
        </div>
    </div>
    <div class="gray2" style="display: none;"></div>
    <div class="link-KF">
        <div class="con-ma">
            <p>长按识别二维码</p>
            <img src="<?php  echo tomedia($item['kefu_qrcode']);?>" />
        </div>
    </div>
    <?php  } ?>
    <div class="fakeloader"></div>
    <div id="wrap1">
        <div id="header" style="background-color: transparent;">
            <!--<div id="header" style="background: rgba(0, 0, 0, 0) linear-gradient(to right, #6a3f34 0px, #a57664 50%, #9995a3 100%) repeat scroll 0 0;">-->
            <div class="back" onclick="jumpurl();">
                <i class="i-back"></i>
            </div>
            <div class="flex-full"></div>
            <div class="search" onclick="jumpsearch();">
                <i class="i-search"></i>
            </div>
            <!--<div class="favorite">-->
            <!--<i class="i-share"></i>-->
            <!--</div>-->
        </div>
        <!-- Hjay AD滚动列表 -->
        <div class="pc_home_roll">
            <div class="swiper-container1">
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
            </div>
            <div class="pagination1 pagination"></div>
        </div>
        <script type="text/javascript">
        $(function() {
            new Swiper('.swiper-container1', {
                loop: true,
                grabCursor: true,
                speed: 500,
                autoplay: 3000000,
                pagination: '.pagination',
                autoplayDisableOnInteraction: false,
                paginationClickable: true,
                preventClicks: false,
                preventLinksPropagation: false
            });
        });
        </script>
        <!-- Hjay AD滚动列表 -->
        <div class="shop" style="background-color: #d93728; display: none;">
            <!--<div class="shop" style="background: rgba(0, 0, 0, 0) linear-gradient(to right, #6a3f34 0px, #a57664 50%, #9995a3 100%) repeat scroll 0 0;">-->
            <div class="shopheader-main">
                <img class="shopheader-logo" src="<?php  echo tomedia($item['logo']);?>">
                <div class="shopheader-content">
                    <h2 class="shopheader-name"><?php  echo $title;?></h2>
                    <div class="shopheader-activities">
                        <ul>
                            <li>
                                <div class="activity-wrap nowrap">
                                    <span class="activity-description">

                            <?php  if(!empty($item['announce'])) { ?>

                            公告：<?php  echo $item['announce'];?>

                            <?php  } ?>

                            </span>
                                </div>
                            </li>
                        </ul>
                        <div class="shopheader-activity-count" onclick="SetCollection();">
                            <i class="i-favorite"></i><?php  if(empty($collection)) { ?>收藏<?php  } else { ?>已收藏<?php  } ?>
                        </div>
                    </div>
                </div>
            </div>
            <?php  if($newlimitprice || $oldlimitprice) { ?>
            <div class="shopheader-notice">
                <?php  if($newlimitprice) { ?>
                <i>新</i>
                <span><?php  echo $newlimitprice;?></span> <?php  } ?> <?php  if(!$newlimitprice) { ?>
                <i>减</i>
                <span><?php  echo $oldlimitprice;?></span> <?php  } ?>
            </div>
            <?php  } else { ?>
            <div class="shopheader-notice">
                <i>注</i>
                <span>用餐高峰期请提前下单!</span>
            </div>
            <?php  } ?>
        </div>
        <div class="vue-wrapper">
            <div class="shopheader">
                <h2><?php  echo $title;?></h2>
                <!--<h2><i class="i-star i-star-gold"></i>-->
                <!--<i class="i-star i-star-gold"></i>-->
                <!--<i class="i-star i-star-gold"></i>-->
                <!--<i class="i-star i-star-gray">-->
                <!--<i class="i-star i-star-gold"></i>-->
                <!--</i>-->
                <!--<i class="i-star i-star-gray"></i>-->
                <!--</h2>-->
                <?php  if($newlimitprice || $oldlimitprice) { ?>
                <h3><span>优惠信息</span></h3>
                <ul>
                    <?php  if($newlimitprice) { ?>
                    <li>
                        <i class="icon-bg1">新</i><span><?php  echo $newlimitprice;?></span>
                    </li>
                    <?php  } ?> <?php  if($oldlimitprice) { ?>
                    <li>
                        <i class="icon-bg2">减</i><span><?php  echo $oldlimitprice;?></span>
                    </li>
                    <?php  } ?>
                    <!--<li>-->
                    <!--<i class="icon-bg3">特</i><span>新用户下单立减20.0元(不与其它活动同享)</span>-->
                    <!--</li>-->
                    <!--<li>-->
                    <!--<i class="icon-bg4">惠</i><span>新用户下单立减20.0元(不与其它活动同享)</span>-->
                    <!--</li>-->
                </ul>
                <?php  } ?>
                <div class="shop-bot">
                    <h3><span>商家公告</span></h3>
                </div>
                <?php  if(!empty($item['announce'])) { ?>
                <div class="des">
                    <?php  echo $item['announce'];?>
                </div>
                <?php  } ?>
                <div class="des">送餐时间： <?php  echo $item['begintime'];?>~<?php  echo $item['endtime'];?> <?php  if(!empty($item['begintime1'])) { ?>,<?php  echo $item['begintime1'];?>~<?php  echo $item['endtime1'];?><?php  } ?> <?php  if(!empty($item['begintime2'])) { ?>,<?php  echo $item['begintime2'];?>~<?php  echo $item['endtime2'];?><?php  } ?>
                </div>
            </div>
            <div class="shop-close">
                <a href="javascript:void(0);">关闭</a>
            </div>
        </div>
        <div id="menu-tabs-container">
            <div class="j-menu-tabs menu-tabs">
                <a href="javascript:void(0);" class="selected tab3" style="width:50%">

                <span>商家</span>

            </a>
                <a class="tab2" href="<?php  echo $this->createMobileUrl('allfeedback', array('storeid' => $item['id']), true)?>" style="width:50%">

                <span>评价</span>

            </a>
            </div>
        </div>
    </div>
    <div class="main-tab2" style=" margin-top:181px; display:none">
        <div class="j-inner-content">
            <div class="cmt-detail-info">
                <div class="cmt-detail-info-left-cell">
                    <div class="cmt-detail-info-data">
                        <span class="cmt-detail-info-receive">4.6</span>
                    </div>
                    <div class="cmt-detail-info-desc">总体评价</div>
                    <div class="cmt-detail-info-good">商家好评率为75%</div>
                </div>
                <div class="cmt-detail-separate"></div>
                <div class="cmt-detail-info-right-cell">
                    <div class="cmt-detail-info-stars">
                        <div class="cmt-detail-info-desc">配送评分</div>
                        <div class="appr-status">
                            <i class="appr-score"></i>
                            <i class="appr-score"></i>
                            <i class="appr-score"></i>
                            <i class="appr-score"></i>
                            <i class="appr-score appr-score-half"></i>
                        </div>
                        <div class="cmt-detail-info-receive">4.8</div>
                    </div>
                    <div class="cmt-detail-info-stars">
                        <div class="cmt-detail-info-desc">商家评分</div>
                        <div class="appr-status">
                            <i class="appr-score"></i>
                            <i class="appr-score"></i>
                            <i class="appr-score"></i>
                            <i class="appr-score"></i>
                            <i class="appr-score appr-score-half"></i>
                        </div>
                        <div class="cmt-detail-info-receive">4.6</div>
                    </div>
                </div>
            </div>
            <div id="cmt-types" class="cmt-types">
                <span class="selected">全部 (20264)</span>
                <span>有图评价 (89)</span>
                <span>好评 (17615)</span>
                <span>中评 (1610)</span>
                <span>差评 (1039)</span>
                <span>追评 (9)</span>
                <span>味道赞 (722)</span>
                <span>份量足 (566)</span>
                <span>送货快 (758)</span>
                <span>准时送达 (705)</span>
                <span>口味一般 (90)</span>
                <span>配送慢 (128)</span>
            </div>
            <div class="evaluates-console">
                <div class="evaluates-console-left">
                    <input id="checkbox-evaluates-hascontent" class="checkbox-evaluates-hascontent" checked="" type="checkbox">
                    <label for="checkbox-evaluates-hascontent">只看有内容的评论</label>
                </div>
            </div>
            <div id="evaluates-field" class="evaluates-field">
                <div id="evaluate-list" class="evaluate-list">
                    <li class="evaluate-item">
                        <div class="evaluate-sub clearfix">
                            <div class="evaluate-sub-left">
                                <img class="evaluate-user-pic" src="../image/refreshing_image_02.png">
                            </div>
                            <div class="evaluate-sub-right">
                                <div class="evaluate-sub clearfix">
                                    <span class="evaluate-name">chen1848</span>
                                    <span class="evaluate-time">2016.12.26</span>
                                </div>
                                <div class="evaluate-stars clearfix">
                                    <div class="appr-status">
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score appr-score-half"></i>
                                    </div>
                                    <span class="evaluate-ship-time">43分钟送达</span>
                                </div>
                                <div class="evaluate-comment clearfix">
                                    菜和饭都是满满的一盒！份量很足，真的是物美价廉，美团上少有的良心商家！以后就你家买饭了，就是饭和带鱼稍硬了点，再软点就更好了！
                                </div>
                                <div class="evaluate-comment-pics clearfix">
                                    <div class="comment-pics" style="background:url(../image/goods-1.jpg) center no-repeat;background-size: cover;"></div>
                                </div>
                                <div class="comment-bottom clearfix">
                                    <div class="comment-favor-icon"></div>
                                    <span class="comment-favor-text">红烧带鱼饭</span>
                                </div>
                                <div class="comment-bottom clearfix">
                                    <div class="comment-tag-icon"></div>
                                    <span class="comment-tag-text">食材新鲜 ,</span>
                                    <span class="comment-tag-text">包装精美 ,</span>
                                    <span class="comment-tag-text">份量足 ,</span>
                                    <span class="comment-tag-text">物美价廉 ,</span>
                                    <span class="comment-tag-text">准时送达 </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="evaluate-item">
                        <div class="evaluate-sub clearfix">
                            <div class="evaluate-sub-left">
                                <img class="evaluate-user-pic" src="../image/refreshing_image_02.png">
                            </div>
                            <div class="evaluate-sub-right">
                                <div class="evaluate-sub clearfix">
                                    <span class="evaluate-name">chen1848</span>
                                    <span class="evaluate-time">2016.12.26</span>
                                </div>
                                <div class="evaluate-stars clearfix">
                                    <div class="appr-status">
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score appr-score-half"></i>
                                    </div>
                                    <span class="evaluate-ship-time">43分钟送达</span>
                                </div>
                                <div class="evaluate-comment clearfix">
                                    菜和饭都是满满的一盒！份量很足，真的是物美价廉，美团上少有的良心商家！以后就你家买饭了，就是饭和带鱼稍硬了点，再软点就更好了！
                                </div>
                                <div class="evaluate-comment-pics clearfix">
                                    <div class="comment-pics" style="background:url(../image/goods-1.jpg) center no-repeat;background-size: cover;"></div>
                                </div>
                                <div class="comment-bottom clearfix">
                                    <div class="comment-favor-icon"></div>
                                    <span class="comment-favor-text">红烧带鱼饭</span>
                                </div>
                                <div class="comment-bottom clearfix">
                                    <div class="comment-tag-icon"></div>
                                    <span class="comment-tag-text">食材新鲜 ,</span>
                                    <span class="comment-tag-text">包装精美 ,</span>
                                    <span class="comment-tag-text">份量足 ,</span>
                                    <span class="comment-tag-text">物美价廉 ,</span>
                                    <span class="comment-tag-text">准时送达 </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="evaluate-item">
                        <div class="evaluate-sub clearfix">
                            <div class="evaluate-sub-left">
                                <img class="evaluate-user-pic" src="../image/refreshing_image_02.png">
                            </div>
                            <div class="evaluate-sub-right">
                                <div class="evaluate-sub clearfix">
                                    <span class="evaluate-name">chen1848</span>
                                    <span class="evaluate-time">2016.12.26</span>
                                </div>
                                <div class="evaluate-stars clearfix">
                                    <div class="appr-status">
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score"></i>
                                        <i class="appr-score appr-score-half"></i>
                                    </div>
                                    <span class="evaluate-ship-time">43分钟送达</span>
                                </div>
                                <div class="evaluate-comment clearfix">
                                    菜和饭都是满满的一盒！份量很足，真的是物美价廉，美团上少有的良心商家！以后就你家买饭了，就是饭和带鱼稍硬了点，再软点就更好了！
                                </div>
                                <div class="evaluate-comment-pics clearfix">
                                    <div class="comment-pics" style="background:url(../image/goods-1.jpg) center no-repeat;background-size: cover;"></div>
                                </div>
                                <div class="comment-bottom clearfix">
                                    <div class="comment-favor-icon"></div>
                                    <span class="comment-favor-text">红烧带鱼饭</span>
                                </div>
                                <div class="comment-bottom clearfix">
                                    <div class="comment-tag-icon"></div>
                                    <span class="comment-tag-text">食材新鲜 ,</span>
                                    <span class="comment-tag-text">包装精美 ,</span>
                                    <span class="comment-tag-text">份量足 ,</span>
                                    <span class="comment-tag-text">物美价廉 ,</span>
                                    <span class="comment-tag-text">准时送达 </span>
                                </div>
                            </div>
                        </div>
                    </li>
                    <div class="field-load">
                        <div class="field-load-loading">正在努力加载中…</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--tab3开始-->
    <div class="main-tab3" style="margin-top:30px;overflow: scroll;height: 100%;overflow-y:scroll;-webkit-overflow-scrolling:touch;">
        <?php  if(!empty($item['thumbs'])) { ?>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <?php  if(is_array($item['thumbs'])) { foreach($item['thumbs'] as $slide) { ?>
                <div class="swiper-slide">
                    <a href="<?php  if(empty($slide['url'])) { ?>#<?php  } else { ?><?php  echo $slide['url'];?><?php  } ?>" style="width:100%;">

                    <img src="<?php  echo tomedia($slide['image'])?>" onerror="this.src='<?php echo RES;?>/themes/images/nopic.jpeg'" width="100%"/>

                </a>
                </div>
                <?php  } } ?>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <?php  } ?>
        <div class="detail-region" <?php  if(!empty($item[ 'thumbs'])) { ?>style="margin-top: 5px;" <?php  } ?>>
            <div class="detail-favor">
                <div class="discountitem">
                    <?php  if($item['is_reservation']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_reservation']!=1) { ?>inavailable<?php  } ?>">
                        <a href="<?php  if($item['is_reservation']!=1) { ?>#<?php  } else { ?><?php  echo $this->createMobileUrl('reservationIndex', array('storeid' => $item['id'], 'mode' => 3), true)?><?php  } ?>">
                            <div class="icon2 red ng-scope" style="background-image: url('http://www.dianlema.net/attachment/weisrcdish/icon_Reserve.png');"><i class="icon"></i></div>
                            <div class="text ng-binding"><?php  echo $item['btn_reservation'];?></div>
                        </a>
                    </div>
                    <?php  } ?> <?php  if($item['is_meal']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_meal']!=1) { ?>inavailable<?php  } ?> btn-eat-room">
                        <a href="#">
                            <div class="icon2 red ng-scope" style="background-image: url('http://www.dianlema.net/attachment/weisrcdish/icon_store.png');"><i class="icon"></i>
                            </div>
                            <div class="text ng-binding"><?php  echo $item['btn_eat'];?></div>
                        </a>
                    </div>
                    <?php  } ?> <?php  if($item['is_delivery']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_delivery']!=1) { ?>inavailable<?php  } ?>">
                        <a href="<?php  if($item['is_delivery']!=1) { ?>#<?php  } else { ?><?php  echo $this->createMobileUrl('waplist', array('storeid' => $item['id'], 'mode' => 2), true)?><?php  } ?>">
                            <div class="icon2 red ng-scope"  style="background-image: url('http://www.dianlema.net/attachment/weisrcdish/icon_food.png');"><i class="icon"></i></div>
                            <div class="text ng-binding"><?php  echo $item['btn_delivery'];?></div>
                        </a>
                    </div>
                    <?php  } ?> <?php  if($item['is_snack']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_snack']!=1) { ?>inavailable<?php  } ?>">
                        <a href="<?php  if($item['is_snack']!=1) { ?>#<?php  } else { ?><?php  echo $this->createMobileUrl('waplist', array('storeid' => $item['id'], 'mode' => 4), true)?><?php  } ?>">
                            <div class="icon2 red ng-scope" style="background-image: url('http://www.dianlema.net/attachment/weisrcdish/icon_drink.png');"><i class="icon"></i></div>
                            <div class="text ng-binding"><?php  echo $item['btn_snack'];?></div>
                        </a>
                    </div>
                    <?php  } ?> <?php  if($item['is_queue']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_queue']!=1) { ?>inavailable<?php  } ?>">
                        <a href="<?php  if($item['is_queue']!=1) { ?>#<?php  } else { ?><?php  echo $this->createMobileUrl('queue', array('storeid' => $item['id']), true)?><?php  } ?>">
                            <div class="icon2 red ng-scope" style="background-image: url('http://www.dianlema.net/attachment/weisrcdish/icon_wait.png');"><i class="icon"></i></div>
                            <div class="text ng-binding"><?php  echo $item['btn_queue'];?></div>
                        </a>
                    </div>
                    <?php  } ?> <?php  if($item['is_savewine']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_savewine']!=1) { ?>inavailable<?php  } ?>">
                        <a href="<?php  if($item['is_savewine']!=1) { ?>#<?php  } else { ?><?php  echo $this->createMobileUrl('savewineform', array('storeid' => $item['id']), true)?><?php  } ?>">
                            <div class="icon2 red ng-scope" style="background-image: url('http://www.dianlema.net/attachment/weisrcdish/icon_wine.png');"><i class="icon"></i></div>
                            <div class="text ng-binding"><?php  echo $item['btn_intelligent'];?></div>
                        </a>
                    </div>
                    <?php  } ?> <?php  if($item['is_shouyin']==1) { ?>
                    <div class="operation-nav-item ng-scope <?php  if($item['is_shouyin']!=1) { ?>inavailable<?php  } ?>">
                        <a href="<?php  if($item['is_shouyin']!=1) { ?>#<?php  } else { ?><?php  echo $this->createMobileUrl('payform', array('storeid' => $item['id']), true)?><?php  } ?>">
                            <div class="icon2 red ng-scope"><i class="icon icon-shouyin"></i></div>
                            <div class="text ng-binding"><?php  echo $item['btn_shouyin'];?></div>
                        </a>
                    </div>
                    <?php  } ?>
                </div>
            </div>
        </div>
        <?php  if(!empty($item['coupon_title1']) || !empty($item['coupon_title2']) || !empty($item['coupon_title3'])) { ?>
        <div class="detail-region">
            <div class="detail-favor">
                <?php  if(!empty($item['coupon_title1'])) { ?> <?php  $url = $item['coupon_link1']?>
                <div class="discountitem" onclick="javascript:window.location.href='<?php  echo $url;?>'">
                    <i class="list-icon">

                    <img class="fav-icon-img i-x15" src="<?php  echo $this->cur_mobile_path?>/image/ic_global_list_lable_voucher.png">

                </i>
                    <p class="list-contect"><?php  echo $item['coupon_title1'];?></p>
                </div>
                <?php  } ?> <?php  if(!empty($item['coupon_title2'])) { ?> <?php  $url = $item['coupon_link2']?>
                <div class="discountitem" onclick="javascript:window.location.href='<?php  echo $url;?>'">
                    <i class="list-icon">

                    <img class="fav-icon-img i-x15" src="<?php  echo $this->cur_mobile_path?>/image/ic_global_list_lable_voucher.png">

                </i>
                    <p class="list-contect"><?php  echo $item['coupon_title2'];?></p>
                </div>
                <?php  } ?> <?php  if(!empty($item['coupon_title3'])) { ?> <?php  $url = $item['coupon_link3']?>
                <div class="discountitem" onclick="javascript:window.location.href='<?php  echo $url;?>'">
                    <i class="list-icon">

                    <img class="fav-icon-img i-x15" src="<?php  echo $this->cur_mobile_path?>/image/ic_global_list_lable_voucher.png">

                </i>
                    <p class="list-contect"><?php  echo $item['coupon_title3'];?></p>
                </div>
                <?php  } ?>
            </div>
        </div>
        <?php  } ?>
        <div class="detail-region" style="">
            <div class="detail-content">
                <div class="detail-phone" style="height:52px;padding-right:15px;">
					<span class="rest-txt">联系电话：</span>
                    <p> <a href="tel:<?php  echo $item['tel'];?>" style="float:right;width:200px;text-align:right;"><?php  echo $item['tel'];?> <img  src="http://www.dianlema.net/attachment/weisrcdish/btn_go1.png"></a>
                    </p>
                </div>
                <div class="detail-address" style="height:52px;">
        
                    <span class="rest-txt">商家地址：</span>
                    <p><a href="http://api.map.baidu.com/marker?location=<?php  echo $item['lat'];?>,<?php  echo $item['lng'];?>&title=<?php  echo $item['title'];?>&content=<?php  echo $item['address'];?>&output=html&src=wzj|wzj" style="float:right;width:200px;text-align:right;"><?php  echo $item['address'];?> <img  src="http://www.dianlema.net/attachment/weisrcdish/btn_go1.png"></a>
                    </p>
                </div>
            </div>
        </div>
        <div class="detail-region" style="">
            <div class="detail-content">
                <div class="detail-time" style="height:52px;">
             
                    <span class="rest-txt">营业时间：</span>
                    <p>
                        <?php  echo $item['begintime'];?>~<?php  echo $item['endtime'];?> <?php  if(!empty($item['begintime1'])) { ?>,<?php  echo $item['begintime1'];?>~<?php  echo $item['endtime1'];?><?php  } ?> <?php  if(!empty($item['begintime2'])) { ?>,<?php  echo $item['begintime2'];?>~<?php  echo $item['endtime2'];?><?php  } ?>
                    </p>
                </div>
                <?php  if($item['is_delivery']==1) { ?>
                <div class="detail-service" style="height:80px;">
         
                    <span class="rest-txt">配送服务：</span>
                    <p style="float:right">
                       提供高品质送餐服务
                    </p>
                    <p style="float:right">
						<span class="mt-delivery-tag">专业配送</span>
                        <span class="mt-delivery-tag">送货快</span>
                        <span class="mt-delivery-tag">准时到</span>
                    </p>
                </div>
                <?php  } ?>
            </div>
        </div>
        <div class="detail-region" style="">
            <div class="detail-favor">
                <?php  if($is_online_pay==1) { ?>
                <div class="discountitem">
                    <i class="list-icon">

                    <img class="fav-icon-img i-x15" src="<?php  echo $this->cur_mobile_path?>/image/pay.png">

                </i>
                    <p class="list-contect">该商家支持在线支付</p>
                </div>
                <?php  } ?>
                <!--<div class="discountitem">-->
                <!--<i class="list-icon">-->
                <!--<img class="fav-icon-img i-x15" src="<?php  echo $this->cur_mobile_path?>/image/fan.png">-->
                <!--</i>-->
                <!--<p class="list-contect">满20返5元现金</p>-->
                <!--</div>-->
                <?php  if($item['freeprice']!=0.00) { ?>
                <div class="discountitem">
                    <i class="list-icon">

                    <img class="fav-icon-img i-x15" src="<?php  echo $this->cur_mobile_path?>/image/ic_global_list_lable_favour.png">

                </i>
                    <p class="list-contect">消费满<?php  echo $item['freeprice'];?>免配送费用</p>
                </div>
                <?php  } ?>
            </div>
        </div>
        <div class="detail-qualification" style="">
            <div class="qualification"><a href="#">查看店铺</a></div>
        </div>
        <div class="detail-photo">
            <div class="photo-header">店铺信息</div>
            <div class="bnrs-wrap">
                <div id="bnrs" class="bnrs" style="width:100%; padding:10px;">
                    <?php  echo htmlspecialchars_decode($item['content'])?>
                </div>
            </div>
        </div>
        <div style="height:250px;"></div>
    </div>
    <div class="top-btn" style="display: block;">
        <a class="react">

        <i class="text-icon">⇧</i>

    </a>
    </div>
    

    <script>
    $(function() {

        $('.shopheader-notice, .shopheader-logo, .shopheader-name, .activity-wrap').click(function(e) {

            $('.vue-wrapper').css({ "display": "block" })

            $('.vue-wrapper').animate({ "left": "0" }, 300)

        });



        $('.shop-close a').click(function(e) {

            $('.vue-wrapper').animate({ "left": "100%" }, 300)

            var timer = setTimeout("close()", 350)

        });

    });

    function close() {

        $('.vue-wrapper').css({ "display": "none" })

    }
    </script>
    <script>
    $(function() {

        $('.qualification').click(function() {

            $('.detail-photo').css({ "display": "block" });

            $('.detail-region').css({ "display": "none" })

            $('.detail-qualification').css({ "display": "none" })

            $('.main-tab3').css({ "margin-top": "170px" })

        });

        $('.photo-header').click(function() {

            $('.detail-photo').css({ "display": "none" });

            $('.detail-region').css({ "display": "block" })

            $('.detail-qualification').css({ "display": "block" })

            $('.main-tab3').css({ "margin-top": "170px" })

        });





        //        $('.menu-tabs .tab2').click(function(){

        //            $('.menu-tabs a').removeClass('selected')

        //            $(this).addClass('selected')

        //            $('.main-tab2').css({"display":"block"});

        //            $('.main-tab3').css({"display":"none"});

        //            $('.asidewrap').css({"display":"none"});

        //            $('.mainwrap').css({"display":"none"});

        //            $('.cart').css({"display":"none"});

        //        });

        //

        //        $('.menu-tabs .tab1').click(function(){

        //            $('.menu-tabs a').removeClass('selected')

        //            $(this).addClass('selected')

        //            $('.main-tab2').css({"display":"none"});

        //            $('.main-tab3').css({"display":"none"});

        //            $('.asidewrap').css({"display":"block"});

        //            $('.mainwrap').css({"display":"block"});

        //            $('.cart').css({"display":"block"});

        //        });

        //

        //        $('.menu-tabs .tab3').click(function(){

        //            $('.menu-tabs a').removeClass('selected')

        //            $(this).addClass('selected')

        //            $('.main-tab2').css({"display":"none"});

        //            $('.main-tab3').css({"display":"block"});

        //            $('.asidewrap').css({"display":"none"});

        //            $('.mainwrap').css({"display":"none"});

        //            $('.cart').css({"display":"none"});

        //        });



    });
    </script>
    <script>
    //top行为

    $('.top-btn').on('click', function() {

        $("html, body").animate({ scrollTop: 0 }, "slow");

    });

    if ($(document).scrollTop() == 0) {

        $('.top-btn').css('display', 'none');

    }

    $(document).bind('scroll', function() {

        if ($(document).scrollTop() == 0) {

            $('.top-btn').css('display', 'none');

        } else {

            $('.top-btn').css('display', 'block');

        }

    })





    $('.btn-eat-room').click(function() {

        //        if (confirm('请对准桌子上的二维码进行扫描')) {

        wx.scanQRCode({

            needResult: 1, // 默认为0，扫描结果由微信处理，1则直接返回扫描结果，

            scanType: ["qrCode", "barCode"], // 可以指定扫二维码还是一维码，默认二者都有

            success: function(res) {

                var result = res.resultStr; // 当needResult 为 1 时，扫码返回的结果

                location.href = result;

            }

        });

        //        }

    });
    </script>
    <script>
    $(function() {

        $(".linkKeFu").click(function() {

            $(".gray2").show();

            $(".gray2").css("height", $(document).height());

            $(".link-KF").css("top", $(window).height() / 2 - 178);

            $(".link-KF").show();

        });

        $(".gray2,.con-ma").click(function() {

            $(".link-KF").hide();

            $(".gray2").hide();

        });

    });
    </script>
    <script src="<?php  echo $this->cur_mobile_path?>/script/fakeLoader.min.js"></script>
    <!--<script type="text/javascript">-->
    <!--$(document).ready(function(){-->
    <!--$(".fakeloader").fakeLoader({-->
    <!--timeToHide:1200,-->
    <!--bgColor:"#1abc9c",-->
    <!--spinner:"spinner6"-->
    <!--});-->
    <!--});-->
    <!--</script>    -->
    <link href="<?php echo RES;?>/swiper/css/swiper.min.css" rel="stylesheet">
    <script src="<?php echo RES;?>/swiper/js/swiper.min.js"></script>
    <script>
    var swiper = new Swiper('.swiper-container', {

        pagination: '.swiper-pagination',

        loop: true,

        autoplay: 2500,

        paginationClickable: true

    });
    </script>
    <?php  echo register_jssdk(false);?>
    <script>
    wx.ready(function() {

        sharedata = {

            title: '<?php  echo $share_title;?>',

            desc: '<?php  echo $share_desc;?>',

            link: '<?php  echo $share_url;?>',

            imgUrl: '<?php  echo $share_image;?>',

            success: function() {

                //alert('感谢分享');

            },

            cancel: function() {

                //alert('cancel');

            }

        };

        wx.onMenuShareAppMessage(sharedata);

        wx.onMenuShareTimeline(sharedata);

    });
    </script>
    <?php  include $this->template($this->cur_tpl.'/_statistics');?>
</body>

</html>