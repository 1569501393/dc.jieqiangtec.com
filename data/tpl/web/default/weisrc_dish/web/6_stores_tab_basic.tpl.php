<?php defined('IN_IA') or exit('Access Denied');?><div class="tab-pane  active" id="tab_basic">
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店名称</label>
        <div class="col-sm-9">
            <input type="text" name="title" value="<?php  echo $reply['title'];?>" id="title" class="form-control" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店默认跳转</label>
        <div class="col-sm-9 col-xs-9 col-md-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="default_jump1" value="1" name="default_jump" <?php  if($reply['default_jump']==1) { ?>checked<?php  } ?>>
                <label for="default_jump1"> 门店详情页 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="default_jump2" value="2" name="default_jump" <?php  if($reply['default_jump']==2) { ?>checked<?php  } ?>>
                <label for="default_jump2"> 外卖 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="default_jump3" value="3" name="default_jump" <?php  if($reply['default_jump']==3) { ?>checked<?php  } ?>>
                <label for="default_jump3"> 快餐 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="default_jump4" value="4" name="default_jump" <?php  if($reply['default_jump']==4) { ?>checked<?php  } ?>>
                <label for="default_jump4"> 排队 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="default_jump5" value="5" name="default_jump" <?php  if($reply['default_jump']==5) { ?>checked<?php  } ?>>
                <label for="default_jump5"> 预定 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="default_jump6" value="6" name="default_jump" <?php  if($reply['default_jump']==6) { ?>checked<?php  } ?>>
                <label for="default_jump6"> 自定义链接 </label>
            </div>
        </div>
    </div>
    <div class="form-group" id="default_jump_url" style="<?php  if($reply['default_jump']!=6) { ?>display:none;<?php  } ?>">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店跳转链接</label>
        <div class="col-sm-9">
            <input type="text" name="default_jump_url" value="<?php  echo $reply['default_jump_url'];?>" class="form-control" />
            <div class="help-block">在门店列表点击跳转</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="color:#f00;">门店状态</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_show1" value="1" name="is_show" <?php  if($reply['is_show']==1||empty($reply)) { ?>checked<?php  } ?>>
                <label for="is_show1"> 开启 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_show2" value="0" name="is_show" <?php  if(isset($reply['is_show']) &&empty($reply['is_show'])) { ?>checked<?php  } ?>>
                <label for="is_show2"> 关闭 </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label" style="color:#f00;">在门店列表显示</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_list1" value="1" name="is_list" <?php  if($reply['is_list']==1) { ?>checked<?php  } ?>>
                <label for="is_list1"> 显示 </label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" id="is_list2" value="0" name="is_list" <?php  if(empty($reply['is_list'])) { ?>checked<?php  } ?>>
                <label for="is_list2"> 隐藏 </label>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">品牌店</label>
        <div class="col-sm-9">
            <div class="radio radio-info radio-inline">
                <input type="radio" name="is_brand" value="1" id="is_brand1" <?php  if(empty($reply) || $reply['is_brand'] == 1) { ?>checked="true"<?php  } ?> />
                <label for="is_brand1"> 是</label>
            </div>
            <div class="radio radio-info radio-inline">
                <input type="radio" name="is_brand" value="0" id="is_brand2" <?php  if(!empty($reply) && $reply['is_brand'] == 0) { ?>checked="true"<?php  } ?> />
                <label for="is_brand2"> 否</label>
            </div>
            <span class="help-block"></span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店Logo</label>
        <div class="col-sm-9">
            <?php  echo tpl_form_field_image('logo', $reply['logo'])?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店公告</label>
        <div class="col-sm-9">
            <input type="text" name="announce" value="<?php  echo $reply['announce'];?>" id="announce" class="form-control" />
            <div class="help-block">在门店详细页显示</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">预定公告</label>
        <div class="col-sm-9">
            <input type="text" name="reservation_announce" value="<?php  echo $reply['reservation_announce'];?>" id="reservation_announce" class="form-control" />
            <div class="help-block">在预定页显示</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店简介</label>
        <div class="col-sm-9">
            <input type="text" name="info" value="<?php  echo $reply['info'];?>" id="info" class="form-control" />
            <div class="help-block">在门店列表显示</div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店类型</label>
        <div class="col-sm-9">
            <select class="form-control" name="type" id="type">
                <option value="0">请选择</option>
                <?php  if(is_array($shoptype)) { foreach($shoptype as $item) { ?>
                <option value="<?php  echo $item['id'];?>" <?php  if($reply['typeid']==$item['id']) { ?>selected<?php  } ?>><?php  echo $item['name'];?></option>
                <?php  } } ?>
            </select>
            <div class="help-block">
                还没有分类，点我 <a href="<?php  echo $this->createWebUrl('type', array('op' => 'post'))?>"><i class="fa fa-plus-circle"></i> 添加分类</a>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">所属区域</label>
        <div class="col-sm-9">
            <select class="form-control" name="area" id="area">
                <option value="0">请选择</option>
                <?php  if(is_array($area)) { foreach($area as $item) { ?>
                <option value="<?php  echo $item['id'];?>" <?php  if($reply['areaid']==$item['id']) { ?>selected<?php  } ?>><?php  echo $item['name'];?></option>
                <?php  } } ?>
            </select>
            <div class="help-block">
                还没有区域，点我 <a href="<?php  echo $this->createWebUrl('area', array('op' => 'post'))?>"><i class="fa fa-plus-circle"></i> 添加区域</a>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店级别</label>
        <div class="col-sm-9">
            <select name="level" id="level" class="form-control">
                <option value="1"<?php  if($reply['level']==1) { ?> selected<?php  } ?>>★</option>
                <option value="2"<?php  if($reply['level']==2) { ?> selected<?php  } ?>>★★</option>
                <option value="3"<?php  if(empty($reply) || $reply['level']==3) { ?> selected<?php  } ?>>★★★</option>
                <option value="4"<?php  if($reply['level']==4) { ?> selected<?php  } ?>>★★★★</option>
                <option value="5"<?php  if($reply['level']==5) { ?> selected<?php  } ?>>★★★★★</option>
            </select>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">人均消费</label>
        <div class="col-sm-9">
            <input type="text" name="consume" class="form-control" value="<?php  if(empty($reply)) { ?>20.0<?php  } else { ?><?php  echo $reply['consume'];?><?php  } ?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">营业时间</label>
        <div class="col-sm-3">
            <div class="input-group clockpicker">
                <input type="text" class="form-control" value="<?php  echo $reply['begintime'];?>" name="begintime">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group clockpicker">
                <input type="text" class="form-control" value="<?php  echo $reply['endtime'];?>" name="endtime">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-3">
            <div class="input-group clockpicker">
                <input type="text" class="form-control" value="<?php  echo $reply['begintime1'];?>"
                       name="begintime1">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group clockpicker">
                <input type="text" class="form-control" value="<?php  echo $reply['endtime1'];?>"
                       name="endtime1">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"></label>
        <div class="col-sm-3">
            <div class="input-group clockpicker">
                <input type="text" class="form-control" value="<?php  echo $reply['begintime2'];?>"
                       name="begintime2">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="input-group clockpicker">
                <input type="text" class="form-control" value="<?php  echo $reply['endtime2'];?>"
                       name="endtime2">
                                <span class="input-group-addon">
                                <span class="glyphicon glyphicon-time"></span>
                                </span>
            </div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">门店介绍</label>
        <div class="col-sm-9">
            <textarea style="height:200px;" class="form-control richtext" name="content" cols="70" id="reply-add-text"><?php  echo $reply['content'];?></textarea>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label"><span class="require">* </span>门店实景</label>
        <div class="col-sm-9 col-xs-9 col-md-9 thumbs">
            <a href="javascript:;" class="btn btn-primary" id="selectImage">选择图片</a>
            <br>
            <br>
            <?php  if(!empty($reply['thumbs'])) { ?>
            <?php  if(is_array($reply['thumbs'])) { foreach($reply['thumbs'] as $slide) { ?>
            <div class="col-lg-3">
                <input type="hidden" name="thumbs[image][]" value="<?php  echo $slide['image'];?>">
                <div class="panel panel-default panel-slide">
                    <div class="btnClose" onclick="$(this).parent().parent().remove()"><i class="fa fa-times"></i></div>
                    <div class="panel-body">
                        <img src="<?php  echo tomedia($slide['image']);?>" alt="" width="100%" height="170">
                        <div>
                            <input class="form-control last pull-right" placeholder="跳转链接" name="thumbs[url][]" value="<?php  echo $slide['url'];?>">
                        </div>
                    </div>
                </div>
            </div>
            <?php  } } ?>
            <?php  } ?>
            <div id="slideContainer"></div>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">电话</label>
        <div class="col-sm-9">
            <input type="text" name="tel" id="tel" value="<?php  echo $reply['tel'];?>" class="form-control">
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">地址</label>
        <div class="col-sm-9">
            <input type="text" name="address" id="address" value="<?php  echo $reply['address'];?>" class="form-control" >
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家QQ</label>
        <div class="col-sm-9">
            <input type="text" name="qq" class="form-control" value="<?php  echo $reply['qq'];?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">商家微信</label>
        <div class="col-sm-9">
            <input type="text" name="weixin" class="form-control" value="<?php  echo $reply['weixin'];?>" />
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">客服二维码</label>
        <div class="col-sm-9">
            <?php  echo tpl_form_field_image('kefu_qrcode', $reply['kefu_qrcode'])?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">坐标</label>
        <div class="col-sm-9">
            <?php  echo tpl_form_field_coordinate('baidumap', $reply)?>
        </div>
    </div>
    <div class="form-group">
        <label class="col-xs-12 col-sm-3 col-md-2 control-label">排序</label>
        <div class="col-sm-9">
            <input type="text" name="displayorder" value="<?php  echo $reply['displayorder'];?>" id="displayorder" class="form-control" />
        </div>
    </div>
</div>