<?php defined('IN_IA') or exit('Access Denied');?><html ng-app="diandanbao" class="ng-scope">
<head>
    <style type="text/css">@charset "UTF-8";
    [ng\:cloak], [ng-cloak], [data-ng-cloak], [x-ng-cloak], .ng-cloak, .x-ng-cloak, .ng-hide:not(.ng-hide-animate) {
        display: none !important;
    }

    ng\:form {
        display: block;
    }</style>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta content="telephone=no" name="format-detection">
    <title>预订订单</title>
    <link data-turbolinks-track="true" href="<?php echo RES;?>/mobile/<?php  echo $this->cur_tpl?>/assets/diandanbao/weixin.css" media="all" rel="stylesheet">
    <script src="<?php echo RES;?>/mobile/<?php  echo $this->cur_tpl?>/assets/diandanbao/jquery-1.11.3.min.js"></script>
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
<!-- ngView:  -->
<div style="height: 100%;" class="ng-scope">
    <div id="new-order-checkout-page" class="ng-scope">
        <div class="ddb-nav-header" common-header="">
            <div class="nav-left-item" onclick="location.href='<?php  echo $this->createMobileUrl('reservationIndex', array('storeid' => $storeid, 'mode' => 3), true)?>'"><i class="fa fa-angle-left"></i></div>
            <div class="header-title ng-binding">预订订单</div>
        </div>
        <div class="ddb-nav-footer orders-common-footer">
            <div class="button checkout-button right" id="btnselect">确认提交</div>
            <div class="quantity-total ng-binding" style="border:0px;width:0px;"></div>
            <div class="total-amount red ng-binding">
                ￥<?php  if($rtype == 1) { ?><?php  echo $tablezones['reservation_price'];?><?php  } else { ?><?php  echo $totalprice;?><?php  } ?>
            </div>
            <span ng-show="prepayment_type == 'prepay_for_order'" class="ng-binding ng-hide"> 预付 100% </span>
        </div>
        <div id="new-reservation-order-form" class="main-view">
            <div class="section">
            </div>
            <div class="space-8"></div>
            <div class="section">
                <div class="list-item branch-name ng-binding"><?php  echo $store['title'];?></div>
                <div class="list-item">
                    <span class="table-zone ng-binding"><?php  echo $tablezones['title'];?></span>
                    <span class="reservation-time ng-binding"><?php  echo $reservation_time;?></span>
                </div>
                <div class="list-item">
                    <div class="prepayment-type <?php  if($rtype==1) { ?>active<?php  } ?>" onclick="window.location.href = '<?php  echo $url1;?>';">
                        <div class="price ng-binding">预付￥<?php  echo $tablezones['reservation_price'];?></div>
                        <div class="label">只订座</div>
                        <div class="radio"></div>
                    </div>
                    <?php  if($store['is_reservation_dish']) { ?>
                    <div class="prepayment-type <?php  if($rtype==2) { ?>active<?php  } ?>" onclick="window.location.href = '<?php  echo $url2;?>';">
                        <div class="price ng-binding">
                            ￥<?php  echo $tablezones['limit_price'];?> 起订
                        </div>
                        <div class="label">提前下单</div>
                        <div class="radio"></div>
                    </div>
                    <?php  } ?>
                </div>
                <div class="list-item ddb-form-control">
                    <div class="ddb-form-label">包厢/桌号</div>
                    <select class="ng-valid ng-scope ng-dirty ng-valid-parse ng-touched" name="tables" id="tables">
                        <option value="" selected="selected">请选择桌号</option>
                        <?php  if(is_array($tables)) { foreach($tables as $item) { ?>
                        <option value="<?php  echo $item['id'];?>"><?php  echo $item['title'];?></option>
                        <?php  } } ?>
                    </select>
                </div>

                <?php  if($is_auto_address==1) { ?>
                <div class="list-item ddb-form-control">
                    <div class="ddb-form-label">姓名</div>
                    <div class="input-field">
                        <input type="text" class="ddb-form-input ng-pristine ng-untouched ng-valid" placeholder="输入您的姓名" value="<?php  echo $user['username'];?>" name="username" id="username">
                    </div>
                </div>
                <div class="list-item ddb-form-control">
                    <div class="ddb-form-label">电话</div>
                    <div class="input-field">
                        <input type="text" class="ddb-form-input ng-pristine ng-untouched ng-valid" placeholder="输入您的联系电话" value="<?php  echo $user['mobile'];?>" name="mobile" id="mobile">
                    </div>
                </div>
                <?php  } else { ?>
                <div class="list-item ddb-form-control">
                    <div class="ddb-form-label">联系方式:</div>
                    <div class="input-field">
                        <div class="item-input input-address" style="padding-right:10px; line-height:30px">
                            <?php  if(empty($useraddress)) { ?>
                            <a href="<?php  echo $this->createMobileUrl('useraddress', array('storeid' => $storeid, 'mode' => $mode, 'op' => 'display', 'selectdate' => $select_date, 'timeid' => $timeid, 'rtype' => $rtype), true)?>">点击添加您的联系方式</a>
                            <?php  } else { ?>
                            <?php  echo $useraddress['realname'];?> <?php  echo $useraddress['mobile'];?>
                            <?php  } ?>
                            <a href="<?php  echo $this->createMobileUrl('useraddress', array('storeid' => $storeid, 'mode' => $mode, 'op' => 'display', 'selectdate' => $select_date, 'timeid' => $timeid, 'rtype' => $rtype), true)?>" style="float:right; line-height:30px;margin-top: 5px;">
                                <img src="<?php  echo $this->cur_mobile_path?>/image/edit.png" width="20px"/>
                            </a>
                        </div>
                    </div>
                </div>
                <?php  } ?>
                <!--<div class="list-item ddb-form-control">-->
                    <!--<div class="ddb-form-label">电话</div>-->
                    <!--<div class="input-field">-->
                        <!--<input type="text" class="ddb-form-input ng-pristine ng-untouched ng-valid" placeholder="输入您的联系电话" value="<?php  echo $user['mobile'];?>" name="mobile" id="mobile">-->
                    <!--</div>-->
                <!--</div>-->
            </div>
            <div class="space-8"></div>
            <div class="section ng-scope">
                <div class="list-item ddb-form-control">
                    <textarea placeholder="<?php  if(empty($store['reservation_tip'])) { ?>请输入备注，人数口味等等（可不填）<?php  } else { ?><?php  echo $store['reservation_tip'];?><?php  } ?>" class="ng-pristine ng-untouched ng-valid" name="remark" id="remark"></textarea>
                </div>
            </div>
            <div class="space-8"></div>
        </div>
    </div>
