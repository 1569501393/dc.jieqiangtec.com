<?php defined('IN_IA') or exit('Access Denied');?><?php  $paycount = 0;?>
<div class="tab-pane" id="tab_paytype">
    <div class="panel-body">
        <?php  if($setting['delivery']==1 || $setting['alipay']==1 || $setting['credit']==1 || $setting['wechat']==1) { ?>
        <div class=" alert alert-warning">
            <?php  if($setting['wechat']==1) { ?>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">微信支付</label>
                <div class="col-sm-9">
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="wechat1" value="1" name="wechat" <?php  if($reply['wechat'] == 1) { ?>checked="true"<?php  } ?>>
                        <label for="wechat1"> 开启 </label>
                    </div>
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="wechat2" value="0" name="wechat" <?php  if(empty($reply) || $reply['wechat'] == 0) { ?>checked="true"<?php  } ?>>
                        <label for="wechat2"> 关闭 </label>
                    </div>
                    <span class="help-block"></span>
                </div>
            </div>
            <?php  $paycount++;?>
            <?php  } ?>
            <?php  if($setting['alipay']==1) { ?>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">支付宝</label>
                <div class="col-sm-9">
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="alipay1" value="1" name="alipay" <?php  if($reply['alipay'] ==1) { ?>checked="true"<?php  } ?>>
                        <label for="alipay1"> 开启 </label>
                    </div>
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="alipay2" value="0" name="alipay" <?php  if(empty($reply) || $reply['alipay'] ==0) { ?>checked="true"<?php  } ?>>
                        <label for="alipay2"> 关闭 </label>
                    </div>
                    <span class="help-block"></span>
                </div>
            </div>
            <?php  $paycount++;?>
            <?php  } ?>
            <?php  if($setting['credit']==1) { ?>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">余额支付</label>
                <div class="col-sm-9">
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="credit1" value="1" name="credit" <?php  if($reply['credit'] ==1) { ?>checked="true"<?php  } ?>>
                        <label for="credit1"> 开启 </label>
                    </div>
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="credit2" value="0" name="credit" <?php  if(empty($reply) || $reply['credit'] ==0) { ?>checked="true"<?php  } ?>>
                        <label for="credit2"> 关闭 </label>
                    </div>
                    <span class="help-block"></span>
                </div>
            </div>
            <?php  $paycount++;?>
            <?php  } ?>
            <?php  if($setting['delivery']==1) { ?>
            <div class="form-group">
                <label class="col-xs-12 col-sm-3 col-md-2 control-label">货到付款/餐后付款</label>
                <div class="col-sm-9">
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="delivery1" value="1" name="delivery" <?php  if($reply['delivery']==1) { ?>checked="true"<?php  } ?>>
                        <label for="delivery1"> 开启 </label>
                    </div>
                    <div class="radio radio-info radio-inline">
                        <input type="radio" id="delivery2" value="0" name="delivery" <?php  if(empty($reply) || $reply['delivery'] ==0) { ?>checked="true"<?php  } ?>>
                        <label for="delivery2"> 关闭 </label>
                    </div>
                    <span class="help-block"></span>
                </div>
            </div>
            <?php  $paycount++;?>
            <?php  } ?>
        </div>
        <?php  } ?>
        <?php  if($is_bm_payu) { ?>
        <div class=" alert alert-warning">
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否支持子商户</label>
            <div class="col-sm-9">
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_business1" value="1" name="is_business" <?php  if($reply['is_business'] == 1) { ?>checked="true"<?php  } ?> >
                    <label for="is_business1"> 开启 </label>
                </div>
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_business2" value="0" name="is_business"  <?php  if(empty($reply) || $reply['is_business'] == 0) { ?>checked="true"<?php  } ?> >
                    <label for="is_business2"> 关闭 </label>
                </div>
                <span class="help-block">需要装收银功能开启才有效果</span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">子商户链接ID</label>
            <div class="col-sm-9">
                <input type="text" name="business_id" class="form-control" value="<?php  echo $reply['business_id'];?>" />
            </div>
        </div>
        </div>
        <?php  $paycount++;?>
        <?php  } ?>
        <?php  if($is_bank_pay) { ?>
        <div class=" alert alert-warning">
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否支持银行支付</label>
            <div class="col-sm-9">
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_bank_pay1" value="1" name="is_bank_pay" <?php  if($reply['is_bank_pay'] ==1) { ?>checked="true"<?php  } ?> >
                    <label for="is_bank_pay1"> 开启 </label>
                </div>
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_bank_pay2" value="0" name="is_bank_pay"  <?php  if(empty($reply) || $reply['is_bank_pay'] == 0) { ?>checked="true"<?php  } ?> >
                    <label for="is_bank_pay2"> 关闭 </label>
                </div>
                <span class="help-block"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">(M)银行链接ID</label>
            <div class="col-sm-9">
                <input type="text" name="bank_pay_id" class="form-control" value="<?php  echo $reply['bank_pay_id'];?>" />
            </div>
        </div>
        </div>
        <?php  $paycount++;?>
        <?php  } ?>
        <?php  if($is_vtiny_bankpay) { ?>
        <div class=" alert alert-warning">
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否支持快捷云支付</label>
            <div class="col-sm-9">
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_vtiny_bankpay1" value="1" name="is_vtiny_bankpay" <?php  if($reply['is_vtiny_bankpay']==1) { ?>checked="true"<?php  } ?> >
                    <label for="is_vtiny_bankpay1"> 开启 </label>
                </div>
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_vtiny_bankpay2" value="0" name="is_vtiny_bankpay"  <?php  if(empty($reply) || $reply['is_vtiny_bankpay'] == 0) { ?>checked="true"<?php  } ?> >
                    <label for="is_vtiny_bankpay2"> 关闭 </label>
                </div>
                <span class="help-block"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">(V)快捷云支付链接</label>
            <div class="col-sm-9">
                <input type="text" name="vtiny_bankpay_url" class="form-control" value="<?php  echo $reply['vtiny_bankpay_url'];?>" />
            </div>
        </div>
        </div>
        <?php  $paycount++;?>
        <?php  } ?>
        <?php  if($is_ld_wxserver) { ?>
        <div class=" alert alert-warning">
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">是否支持一码付服务商版</label>
            <div class="col-sm-9">
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_ld_wxserver1" value="1" name="is_ld_wxserver" <?php  if($reply['is_ld_wxserver']==1) { ?>checked="true"<?php  } ?> >
                    <label for="is_ld_wxserver1"> 开启 </label>
                </div>
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_ld_wxserver2" value="0" name="is_ld_wxserver"  <?php  if(empty($reply) || $reply['is_ld_wxserver'] == 0) { ?>checked="true"<?php  } ?> >
                    <label for="is_ld_wxserver2"> 关闭 </label>
                </div>
                <span class="help-block"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">0度一码付链接</label>
            <div class="col-sm-9">
                <input type="text" name="ld_wxserver_url" class="form-control" value="<?php  echo $reply['ld_wxserver_url'];?>" />
            </div>
        </div>
        </div>
        <?php  $paycount++;?>
        <?php  } ?>
        <?php  if($config['is_jueqi'] == 1) { ?>
        <div class=" alert alert-warning">
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if($_W['isfounder']) { ?>一码付(崛企)<?php  } else { ?>一码付<?php  } ?></label>
            <div class="col-sm-9">
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_jueqi_ymf1" value="1" name="is_jueqi_ymf" <?php  if($reply['is_jueqi_ymf']==1) { ?>checked="true"<?php  } ?> >
                    <label for="is_jueqi_ymf1"> 开启 </label>
                </div>
                <div class="radio radio-info radio-inline">
                    <input type="radio" id="is_jueqi_ymf2" value="0" name="is_jueqi_ymf"  <?php  if(empty($reply) || $reply['is_jueqi_ymf'] == 0) { ?>checked="true"<?php  } ?> >
                    <label for="is_jueqi_ymf2"> 关闭 </label>
                </div>
                <span class="help-block"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if($_W['isfounder']) { ?>一码付链接(崛企)<?php  } else { ?>一码付链接<?php  } ?></label>
            <div class="col-sm-9">
                <input type="text" name="jueqi_host" class="form-control" value="<?php  echo $reply['jueqi_host'];?>" />
            </div>
        </div>
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label"><?php  if($_W['isfounder']) { ?>商户号(崛企)<?php  } else { ?>商户号<?php  } ?></label>
            <div class="col-sm-9">
                <input type="text" name="jueqi_customerId" class="form-control" value="<?php  echo $reply['jueqi_customerId'];?>" />
            </div>
        </div>
        </div>
        <?php  $paycount++;?>
        <?php  } ?>
        <?php  if($paycount == 0) { ?>
        <div class=" alert alert-warning">
        <div class="form-group">
            <label class="col-xs-12 col-sm-3 col-md-2 control-label">没有可设置的支付选项</label>
            <div class="col-sm-9">
                <div class="help-block">
                    <?php  if($_W['role'] == 'operator') { ?>
                    请联系管理员开启
                    <?php  } else { ?>
                    <a href="<?php  echo $this->createWebUrl('setting', array())?>">点击设置</a>
                    <?php  } ?>
                </div>
            </div>
        </div>
        </div>
        <?php  } ?>
    </div>
</div>