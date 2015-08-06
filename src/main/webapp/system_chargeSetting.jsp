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
填写提成信息
<button type="button" class="time-add pull-right button button-pill button-flat-action button-tiny"><span class="glyphicon glyphicon-plus"></span>&nbsp;新增时间段</button>
</div>
<div class="panel-body">
<form id="submit_form" action="http://erescue.wabestway.com:8080/CPICRescue/driverlevel/create" class="form-horizontal" method="post">
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>名称：</label>
<div class="col-sm-3">
<input class="form-control" id="name" name="name" type="text" required="">
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><font color="red">注：</font></label>
<div class="col-sm-9">
<p class="form-control-static">固定提成 / 提成比例为公司所得提成，不使用固定提成或比例提成请设置为0；若工单实收金额小于填写的最低金额，则公司不提成，不使用请设置为0或不填。</p>
</div>
</div>
<div id="fieldset-div">
<fieldset>
<legend>分时段1</legend>
<small class="pull-right"><a href="javascript:;" class="time-delete">删除</a></small>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>时间：</label>
<div class="col-sm-4">
<select name="driverLevelDetails[0].startHour" style="width:60px;vertical-align:middle;">
<option value="0"> 00
</option>
<option value="1"> 01
</option>
<option value="2"> 02
</option>
<option value="3"> 03
</option>
<option value="4"> 04
</option>
<option value="5"> 05
</option>
<option value="6"> 06
</option>
<option value="7"> 07
</option>
<option value="8"> 08
</option>
<option value="9"> 09
</option>
<option value="10"> 10
</option>
<option value="11"> 11
</option>
<option value="12"> 12
</option>
<option value="13"> 13
</option>
<option value="14"> 14
</option>
<option value="15"> 15
</option>
<option value="16"> 16
</option>
<option value="17"> 17
</option>
<option value="18"> 18
</option>
<option value="19"> 19
</option>
<option value="20"> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</select>
<select name="driverLevelDetails[0].startMinute" style="width:60px;vertical-align:middle;">
<option value="0"> 00
</option>
<option value="1"> 01
</option>
<option value="2"> 02
</option>
<option value="3"> 03
</option>
<option value="4"> 04
</option>
<option value="5"> 05
</option>
<option value="6"> 06
</option>
<option value="7"> 07
</option>
<option value="8"> 08
</option>
<option value="9"> 09
</option>
<option value="10"> 10
</option>
<option value="11"> 11
</option>
<option value="12"> 12
</option>
<option value="13"> 13
</option>
<option value="14"> 14
</option>
<option value="15"> 15
</option>
<option value="16"> 16
</option>
<option value="17"> 17
</option>
<option value="18"> 18
</option>
<option value="19"> 19
</option>
<option value="20"> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
<option value="24"> 24
</option>
<option value="25"> 25
</option>
<option value="26"> 26
</option>
<option value="27"> 27
</option>
<option value="28"> 28
</option>
<option value="29"> 29
</option>
<option value="30"> 30
</option>
<option value="31"> 31
</option>
<option value="32"> 32
</option>
<option value="33"> 33
</option>
<option value="34"> 34
</option>
<option value="35"> 35
</option>
<option value="36"> 36
</option>
<option value="37"> 37
</option>
<option value="38"> 38
</option>
<option value="39"> 39
</option>
<option value="40"> 40
</option>
<option value="41"> 41
</option>
<option value="42"> 42
</option>
<option value="43"> 43
</option>
<option value="44"> 44
</option>
<option value="45"> 45
</option>
<option value="46"> 46
</option>
<option value="47"> 47
</option>
<option value="48"> 48
</option>
<option value="49"> 49
</option>
<option value="50"> 50
</option>
<option value="51"> 51
</option>
<option value="52"> 52
</option>
<option value="53"> 53
</option>
<option value="54"> 54
</option>
<option value="55"> 55
</option>
<option value="56"> 56
</option>
<option value="57"> 57
</option>
<option value="58"> 58
</option>
<option value="59"> 59
</option>
</select>
至
<select name="driverLevelDetails[0].endHour" style="width:60px;vertical-align:middle;">
<option value="0"> 00
</option>
<option value="1"> 01
</option>
<option value="2"> 02
</option>
<option value="3"> 03
</option>
<option value="4"> 04
</option>
<option value="5"> 05
</option>
<option value="6"> 06
</option>
<option value="7"> 07
</option>
<option value="8"> 08
</option>
<option value="9"> 09
</option>
<option value="10"> 10
</option>
<option value="11"> 11
</option>
<option value="12"> 12
</option>
<option value="13"> 13
</option>
<option value="14"> 14
</option>
<option value="15"> 15
</option>
<option value="16"> 16
</option>
<option value="17"> 17
</option>
<option value="18"> 18
</option>
<option value="19"> 19
</option>
<option value="20"> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</select>
<select name="driverLevelDetails[0].endMinute" style="width:60px;vertical-align:middle;">
<option value="0"> 00
</option>
<option value="1"> 01
</option>
<option value="2"> 02
</option>
<option value="3"> 03
</option>
<option value="4"> 04
</option>
<option value="5"> 05
</option>
<option value="6"> 06
</option>
<option value="7"> 07
</option>
<option value="8"> 08
</option>
<option value="9"> 09
</option>
<option value="10"> 10
</option>
<option value="11"> 11
</option>
<option value="12"> 12
</option>
<option value="13"> 13
</option>
<option value="14"> 14
</option>
<option value="15"> 15
</option>
<option value="16"> 16
</option>
<option value="17"> 17
</option>
<option value="18"> 18
</option>
<option value="19"> 19
</option>
<option value="20"> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
<option value="24"> 24
</option>
<option value="25"> 25
</option>
<option value="26"> 26
</option>
<option value="27"> 27
</option>
<option value="28"> 28
</option>
<option value="29"> 29
</option>
<option value="30"> 30
</option>
<option value="31"> 31
</option>
<option value="32"> 32
</option>
<option value="33"> 33
</option>
<option value="34"> 34
</option>
<option value="35"> 35
</option>
<option value="36"> 36
</option>
<option value="37"> 37
</option>
<option value="38"> 38
</option>
<option value="39"> 39
</option>
<option value="40"> 40
</option>
<option value="41"> 41
</option>
<option value="42"> 42
</option>
<option value="43"> 43
</option>
<option value="44"> 44
</option>
<option value="45"> 45
</option>
<option value="46"> 46
</option>
<option value="47"> 47
</option>
<option value="48"> 48
</option>
<option value="49"> 49
</option>
<option value="50"> 50
</option>
<option value="51"> 51
</option>
<option value="52"> 52
</option>
<option value="53"> 53
</option>
<option value="54"> 54
</option>
<option value="55"> 55
</option>
<option value="56"> 56
</option>
<option value="57"> 57
</option>
<option value="58"> 58
</option>
<option value="59"> 59
</option>
</select>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>提成（固定）：</label>
<div class="col-sm-3">
<div class="input-group">
<input class="form-control" name="driverLevelDetails[0].money" type="number" min="0" required="">
<span class="input-group-addon">元</span>
</div>
</div>
<div class="col-sm-3">
<div class="input-group">
<span class="input-group-addon">低于</span>
<input class="form-control" name="driverLevelDetails[0].minMoney" type="number" min="0">
<span class="input-group-addon">元不提成</span>
</div>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>提成（比例）：</label>
<div class="col-sm-3">
<div class="input-group">
<input class="form-control" name="driverLevelDetails[0].commission" type="number" min="0" max="100" required="">
<span class="input-group-addon">%</span>
</div>
</div>
<div class="col-sm-3">
<div class="input-group">
<span class="input-group-addon">低于</span>
<input class="form-control" name="driverLevelDetails[0].minCommission" type="number" min="0">
<span class="input-group-addon">元不提成</span>
</div>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label"><em>*</em>提成类型：</label>
<p class="form-control-static">
<label style="padding-right:20px;padding-left:15px;">
<input type="radio" name="driverLevelDetails[0].driverLevelType" value="guding" checked="checked">使用固定提成
</label>
<label>
<input type="radio" name="driverLevelDetails[0].driverLevelType" value="ticheng">使用比例提成
</label>
</p>
</div>
</fieldset>
</div>
<div class="form-group" style="margin-left:10px;">
<label class="col-sm-3 control-label"></label>
<input type="submit" class="btn btn-primary" value="保存">
<input type="button" class="btn btn-default" onclick="window.location.href = &#39;/driverlevel/list&#39;;" value="返回">
</div>
</form>
</div>
</div>
</div>
</div>
<div id="item-hour-div" style="display:none;">
<option value="0"> 00
</option>
<option value="1"> 01
</option>
<option value="2"> 02
</option>
<option value="3"> 03
</option>
<option value="4"> 04
</option>
<option value="5"> 05
</option>
<option value="6"> 06
</option>
<option value="7"> 07
</option>
<option value="8"> 08
</option>
<option value="9"> 09
</option>
<option value="10"> 10
</option>
<option value="11"> 11
</option>
<option value="12"> 12
</option>
<option value="13"> 13
</option>
<option value="14"> 14
</option>
<option value="15"> 15
</option>
<option value="16"> 16
</option>
<option value="17"> 17
</option>
<option value="18"> 18
</option>
<option value="19"> 19
</option>
<option value="20"> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</div>
<div id="item-minute-div" style="display:none;">
<option value="0"> 00
</option>
<option value="1"> 01
</option>
<option value="2"> 02
</option>
<option value="3"> 03
</option>
<option value="4"> 04
</option>
<option value="5"> 05
</option>
<option value="6"> 06
</option>
<option value="7"> 07
</option>
<option value="8"> 08
</option>
<option value="9"> 09
</option>
<option value="10"> 10
</option>
<option value="11"> 11
</option>
<option value="12"> 12
</option>
<option value="13"> 13
</option>
<option value="14"> 14
</option>
<option value="15"> 15
</option>
<option value="16"> 16
</option>
<option value="17"> 17
</option>
<option value="18"> 18
</option>
<option value="19"> 19
</option>
<option value="20"> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
<option value="24"> 24
</option>
<option value="25"> 25
</option>
<option value="26"> 26
</option>
<option value="27"> 27
</option>
<option value="28"> 28
</option>
<option value="29"> 29
</option>
<option value="30"> 30
</option>
<option value="31"> 31
</option>
<option value="32"> 32
</option>
<option value="33"> 33
</option>
<option value="34"> 34
</option>
<option value="35"> 35
</option>
<option value="36"> 36
</option>
<option value="37"> 37
</option>
<option value="38"> 38
</option>
<option value="39"> 39
</option>
<option value="40"> 40
</option>
<option value="41"> 41
</option>
<option value="42"> 42
</option>
<option value="43"> 43
</option>
<option value="44"> 44
</option>
<option value="45"> 45
</option>
<option value="46"> 46
</option>
<option value="47"> 47
</option>
<option value="48"> 48
</option>
<option value="49"> 49
</option>
<option value="50"> 50
</option>
<option value="51"> 51
</option>
<option value="52"> 52
</option>
<option value="53"> 53
</option>
<option value="54"> 54
</option>
<option value="55"> 55
</option>
<option value="56"> 56
</option>
<option value="57"> 57
</option>
<option value="58"> 58
</option>
<option value="59"> 59
</option>
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
如果您习惯于用IE浏览器，强烈建议您升级到 <a href="javascript:if(confirm('http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ �������·��������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages'" tppabs="http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages" title="" data-original-title="点击下载升级">最新的IE浏览器(10+)</a>
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
<script src="js/driverlevel.js" tppabs="js/driverlevel.js"></script>
<script type="text/javascript">
$(document).ready(function(){
});
</script>

</body></html>