</div>
<input type="hidden" id="select_date" name="select_date" value="<?php  echo $reservation_time;?>">
<input type="hidden" id="mode" name="mode" value="3">
<input type="hidden" id="rtype" name="rtype" value="<?php  echo $rtype;?>">
<input type="hidden" id="tablezonesid" name="tablezonesid" value="<?php  echo $tablezones['id'];?>">
<input type="hidden" id="totalprice" name="totalprice" value="<?php  if($rtype == 1) { ?><?php  echo $tablezones['reservation_price'];?><?php  } else { ?><?php  echo $totalprice;?><?php  } ?>">
<script src="<?php echo RES;?>/mobile/<?php  echo $this->cur_tpl?>/assets/diandanbao/jquery-1.11.3.min.js"></script>
<script>
    $("#btnselect").click(function () {
        var bool = checkItem();
        if (bool) {
            postmain();
        }
    });

    function checkItem() {
        "<?php  if($is_auto_address==1) { ?>"
        if ($("#tel").val() == "" || $("#tel").val() == "(必填*)请输入您的手机号码") {
            alert("请输入您的电话号码！");
            return false;
        }
        if ($("#name").val() == "" || $("#name").val() == "(必填*)请输入您的真实姓名") {
            alert("请输入您的真实姓名！");
            return false;
        }
        "<?php  } ?>"
        totalprice = parseFloat($("#totalprice").val());
        var rtype = $("#rtype").val();
        if (rtype==2 && totalprice <= 0) {
            alert("金额为0，请选择菜品！");
            return false;
        }

        return true;
    }

    function postmain() {
        var ordertype = $("#mode").val();
        var select_date = $("#select_date").val();
        var rtype = $("#rtype").val();
        var tables = $("#tables").val();
        if (tables == "") {
            alert('请选择预定的桌台;');
            return false;
        }

        $("#btnselect").hide();
        if (true) {
            var existstatus = 0;
            var exsiturl = "<?php  echo $this->createMobileUrl('ExistReservationOrder', array('storeid' => $storeid), true)?>";
            $.ajax({
                url: exsiturl, type: "post", dataType: "json", timeout: "10000",
                data: {
                    "tables": tables,
                    "meal_time": select_date
                },
                success: function (data) {
                    if (data.status == 1) {
                        alert('该桌子已经被预订了！');
                        existstatus = 1;
                        $("#btnselect").show();
                        return false;
                    } else {
                        var url = "<?php  echo $this->createMobileUrl('addtoorder', array('storeid' => $storeid, 'from_user' => $from_user), true)?>";
                        var address = $("#address").val();
                        var totalprice = parseFloat($("#totalprice").val());
                        $.ajax({
                            url: url, type: "post", dataType: "json", timeout: "10000",
                            data: {
                                "type": "add",
                                "total": totalprice,
                                "ordertype": ordertype,
                                "tables": $("#tables").val(),
                                "username": $("#username").val(),
                                "tel": $("#mobile").val(),
                                "meal_time": select_date,
                                "rtype": rtype,
                                "tablezonesid":$("#tablezonesid").val(),
                                "remark": $("#remark").val(),
                                "address":address
                            },
                            success: function (data) {
                                if (data.message['code'] != 0) {
                                    var url = "<?php  echo $this->createMobileUrl('pay', array(), true)?>"+"&orderid="+data.message['orderid'];
                                    location.href = url;
                                } else {
                                    alert(data.message['msg']);
                                    //'网络不稳定，请重新尝试!'
                                }
                                $("#btnselect").show();
                            },error: function () {
                                alert("订单提交失败！");
                            }
                        });
                    }
                },error: function () {
                    alert("订单提交失败！");
                }
            });
        } else {
            $("#btnselect").show();
        }
    }
</script>
</body>
</html>