<%@ page pageEncoding="UTF-8" %>
<html>
<!DOCTYPE html>
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/bootstrap.css" tppabs="css/bootstrap.css">
<link rel="stylesheet" href="css/font-awesome.min.css" tppabs="css/font-awesome.min.css">
<link rel="stylesheet" href="css/buttons.css" tppabs="css/buttons.css">
<link rel="stylesheet" href="css/scojs.css" tppabs="css/scojs.css">
<link rel="stylesheet" href="css/sco.message.css" tppabs="css/sco.message.css">
<link rel="stylesheet" href="css/gird.css" tppabs="css/gird.css">
<link rel="stylesheet" href="css/form.css" tppabs="css/form.css">
</head>
<body>

    <html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>“E路畅通”移动车主服务平台</title>
</head>
<body>
    <div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<div style="text-align: right; line-height:40px;" id="top">
<small>
<span>试用平台</span>
<a href="#">华焱坤泰</a><span>，欢迎回来！ &nbsp;&nbsp;</span>
<a href="#" target="_self">退出系统 </a>
</small>
</div>
</div>
</div>
<nav class="navbar navbar-default" role="navigation">
<!-- Brand and toggle get grouped for better mobile display -->
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
<span class="sr-only">Toggle navigation</span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>
</button>
<a>
<span style="float:left;padding: 15px 15px;font-size: 18px;line-height: 20px;color:#fff;">华焱坤泰-E救援、E代驾、E维保</span>
</a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav" id="nav_header">
<li  id="nav_header_order"><a href="index.jsp" tppabs="index.jsp">工单</a></li>
<li  id="nav_header_dispatch"><a href="dispatch.jsp" tppabs="dispatch.jsp">调度</a></li>
<li  id="nav_header_distribute"><a href="distribute.jsp" tppabs="distribute.jsp">派单</a></li>
<li  id="nav_header_driver"><a href="driver.jsp" tppabs="driver.jsp">特服人员 </a></li>
<li  id="nav_header_customer"><a href="customer.jsp" tppabs="customer.jsp">客户 </a></li>
<li  id="nav_header_vendor"><a href="vendor.jsp" tppabs="vendor.jsp">服务商 </a></li>
<li  id="nav_header_statistics"><a href="statistics.jsp" tppabs="statistics.jsp">统计</a></li>
<li  id="nav_header_financial"><a href="financial.jsp" tppabs="financial.jsp">财务</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">通知 <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="notify_driver.jsp" tppabs="notify_driver.jsp">特服人员通知</a></li>
<li><a href="notify_customer.jsp" tppabs="notify_customer.jsp">客户通知</a></li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">微信 <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="#">订阅号</a></li>
<li><a href="#">服务号</a></li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">系统 <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="system_operateLog.jsp" tppabs="system_operateLog.jsp">操作日志</a></li>
<li class="divider"></li>
<li><a href="system_registerCharge.jsp" tppabs="system_registerCharge.jsp">地区收费标准</a></li>
<li><a href="#">自动调度规则配置</a></li>
<li><a href="system_chargeSetting.jsp" tppabs="system_chargeSetting.jsp">参考价目</a></li>
<li class="divider"></li>
<li><a href="system_changePassword.jsp" tppabs="system_changePassword.jsp">修改密码</a></li>
</ul>
</li>
</ul>
</div><!-- /.navbar-collapse -->
</nav>


<div class="lc-box hidden-xs" style="top: 12px; position: absolute;">
<span class="lc-info gcinfo1">未分派工单:2</span>
<span class="lc-info gcinfo2">执行中工单:3</span>
<span class="lc-info gcinfo3">已完成工单:40</span>
<span class="lc-info gcinfo4">今日总工单:45</span>
<span class="lc-info gcinfo5 hidden-sm">空闲救援员:5</span>
<span class="lc-info gcinfo6 hidden-sm">忙碌救援员:2</span>
</div>

</div>

