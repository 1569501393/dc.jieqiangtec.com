<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>

<script type="text/javascript" src="./resource/js/lib/qrcode2.js"></script>
<script type="text/javascript" src="./resource/js/lib/qrcode.js"></script>
<script type="text/javascript">

jQuery(function(){
	jQuery('#payqrcode').qrcode("<?php  echo $result['code_url'];?>");
})
</script>

<div class="row">
    <div class="col-xs-6 col-xs-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title">微信支付</h3>
            </div>
            <div class="panel-body">

                <?php  if($result['return_code'] != 'FAIL') { ?>
                <center>
                    <div id="payqrcode"></div>
                </center>
                <center><h3>请打开微信，扫一扫完成支付</h3></center>
                <center><p>支付金额：&yen;<?php  echo $money;?></p></center>
                <?php  } else { ?>
                <center><h3><?php  echo $result['return_msg'];?></h3></center>
                <?php  } ?>
            </div>
        </div>
    </div>
</div>

        

<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('member/common/footer', TEMPLATE_INCLUDEPATH)) : (include template('member/common/footer', TEMPLATE_INCLUDEPATH));?>