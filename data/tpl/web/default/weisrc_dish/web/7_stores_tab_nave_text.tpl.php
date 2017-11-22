<?php defined('IN_IA') or exit('Access Denied');?><div class="tab-pane" id="tab_nave_text">
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">预定文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_reservation" class="form-control" value="<?php  if(empty($reply['btn_reservation'])) { ?>预定<?php  } else { ?><?php  echo $reply['btn_reservation'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">店内文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_eat" class="form-control" value="<?php  if(empty($reply['btn_eat'])) { ?>店内<?php  } else { ?><?php  echo $reply['btn_eat'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">外卖文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_delivery" class="form-control" value="<?php  if(empty($reply['btn_delivery'])) { ?>外卖<?php  } else { ?><?php  echo $reply['btn_delivery'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">快餐文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_snack" class="form-control" value="<?php  if(empty($reply['btn_snack'])) { ?>快餐<?php  } else { ?><?php  echo $reply['btn_snack'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">排队文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_queue" class="form-control" value="<?php  if(empty($reply['btn_queue'])) { ?>排队<?php  } else { ?><?php  echo $reply['btn_queue'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">寄存文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_intelligent" class="form-control" value="<?php  if(empty($reply['btn_intelligent'])) { ?>存酒<?php  } else { ?><?php  echo $reply['btn_intelligent'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">收银文本</label>
        <div class="col-sm-9">
            <input type="text" name="btn_shouyin" class="form-control" value="<?php  if(empty($reply['btn_shouyin'])) { ?>收银<?php  } else { ?><?php  echo $reply['btn_shouyin'];?><?php  } ?>" />
        </div>
    </div>
</div>