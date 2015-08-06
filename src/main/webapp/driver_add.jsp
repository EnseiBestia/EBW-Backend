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
<link rel="stylesheet" href="css/datetimepicker.css" tppabs="css/datetimepicker.css">
<link rel="stylesheet" href="css/jquery.Jcrop.css" tppabs="css/jquery.Jcrop.css">
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
<div class="panel-heading">上传照片（可选）</div>
<div class="panel-body">
<div>
<div style="float:left;width:200;margin-right:8px;">
<p>救援人员头像</p>
<div id="show_photo_div">
<img id="show_photo" width="200" height="200">
</div>
<p></p>
<p>
<button href="javascript:;" class="btn btn-primary" id="photo_upload_dialog">上传头像</button>
</p>
</div>
<div style="float:left;width:550;margin-right:8px;">
<p>救援人员驾驶证</p>
<div id="show_license_div">
<img id="show_license" width="550" height="200">
</div>
<p></p>
<p>
<button href="javascript:;" class="btn btn-primary" id="license_upload_dialog">上传驾驶证</button>
</p>
</div>
<div style="float:left;width:200;">
<p>救援人员全身照</p>
<div id="show_bigPhoto_div">
<img id="show_bigPhoto" width="125" height="200">
</div>
<p></p>
<p>
<button href="javascript:;" class="btn btn-primary" id="bigPhoto_upload_dialog">上传全身照</button>
</p>
</div>
</div>
</div>
</div>
</div>
<!--
<div class="col-md-8">
<div class="panel panel-default">
<div class="panel-heading">上传救援人员照片（可选）</div>
<div class="panel-body">
<div class="form-group">
<label class="control-label"><em></em>驾驶证附件：</label><br />
<div id="license">
</div>
</div>
<div class="form-group">
<label class="control-label"><em></em>救援员照片：(可用于派单和显示在客户手机上)</label><br />
<div id="photo">
</div>
</div>
</div>
</div>
</div>
-->
</div>
<div class="row">
<form id="submit_form" action="#" onClick=""; method="post">
<input type="hidden" id="oid" name="oid" value="a4064ca809e04e3f90677fbc7fa7b5fd">
<input type="hidden" id="photo" name="photo" value="">
<input type="hidden" id="license" name="license" value="">
<input type="hidden" id="bigPhoto" name="bigPhoto" value="">
<div class="col-md-6">
<div class="panel panel-default">
<div class="panel-heading">
填写救援人员信息(必填)
</div>
<div class="panel-body">
<div class="form-group">
<label for="username"><em>*</em>工号：</label>
<input class="form-control" id="username" name="username" type="text" value="" pattern=".{2,}" required="" placeholder="工号为2-20个字符" title="工号为2-20个字符">
<span class="help-block">请输入手机客户端登录工号</span>
</div>
<div class="form-group">
<label for="name"><em>*</em>昵称：</label>
<input class="form-control" id="name" name="name" type="text" value="" required="" placeholder="填写救援人员昵称，用于APP显示">
</div>
<div class="form-group">
<label for="name"><em>*</em>真实姓名：</label>
<input class="form-control" id="realname" name="realname" type="text" value="" required="" placeholder="填写救援人员真实姓名">
</div>
<div class="form-group">
<label for="idCard"><em>*</em>身份证号：</label>
<input class="form-control" id="idCard" name="idCard" type="text" value="" required="" placeholder="填写救援人员身份证号">
</div>
<div class="form-group">
<label for="gender"><em>*</em>性别：</label>
<label style="padding-right:20px;">
<input type="radio" name="gender" value="男" checked="checked">男
</label>
<label>
<input type="radio" name="gender" value="女">女
</label>
</div>
<div class="form-group">
<label for="phone"><em>*</em>手机号：</label>
<input class="form-control" id="phone" name="phone" type="text" value="" required="" placeholder="填写救援人员手机号">
</div>
<div class="form-group">
<label for="licenseTime"><em>*</em>领证时间：</label>
<input class="form-control" id="licenseTime" name="licenseTime" type="text" required="" readonly="">
</div>
<div class="form-group">
<label for="type"><em>*</em>员工类型：</label>
<select class="form-control" id="type" name="type" required="">
<option value="全职">全职</option>
<option value="兼职">兼职</option>
</select>
</div>
<div class="form-group">
<label for="driverLevelid">提成：</label>
<select class="form-control" id="driverLevelid" name="driverLevelid" required="">
<option value="">--请选择--</option>
<option value="0">无</option>
</select>
</div>
<div class="form-group" style="margin-left:10px;">
<input id="submit_button" type="button" class="btn btn-primary" value="保存" onclick="window.location.href = &#39;driver.jsp&#39;;">
<input type="button" class="btn btn-default" onclick="window.location.href = &#39;driver.jsp&#39;;" value="返回">
</div>
</div>
</div>
</div>
<div class="col-md-6">
<div class="panel panel-default">
<div class="panel-heading">
填写救援人员信息(非必填)
</div>
<div class="panel-body">
<div class="form-group">
<label for="pressingPhone">救援次数：</label>
<input class="form-control" id="driveTimes" name="driveTimes" type="number" min="0" value="0">
</div>
<div class="form-group">
<label for="pressingPhone">驾照类型：</label>
<input class="form-control" id="licenseType" name="licenseType" type="text" value="">
</div>
<div class="form-group">
<label for="pressingPhone">介绍人：</label>
<input class="form-control" id="introducer" name="introducer" type="text" value="">
</div>
<div class="form-group">
<label for="pressingPhone">身高(cm)：</label>
<input class="form-control" id="height" name="height" type="number" value="" min="0">
</div>
<div class="form-group">
<label for="pressingPhone">籍贯：</label>
<input class="form-control" id="origin" name="origin" type="text" value="">
</div>
<div class="form-group">
<label for="address">家庭住址：</label>
<input class="form-control" id="address" name="address" type="text" value="">
</div>
<div class="form-group">
<label for="pressingName">紧急联系人：</label>
<input class="form-control" id="pressingName" name="pressingName" type="text" value="">
</div>
<div class="form-group">
<label for="pressingPhone">紧急电话：</label>
<input class="form-control" id="pressingPhone" name="pressingPhone" type="text" value="">
</div>
<div class="form-group">
<label for="memo">备注：</label>
<textarea class="form-control" cols="20" id="memo" name="memo" rows="2"></textarea>
</div>
</div>
</div>
</div>
</form>
</div>
<div id="dialog_local_photo" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close close_modal" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">救援人员头像上传</h4>
</div>
<div class="modal-body">
<div class="row">
<div class="col-xs-8">
<div class="form-group">
<div class="caption" style="height:40px;">
<p>
<button href="javascript:;" class="btn btn-primary" id="photolocalsnap">本地上传</button>
<input style="display:none;" type="file" name="pic1" id="photoFile" accept=".bmp,.gif,.jpeg,.jpg,.png">
<button style="display:none;" href="javascript:;" class="btn btn-primary" id="photoSnap">拍照上传</button>
</p>
</div>
<div style="width:400px;height:400px;overflow:hidden;display:none;">
<video id="photoVideo" width="400" height="400" autoplay=""></video>
</div>
<canvas id="photoCanvas" width="400" height="400" style="display:none;"></canvas>
<div id="photoImg_div" style="width:400px;height:400px;display:table-cell;text-align:center;">
</div>
</div>
</div>
<div class="col-xs-4">
<div id="photoImg_container" style="width:200px;height:200px;overflow:hidden;margin-top:40px;">
</div>
</div>
<div class="col-xs-12">
<div class="form-group">
<div class="caption">
<p>
<button href="javascript:;" id="photo_ok" class="btn btn-primary">确认</button>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="dialog_local_license" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close close_modal" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">救援人员驾驶证上传</h4>
</div>
<div class="modal-body">
<div class="row">
<div class="col-xs-6">
<div class="form-group">
<div class="caption" style="height:40px;">
<p>
<button href="javascript:;" class="btn btn-primary" id="licenselocalsnap">本地上传</button>
<input style="display:none;" type="file" name="pic1" id="licenseFile" accept=".bmp,.gif,.jpeg,.jpg,.png">
<button style="display:none;" href="javascript:;" class="btn btn-primary" id="licenseSnap">拍照上传</button>
</p>
</div>
<div style="width:400px;height:400px;overflow:hidden;display:none;">
<video id="licenseVideo" width="400" height="400" autoplay=""></video>
</div>
<canvas id="licenseCanvas" width="400" height="400" style="display:none;"></canvas>
<div id="licenseImg_div" style="width:400px;height:400px;display:table-cell;text-align:center;">
</div>
</div>
</div>
<div class="col-xs-6">
<div id="licenseImg_container" style="width:412px;height:150px;overflow:hidden;margin-top:40px;">
</div>
</div>
<div class="col-xs-12">
<div class="form-group">
<div class="caption">
<p>
<button href="javascript:;" id="license_ok" class="btn btn-primary">确认</button>
</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div id="dialog_local_bigPhoto" class="modal fade bs-example-modal-sm" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close close_modal" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">救援人员全身照上传</h4>
</div>
<div class="modal-body">
<div class="row">
<div class="col-xs-9">
<div class="form-group">
<div class="caption" style="height:40px;">
<p>
<button href="javascript:;" class="btn btn-primary" id="bigPhotolocalsnap">本地上传</button>
<input style="display:none;" type="file" name="pic1" id="bigPhotoFile" accept=".bmp,.gif,.jpeg,.jpg,.png">
<button style="display:none;" href="javascript:;" class="btn btn-primary" id="bigPhotoSnap">拍照上传</button>
</p>
</div>
<div style="width:600px;height:600px;overflow:hidden;display:none;">
<video id="bigPhotoVideo" width="600" height="600" autoplay=""></video>
</div>
<canvas id="bigPhotoCanvas" width="600" height="600" style="display:none;"></canvas>
<div id="bigPhotoImg_div" style="width:600px;height:600px;display:table-cell;text-align:center;">
</div>
</div>
</div>
<div class="col-xs-3">
<div id="bigPhotoImg_container" style="width:125px;height:200px;overflow:hidden;margin-top:40px;">
</div>
</div>
<div class="col-xs-12">
<div class="form-group">
<div class="caption">
<p>
<button href="javascript:;" id="bigPhoto_ok" class="btn btn-primary">确认</button>
</p>
</div>
</div>
</div>
</div>
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
<script src="js/bootstrap-datetimepicker.min.js" tppabs="js/bootstrap-datetimepicker.min.js"></script>
<script src="js/bootstrap-datetimepicker.zh-CN.js" tppabs="js/bootstrap-datetimepicker.zh-CN.js"></script>
<script src="js/ajaxfileupload.js" tppabs="js/ajaxfileupload.js"></script>
<script src="js/idcardvalid.js" tppabs="js/idcardvalid.js"></script>
<script src="js/driver.js" tppabs="js/driver.js"></script>
<script src="js/drivercamera.js" tppabs="js/drivercamera.js"></script>
<script src="js/swfobject.js" tppabs="js/swfobject.js"></script>
<script src="js/jquery.Jcrop.js" tppabs="js/jquery.Jcrop.js"></script>
<script type="text/javascript">
$(document).ready(function(){
});
</script>
<script type="text/javascript">
window.daijia = {
ctx:'',
userId:'266'
};
</script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_driver").addClass("active");
</script>
<div class="datetimepicker datetimepicker-dropdown-bottom-right dropdown-menu" style="display: none; top: 1054px; left: 44.484375px; z-index: 1110;"><div class="datetimepicker-minutes" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="minute">0:00</span><span class="minute">0:05</span><span class="minute">0:10</span><span class="minute">0:15</span><span class="minute">0:20</span><span class="minute">0:25</span><span class="minute active">0:30</span><span class="minute disabled">0:35</span><span class="minute disabled">0:40</span><span class="minute disabled">0:45</span><span class="minute disabled">0:50</span><span class="minute disabled">0:55</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-hours" style="display: none;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">11 一月 2015</th><th class="next" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="hour active">0:00</span><span class="hour disabled">1:00</span><span class="hour disabled">2:00</span><span class="hour disabled">3:00</span><span class="hour disabled">4:00</span><span class="hour disabled">5:00</span><span class="hour disabled">6:00</span><span class="hour disabled">7:00</span><span class="hour disabled">8:00</span><span class="hour disabled">9:00</span><span class="hour disabled">10:00</span><span class="hour disabled">11:00</span><span class="hour disabled">12:00</span><span class="hour disabled">13:00</span><span class="hour disabled">14:00</span><span class="hour disabled">15:00</span><span class="hour disabled">16:00</span><span class="hour disabled">17:00</span><span class="hour disabled">18:00</span><span class="hour disabled">19:00</span><span class="hour disabled">20:00</span><span class="hour disabled">21:00</span><span class="hour disabled">22:00</span><span class="hour disabled">23:00</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-days" style="display: block;"><table class=" table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">一月 2015</th><th class="next" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr><tr><th class="dow">日</th><th class="dow">一</th><th class="dow">二</th><th class="dow">三</th><th class="dow">四</th><th class="dow">五</th><th class="dow">六</th></tr></thead><tbody><tr><td class="day old">28</td><td class="day old">29</td><td class="day old">30</td><td class="day old">31</td><td class="day">1</td><td class="day">2</td><td class="day">3</td></tr><tr><td class="day">4</td><td class="day">5</td><td class="day">6</td><td class="day">7</td><td class="day">8</td><td class="day">9</td><td class="day">10</td></tr><tr><td class="day active">11</td><td class="day disabled">12</td><td class="day disabled">13</td><td class="day disabled">14</td><td class="day disabled">15</td><td class="day disabled">16</td><td class="day disabled">17</td></tr><tr><td class="day disabled">18</td><td class="day disabled">19</td><td class="day disabled">20</td><td class="day disabled">21</td><td class="day disabled">22</td><td class="day disabled">23</td><td class="day disabled">24</td></tr><tr><td class="day disabled">25</td><td class="day disabled">26</td><td class="day disabled">27</td><td class="day disabled">28</td><td class="day disabled">29</td><td class="day disabled">30</td><td class="day disabled">31</td></tr><tr><td class="day new disabled">1</td><td class="day new disabled">2</td><td class="day new disabled">3</td><td class="day new disabled">4</td><td class="day new disabled">5</td><td class="day new disabled">6</td><td class="day new disabled">7</td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-months" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2015</th><th class="next" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="month active">一月</span><span class="month disabled">二月</span><span class="month disabled">三月</span><span class="month disabled">四月</span><span class="month disabled">五月</span><span class="month disabled">六月</span><span class="month disabled">七月</span><span class="month disabled">八月</span><span class="month disabled">九月</span><span class="month disabled">十月</span><span class="month disabled">十一月</span><span class="month disabled">十二月</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div><div class="datetimepicker-years" style="display: none;"><table class="table-condensed"><thead><tr><th class="prev" style="visibility: visible;"><i class="glyphicon glyphicon-arrow-left"></i> </th><th colspan="5" class="switch">2010-2019</th><th class="next" style="visibility: hidden;"><i class="glyphicon glyphicon-arrow-right"></i> </th></tr></thead><tbody><tr><td colspan="7"><span class="year old">2009</span><span class="year">2010</span><span class="year">2011</span><span class="year">2012</span><span class="year">2013</span><span class="year">2014</span><span class="year active">2015</span><span class="year disabled">2016</span><span class="year disabled">2017</span><span class="year disabled">2018</span><span class="year disabled">2019</span><span class="year old disabled">2020</span></td></tr></tbody><tfoot><tr><th colspan="7" class="today" style="display: none;">今日</th></tr></tfoot></table></div></div></body></html>