</body>
</html>
<div class="container-fluid">
<div class="row">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-heading">
修改密码
</div>
<div class="panel-body">
<form id="submit_form" action="#" class="form-horizontal" method="post">
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>原密码：</label>
<div class="col-sm-3">
<input class="form-control" id="oldpassword" name="oldpassword" type="password" required="" placeholder="输入原密码">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>密码：</label>
<div class="col-sm-3">
<input class="form-control" id="password" name="password" type="password" required="" placeholder="密码不能少于4个字符">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>重复密码：</label>
<div class="col-sm-3">
<input class="form-control" id="passwordconfirm" type="password" required="" placeholder="需要和密码一致">
</div>
</div>
<!--
<div class="form-group">
<video id="video" width="640" height="480" autoplay></video>
<button id="snap">Snap Photo</button>
<canvas id="canvas" width="640" height="480"></canvas>
</div>
-->
<div class="form-group" style="margin-left:10px;">
<label class="col-sm-3 control-label"></label>
<input type="submit" class="btn btn-primary" value="修改">
</div>
</form>
</div>
</div>
</div>
</div>
<audio id="new_order_play" src="audio/new_msg.mp3" tppabs="audio/new_msg.mp3" hidden="true"></audio>
<div class="row margin-top">

    
    <div class="container-fluid">
<div class="col-xs-12">
<div class="text-center text-muted small">
<p>
为保证最佳用户体验，强烈建议您使用 <a href="#" title="" data-toggle="tooltip" data-original-title="点击下载">谷歌Chrome浏览器</a>
</p>
<p>
如果您习惯于用IE浏览器，强烈建议您升级到 <a href="javascript:if(confirm('http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages'" tppabs="http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages" title="" data-original-title="点击下载升级">最新的IE浏览器(10+)</a>
当前版本 V0.0.2 <a target="_blank" href="#" data-original-title="" title="">更新说明</a> 
</p>

</div>
</div>
</div>
</div>
</div>
<object classid="clsid:F44CFA19-6B43-45EE-90A3-29AA08000510" id="qnviccub" data="data:application/x-oleobject;BASE64,GfpM9ENr7kWQoymqCAAFEAADAAD7FAAADhEAAA==" width="0" height="0"></object>
<script type="text/javascript" language="javascript">window.daijia = {ctx : ''};</script>
<script src="js/qnviccub.js" tppabs="js/qnviccub.js"></script>
<script src="js/jquery-1.11.0.min.js" tppabs="js/jquery-1.11.0.min.js"></script>
<script src="js/bootstrap.min.js" tppabs="js/bootstrap.min.js"></script>
<script src="js/sco.modal.js" tppabs="js/sco.modal.js"></script>
<script src="js/sco.message.js" tppabs="js/sco.message.js"></script>
<script src="js/sco.confirm.js" tppabs="js/sco.confirm.js"></script>
<script src="js/sockjs-0.3.min.js" tppabs="js/sockjs-0.3.min.js"></script>
<script src="js/daijia.js" tppabs="js/daijia.js"></script>
<script language="javascript" for="qnviccub" event="OnQnvEvent(chID,type,handle,result,param,szdata,szdataex)">
T_GetEvent(chID,type,handle,result,szdata)
</script>
<script type="text/javascript">
$(document).ready(function(){
$("#submit_form").submit(function(){
var password=$.trim($("#password").val());
if(password=='' || password.length<4){
$.scojs_message("密码不能为空且长度至少为4个字符", $.scojs_message.TYPE_ERROR);
return false;
}
var passwordconfirm=$.trim($("#passwordconfirm").val());
if(passwordconfirm=='' || passwordconfirm.length<4){
$.scojs_message("重复密码不能为空且长度至少为4个字符", $.scojs_message.TYPE_ERROR);
return false;
}
if(password!=passwordconfirm){
$.scojs_message("密码不一致", $.scojs_message.TYPE_ERROR);
return false;
}
return true;
});
// Put event listeners into place
//window.addEventListener("DOMContentLoaded", function() {
// Grab elements, create settings, etc.
//var canvas = document.getElementById("canvas"),
//context = canvas.getContext("2d"),
//video = document.getElementById("video"),
//videoObj = { "video": true },
//errBack = function(error) {
//console.log("Video capture error: ", error.code);
//};
//document.getElementById("snap").addEventListener("click", function() {
//context.drawImage(video, 0, 0, 640, 480);
//});
// Put video listeners into place
//if(navigator.getUserMedia) { // Standard
//navigator.getUserMedia(videoObj, function(stream) {
//video.src = stream;
//video.play();
//}, errBack);
//} else if(navigator.webkitGetUserMedia) { // WebKit-prefixed
//navigator.webkitGetUserMedia(videoObj, function(stream){
//video.src = window.webkitURL.createObjectURL(stream);
//video.play();
//}, errBack);
//}
//else if(navigator.mozGetUserMedia) { // Firefox-prefixed
//navigator.mozGetUserMedia(videoObj, function(stream){
//video.src = window.URL.createObjectURL(stream);
//video.play();
//}, errBack);
//}
//}, false);
});
</script>

</body></html>