<?php defined('IN_IA') or exit('Access Denied');?><?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/header', TEMPLATE_INCLUDEPATH)) : (include template('common/header', TEMPLATE_INCLUDEPATH));?>
<style type="text/css">
    .up h3 {
    height: 33px;
    line-height: 33px;
    font-weight: bold;
    padding: 0 14px;
    font-size: 18px;
    color: #31708f; 
} 
li{  
list-style-type:disc;  
}   
</style>
<ol class="breadcrumb">
	<li><a href="./?refresh"><i class="fa fa-home"></i></a></li>
	<li class=""><a href="<?php  echo url('system/welcome');?>">小黑微服务</a></li>
	<li class="active">一键更新</li>
</ol>
<script src="./resource/script/update.min.js" type="text/javascript"></script>
<link href="./resource/style/update.css" type="text/css" rel="stylesheet">
<ul class="nav nav-tabs">
	<li<?php  if($do == 'up') { ?> class="active"<?php  } ?>><a href="<?php  echo url('cloud/up');?>">自动更新</a></li>
</ul>
<div class="clearfix">
	<div style="padding:15px;">
	<div class="alert alert-danger">
		<i class="fa fa-exclamation-triangle"></i> 更新时请注意备份网站数据和相关数据库文件！
	</div>
		<?php  if($op == 'display') { ?>
<!--版本信息-->
<div class="box">
	<h3><i class="fa fa-refresh"></i> 系统版本信息</h3>
    <div class="alert alert-info" style="line-height:28px;margin-top:8px;">
    <div class="update">
    <li>服务器环境：<?php  echo PHP_OS;?><?php  echo $_SERVER['SERVER_SOFTWARE'];?></li>
	<li>PHP版本:<?php  echo PHP_VERSION;?>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;Zend版本：<?php  $zend_version = zend_version();if(empty($zend_version)){echo '<font color=red>×</font>';}else{echo $zend_version;}?>&nbsp;&nbsp;&nbsp;MySql:<?php  echo mysql_get_server_info();?>|&nbsp;&nbsp;&nbsp;服务端口：<?php  echo $_SERVER['SERVER_PORT'];?></li>
    <li>服务器域名(IP)：<?php  echo $_SERVER['SERVER_NAME'];?>(<?php  if('/'==DIRECTORY_SEPARATOR){echo $_SERVER['SERVER_ADDR'];}else{echo @gethostbyname($_SERVER['SERVER_NAME']);} ?>)</li>
    <li>当前网站语言：<?php  echo getenv("HTTP_ACCEPT_LANGUAGE");?></li>
    <li>官方网站：<a href="http://www.baidu.com" class="blue">小黑微服务</a></li>

    <li class="red">[当前系统版本]：微赞WZ_V<?php  echo $ver;?></li>
	<?php  if($lastver <= $ver) { ?>
	<li class="red">[最新系统版本]：微赞WZ_V<?php  echo $ver;?> （恭喜, 你的程序已经是最新版本）</li>
	<?php  } ?>
	<?php  if($lastver > $ver) { ?>
	<li class="red">[下一个系统版本]：微赞WZ_V<?php  echo $lastver;?> &nbsp;&nbsp;<button onclick="chanage();" class="btn btn-primary">查看版本</button></li>
	<script type="text/javascript">
		function chanage()
		  {
			location = "<?php  echo create_url('cloud/up',array('op'=>'chanage'));?>";
		}
		</script>
	<?php  } ?>
    </div>

	<div class="alert alert-danger">
 
		 <?php  if($domain_time == '0') { ?><i class="fa fa-exclamation-triangle"></i> 系统无法升级更新，授权已过期，请联系QQ:<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=1415509&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:1415509:51" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
<script charset="utf-8" type="text/javascript" src="http://wpa.qq.com/msgrd?v=3&uin=1415509&site=qq&menu=yes"></script>
<!-- WPA Button End -->
        <?php  } else { ?>
           <i class="fa fa-refresh"></i> 授权版本：至尊商业版 &nbsp;更新服务截止：(<?php  echo date("Y-m-d", $domain_time);?>)
		 <?php  } ?>
		</div>
<?php  if($domain_time != '0') { ?>
<div class="alert alert-danger">
		<i class="fa fa-exclamation-triangle"></i>更新时请注意备份网站数据和相关数据库文件！<b>本人</b>不强制要求用户跟随官方意愿进行更新！
	</div>
 <?php  } ?>　 

    </div>

</div>
<!--版本信息-->

<!--论坛动态-->
<div class="box">
	<h3><i class="fa fa-refresh"></i> 在线更新日志</h3>
     <div id="info" class="alert alert-info" style="height:335px;line-height:20px;margin-top:8px;">
		<script type="text/javascript" src="http://bbs.012wz.com/api.php?mod=js&bid=4"></script>
    </div>
</div>
<!--论坛动态end-->
<?php  } ?>

<?php  if($op == 'chanage') { ?>
<!--更新信息-->
<div  class="up">
	<h3><i class="fa fa-refresh"></i>待更新的升级包</h3>
    <div class="alert alert-info" style="line-height:20px;margin-top:8px;">
	<p class="red"><i class="fa fa-refresh"></i> [待更新的程序版本]：WZ_V<?php  echo $lastver;?> &nbsp;&nbsp;<button onclick="disp_confirm();" class="btn btn-primary" >在线升级</button><button onclick="disp_confirm2();" style="background-color: #3EA759;border-color: #3EA759;" class="btn btn-primary" >跳过此版本</button></p>
	<script type="text/javascript">
		function disp_confirm()
		  {
		  var r=confirm("确定已备份好系统，并更新系统到最新版本吗？")
		  if (r==true)
			{
			location = "<?php  echo create_url('cloud/up',array('op'=>'update'));?>";
			}
		  }
		function disp_confirm2()
		  {
		  var r=confirm("确定要跳过此版本更新么？")
		  if (r==true)
			{
			location = "<?php  echo create_url('cloud/up',array('op'=>'tiao'));?>";
			}
		  }  
		function alert(title) {
            $("#windowcenter").slideToggle("slow");
            $("#txt").html(title);
            setTimeout('$("#windowcenter").slideUp(500)', 4000);
        } 


		</script>
	<br/>
	<div class="alert alert-danger">
		<i class="fa fa-refresh"></i> [本次更新的内容]：<?php  echo $cinfo;?>
    </div>
    </div>
</div>
<!--更新信息end-->
<?php  } ?>

	</div>
</div>

<?php (!empty($this) && $this instanceof WeModuleSite || 0) ? (include $this->template('common/footer', TEMPLATE_INCLUDEPATH)) : (include template('common/footer', TEMPLATE_INCLUDEPATH));?>
