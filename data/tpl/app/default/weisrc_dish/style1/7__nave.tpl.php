<?php defined('IN_IA') or exit('Access Denied');?><nav class="bar bar-tab footer-bar sborder" style="background-color: #e84130;border-top: 1px solid #e7e7e7;">
    <?php  if(empty($setting) || $setting['mode']==0) { ?>
    <?php  if($this->global_sid == 0) { ?>
    <?php  if($setting['is_show_home']==1) { ?>
    <a class="tab-item external"  <?php  if($cur_nave=='home') { ?>style="color:#77100b"<?php  } ?><?php  if($cur_nave!='home') { ?>style="color:#ffffff"<?php  } ?> href="<?php  echo $this->createMobileUrl('index', array(), true)?>">
        <span class="icon " style="background: none;"></span>
        <span class="tab-label">首页</span>
    </a>
    <?php  } ?>
    <a class="tab-item <?php  if($cur_nave=='restlist') { ?>active<?php  } ?> " href="<?php  echo $this->createMobileUrl('waprestlist', array(), true)?>">
        <span class="icon icon-fujin"></span>
        <span class="tab-label">好店</span>
    </a>
    <?php  } else { ?>
    <a class="tab-item external" <?php  if($cur_nave=='detail') { ?>style="color:#77100b"<?php  } ?><?php  if($cur_nave!='detail') { ?>style="color:#ffffff"<?php  } ?> href="<?php  echo $this->createMobileUrl('detail', array('id' => $this->global_sid), true)?>">
        <span class="icon icon-shouye" style="background: none;"></span>
        <span class="tab-label">门店</span>
    </a>
    <?php  } ?>
    <?php  } else { ?>
    <a class="tab-item external" <?php  if($cur_nave=='detail') { ?>style="color:#77100b"<?php  } ?><?php  if($cur_nave!='detail') { ?>style="color:#ffffff"<?php  } ?> href="<?php  echo $this->createMobileUrl('detail', array('id' => $setting['storeid']), true)?>">
        <span class="icon icon-shouye" style="background: none;"></span>
        <span class="tab-label">门店</span>
    </a>
    <?php  } ?>
    <?php  if(empty($setting) || $setting['mode']==0) { ?>
    <?php  if($this->global_sid == 0) { ?>
    <a class="tab-item <?php  if($cur_nave=='collection') { ?>active<?php  } ?>" href="<?php  echo $this->createMobileUrl('collection', array(), true)?>">
        <span class="icon icon-favorite"></span>
        <span class="tab-label">收藏</span>
    </a>
    <?php  } ?>
    <?php  } ?>
    <a class="tab-item" <?php  if($cur_nave=='order') { ?>style="color:#77100b"<?php  } ?><?php  if($cur_nave!='order') { ?>style="color:#ffffff"<?php  } ?> href="<?php  echo $this->createMobileUrl('order', array(), true)?>">
        <span class="icon icon-dingdan"></span>
        <span class="tab-label">订单</span>
    </a>
    <a class="tab-item " <?php  if($cur_nave=='my') { ?>style="color:#77100b"<?php  } ?><?php  if($cur_nave!='my') { ?>style="color:#ffffff"<?php  } ?> href="<?php  echo $this->createMobileUrl('usercenter', array(), true)?>">
        <span class="icon icon-account"></span>
        <span class="tab-label">我的</span>
    </a>
</nav>