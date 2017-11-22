<?php defined('IN_IA') or exit('Access Denied');?><table class="table table-hover table-bordered text-center" style="min-width:500px;">
    <thead>
    <tr>
        <th class="text-center">头像</th>
        <th class="text-center">昵称</th>
        <th class="text-center">操作</th>
    </tr>
    </thead>
    <tbody>
    <?php  if(is_array($ds)) { foreach($ds as $item) { ?>
    <tr>
        <td><img src="<?php  echo tomedia($item['headimgurl']);?>" style="width:30px;height:30px;padding1px;border:1px solid #ccc"/></td>
        <td><?php  echo $item['nickname'];?></td>
        <td style="width:80px;"><a href="javascript:;" onclick='select_entry(<?php  echo json_encode($item['entry']);?>)'>选择</a></td>
    </tr>
    <?php  } } ?>
    </tbody>
</table>