<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/header', TEMPLATE_INCLUDEPATH)) : (include template('public/header', TEMPLATE_INCLUDEPATH));?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('public/comhead', TEMPLATE_INCLUDEPATH)) : (include template('public/comhead', TEMPLATE_INCLUDEPATH));?>
<?php  if($operation == 'display') { ?>
<div class="main">
    <form action="" method="post" class="form-horizontal form">
        <div class="panel panel-default">
            <div class="panel-heading">
                评论管理
            </div>
            <div class="table-responsive panel-body">
                <table class="table table-hover">
                    <thead class="navbar-inner">
                    <tr>
                        <th style="width:15%;">(ID)用户</th>
                        <th style="width:10%;">订单</th>
                        <th style="width:25%;">评论内容</th>
                        <th style="width:25%;">评论时间</th>
                        <th style="width:10%;">状态</th>
                        <th style="width:15%;"></th>
                    </tr>
                    </thead>
                    <tbody id="level-list">
                    <?php  if(is_array($list)) { foreach($list as $item) { ?>
                    <tr>
                        <td>
                            <img src="<?php  echo tomedia($item['headimgurl']);?>" width="50" style="border-radius: 3px;"/>
                            <br/>
                            <span class="label label-warning">(<?php  echo $item['id'];?>)<?php  echo $item['nickname'];?></span>
                        </td>
                        <td>
                            <a href="<?php  echo $this->createWebUrl('order', array('op' => 'detail', 'id' => $item['orderid'], 'storeid' => $storeid))?>">查看</a>
                        </td>
                        <td>
                            评分:<?php  echo $item['star'];?>星<br/>
                            内容:<?php  echo $item['content'];?>
                        </td>
                        <td style="white-space:normal;"><?php  echo date('Y-m-d H:i:s', $item['dateline'])?></td>
                        <td><?php  if($item['status'] == 0) { ?><span class="label label-default">未显示</span><?php  } else { ?><span
                                class="label label-success">显示</span><?php  } ?></td>
                        <td>
                            <a class="btn btn-danger btn-sm" onclick="return confirm('确认删除吗？');return false;"
                               href="<?php  echo $this->createWebUrl('feedback', array('op' => 'delete', 'id' => $item['id'], 'storeid' => $storeid))?>"><i class="fa fa-times"> 删除</i></a>
                        </td>
                    </tr>
                    <?php  } } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </form>
    <?php  echo $pager;?>
</div>
<?php  } ?>
<?php (!empty($this) && $this instanceof WeModuleSite || 1) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>