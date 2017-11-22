<?php defined('IN_IA') or exit('Access Denied');?><div class="tab-pane" id="tab_coupon">
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">新顾客满减优惠</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_newlimitprice1" value="1" name="is_newlimitprice" <?php  if($reply['is_newlimitprice']==1|| empty($reply)) { ?>checked<?php  } ?>>
                <label for="is_newlimitprice1"> 开启 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_newlimitprice2" value="0" name="is_newlimitprice" <?php  if(isset($reply['is_newlimitprice']) && empty($reply['is_newlimitprice'])) { ?>checked<?php  } ?>>
                <label for="is_newlimitprice2"> 关闭 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <a href="<?php  echo $this->createWebUrl('coupon', array('storeid' => $storeid, 'op' => 'display'))?>">点击设置活动</a>
            </div>
            <div class="help-block">
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-9 form-control-static">
            <?php  if(is_array($clist1)) { foreach($clist1 as $row1) { ?>
            <a href="<?php  echo $this->createWebUrl('coupon', array('storeid' => $storeid, 'op' => 'post', 'id' => $row1['id']))?>">(<?php  echo $row1['id'];?>).<?php  echo $row1['title'];?></a>
            <br/>
            <?php  } } ?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">老顾客满减优惠</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_oldlimitprice1" value="1" name="is_oldlimitprice"  <?php  if($reply['is_oldlimitprice']==1 || empty($reply)) { ?>checked<?php  } ?>>
                <label for="is_oldlimitprice1"> 开启 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_oldlimitprice2" value="0" name="is_oldlimitprice" <?php  if(isset($reply['is_oldlimitprice']) && empty($reply['is_oldlimitprice'])) { ?>checked<?php  } ?>>
                <label for="is_oldlimitprice2"> 关闭 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <a href="<?php  echo $this->createWebUrl('coupon', array('storeid' => $storeid, 'op' => 'display'))?>">
                    点击设置活动</a>
            </div>
            <div class="help-block">
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-9 form-control-static">
            <?php  if(is_array($clist2)) { foreach($clist2 as $row2) { ?>
            <a href="<?php  echo $this->createWebUrl('coupon', array('storeid' => $storeid, 'op' => 'post', 'id' => $row2['id']))?>">(<?php  echo $row2['id'];?>).<?php  echo $row2['title'];?></a>
            <br/>
            <?php  } } ?>
        </div>
    </div>
</div>