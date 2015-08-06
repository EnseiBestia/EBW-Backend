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
<link rel="stylesheet" href="css/area.css" tppabs="css/area.css">
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
<div class="col-xs-12">
<button id="add-new-area" class="pull-right button button-rounded button-flat-blue"><i class="icon-plus"></i>&nbsp;添加新地区</button>
</div>
</div>
<div class="row margin-top area_container">
<form action="http://erescue.wabestway.com:8080/CPICRescue/area/save" class="form-horizontal" method="post">
<input type="hidden" name="id" value="5">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-heading">
<span class="name_span">绵阳</span>
<input type="text" value="绵阳" name="name" class="name_input" style="width:150px;display:none;">
<button type="button" data="5" class="deleteArea pull-right button button-pill button-flat-caution button-tiny"><span class="glyphicon glyphicon-remove"></span>&nbsp;删除</button>
<button type="button" class="area-add pull-right button button-pill button-flat-action button-tiny"><span class="glyphicon glyphicon-plus"></span>&nbsp;新增时间段</button>
<button type="button" class="area-edit pull-right button button-pill button-flat-primary button-tiny"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改</button>
<button type="submit" class="area-save pull-right button button-pill button-flat button-tiny"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</button>
</div>
<div class="panel-body time_panel_body">
<div class="item-length">
<div class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" href="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/area/list  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_539'" tppabs="http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_539">
展开
</a>
<span class="time_content">
开始救援时间（
<span class="this_startHour"> 07
</span>
<select name="chargeStartTimes[0].startHour" class="startHour_select bottom_border" style="display:none;">
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
<option value="7" selected=""> 07
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
：
<span class="this_startMinute"> 00
</span>
<select name="chargeStartTimes[0].startMinute" class="startMinute_select bottom_border" style="display:none;">
<option value="0" selected=""> 00
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
-
<span class="this_endHour"> 21
</span>
<select name="chargeStartTimes[0].endHour" class="endHour_select bottom_border" style="display:none;">
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
<option value="21" selected=""> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</select>
：
<span class="this_endMinute"> 00
</span>
<select name="chargeStartTimes[0].endMinute" class="endMinute_select bottom_border" style="display:none;">
<option value="0" selected=""> 00
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
）
起步价<span class="this_cost">19</span><input type="number" value="19" name="chargeStartTimes[0].cost" data-name="chargeStartTimes[0]" class="cost_input bottom_border" style="width:60px;display:none;" required="" min="0">元
</span>
<span class="time_button pull-right">
<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>
</span>
</h4>
</div>
<div id="collapseOne_539" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-condensed table-bordered">
<tbody><tr style="font-size:14px;">
<th>开始里程(公里)</th>
<th>结束里程(公里)</th>
<th>增长价(元)</th>
<th>操作</th>
</tr>
<tr class="distance_tr">
<td>0</td>
<td><span>5</span><input class="distance_td_distance" type="number" required="" value="5" style="display:none;"></td>
<td><span>20</span><input class="distance_td_money" type="number" required="" value="20" style="display:none;"></td>
<td>
<a href="javascript:;" class="distance_td_edit">修改</a>
<a href="javascript:;" class="distance_td_delete">删除</a>
</td>
</tr>
<tr class="distance_tr">
<td><span>5</span><input class="distance_td_distance_start" type="number" required="" value="5" style="display:none;"></td>
<td><span>5</span><input class="distance_td_distance" type="number" required="" value="5" style="display:none;"></td>
<td><span>20</span><input class="distance_td_money" type="number" required="" value="20" style="display:none;"></td>
<td>
<a href="javascript:;" class="distance_td_edit">修改</a>
<a href="javascript:;" class="distance_td_delete">删除</a>
</td>
</tr>
</tbody></table>
<hr>
<span class="time_content2">
超过（<span class="this_qblc">5</span><input type="number" value="5" name="chargeStartTimes[0].qblc" class="qblc_input bottom_border" style="width:60px;display:none;" required="" min="0">公里）
以后每<span class="this_djglUnit">1</span><input type="number" value="1" name="chargeStartTimes[0].djglUnit" class="djglUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">公里
（不足<span class="this_djglThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[0].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">公里不计费）
加收<span class="this_djglCost">20</span><input type="number" value="20" name="chargeStartTimes[0].djglCost" class="djglCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元。
免费等候<span class="this_mfdhsj">30</span><input type="number" value="30" name="chargeStartTimes[0].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟，
后每<span class="this_dhsjUnit">30</span><input type="number" value="30" name="chargeStartTimes[0].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟
（ 低于<span class="this_dhsjThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟不计费）
加收<span class="this_dhsjCost">20</span><input type="number" value="20" name="chargeStartTimes[0].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元！
</span>
</div>
</div>
</div>
</div>
</div>
<div class="item-length">
<div class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" href="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/area/list  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_540'" tppabs="http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_540">
展开
</a>
<span class="time_content">
开始救援时间（
<span class="this_startHour"> 21
</span>
<select name="chargeStartTimes[1].startHour" class="startHour_select bottom_border" style="display:none;">
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
<option value="21" selected=""> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</select>
：
<span class="this_startMinute"> 01
</span>
<select name="chargeStartTimes[1].startMinute" class="startMinute_select bottom_border" style="display:none;">
<option value="0"> 00
</option>
<option value="1" selected=""> 01
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
-
<span class="this_endHour"> 06
</span>
<select name="chargeStartTimes[1].endHour" class="endHour_select bottom_border" style="display:none;">
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
<option value="6" selected=""> 06
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
：
<span class="this_endMinute"> 59
</span>
<select name="chargeStartTimes[1].endMinute" class="endMinute_select bottom_border" style="display:none;">
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
<option value="59" selected=""> 59
</option>
</select>
）
起步价<span class="this_cost">29</span><input type="number" value="29" name="chargeStartTimes[1].cost" data-name="chargeStartTimes[1]" class="cost_input bottom_border" style="width:60px;display:none;" required="" min="0">元
</span>
<span class="time_button pull-right">
<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>
</span>
</h4>
</div>
<div id="collapseOne_540" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-condensed table-bordered">
<tbody><tr style="font-size:14px;">
<th>开始里程(公里)</th>
<th>结束里程(公里)</th>
<th>增长价(元)</th>
<th>操作</th>
</tr>
<tr class="distance_tr">
<td>0</td>
<td><span>5</span><input class="distance_td_distance" type="number" required="" value="5" style="display:none;"></td>
<td><span>20</span><input class="distance_td_money" type="number" required="" value="20" style="display:none;"></td>
<td>
<a href="javascript:;" class="distance_td_edit">修改</a>
<a href="javascript:;" class="distance_td_delete">删除</a>
</td>
</tr>
<tr class="distance_tr">
<td><span>5</span><input class="distance_td_distance_start" type="number" required="" value="5" style="display:none;"></td>
<td><span>5</span><input class="distance_td_distance" type="number" required="" value="5" style="display:none;"></td>
<td><span>20</span><input class="distance_td_money" type="number" required="" value="20" style="display:none;"></td>
<td>
<a href="javascript:;" class="distance_td_edit">修改</a>
<a href="javascript:;" class="distance_td_delete">删除</a>
</td>
</tr>
</tbody></table>
<hr>
<span class="time_content2">
超过（<span class="this_qblc">10</span><input type="number" value="10" name="chargeStartTimes[1].qblc" class="qblc_input bottom_border" style="width:60px;display:none;" required="" min="0">公里）
以后每<span class="this_djglUnit">5</span><input type="number" value="5" name="chargeStartTimes[1].djglUnit" class="djglUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">公里
（不足<span class="this_djglThresholdt">1</span><input type="number" value="1" name="chargeStartTimes[1].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">公里不计费）
加收<span class="this_djglCost">20</span><input type="number" value="20" name="chargeStartTimes[1].djglCost" class="djglCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元。
免费等候<span class="this_mfdhsj">30</span><input type="number" value="30" name="chargeStartTimes[1].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟，
后每<span class="this_dhsjUnit">30</span><input type="number" value="30" name="chargeStartTimes[1].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟
（ 低于<span class="this_dhsjThresholdt">1</span><input type="number" value="1" name="chargeStartTimes[1].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟不计费）
加收<span class="this_dhsjCost">20</span><input type="number" value="20" name="chargeStartTimes[1].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元！
</span>
</div>
</div>
</div>
</div>
</div>
<h4 class="text-primary">收费说明：</h4>
<p class="text-muted">
<span class="memo_span">南充市收费标准！</span>
<textarea class="memo_textarea" cols="100" rows="5" style="display:none;" name="memo">南充市收费标准！</textarea>
</p>
</div>
</div>
</div>
</form>
<form action="http://erescue.wabestway.com:8080/CPICRescue/area/save" class="form-horizontal" method="post">
<input type="hidden" name="id" value="36">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-heading">
<span class="name_span">洛阳市</span>
<input type="text" value="洛阳市" name="name" class="name_input" style="width:150px;display:none;" required="">
<button type="button" data="36" class="deleteArea pull-right button button-pill button-flat-caution button-tiny"><span class="glyphicon glyphicon-remove"></span>&nbsp;删除</button>
<button type="button" class="area-add pull-right button button-pill button-flat-action button-tiny"><span class="glyphicon glyphicon-plus"></span>&nbsp;新增时间段</button>
<button type="button" class="area-edit pull-right button button-pill button-flat-primary button-tiny"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改</button>
<button type="submit" class="area-save pull-right button button-pill button-flat button-tiny"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</button>
</div>
<div class="panel-body time_panel_body">
<div class="item-length">
<div class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" href="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/area/list  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_521'" tppabs="http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_521">
展开
</a>
<span class="time_content">
开始救援时间（
<span class="this_startHour"> 07
</span>
<select name="chargeStartTimes[0].startHour" class="startHour_select bottom_border" style="display:none;">
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
<option value="7" selected=""> 07
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
：
<span class="this_startMinute"> 00
</span>
<select name="chargeStartTimes[0].startMinute" class="startMinute_select bottom_border" style="display:none;">
<option value="0" selected=""> 00
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
-
<span class="this_endHour"> 20
</span>
<select name="chargeStartTimes[0].endHour" class="endHour_select bottom_border" style="display:none;">
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
<option value="20" selected=""> 20
</option>
<option value="21"> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</select>
：
<span class="this_endMinute"> 59
</span>
<select name="chargeStartTimes[0].endMinute" class="endMinute_select bottom_border" style="display:none;">
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
<option value="59" selected=""> 59
</option>
</select>
）
起步价<span class="this_cost">19</span><input type="number" value="19" name="chargeStartTimes[0].cost" data-name="chargeStartTimes[0]" class="cost_input bottom_border" style="width:60px;display:none;" required="" min="0">元
</span>
<span class="time_button pull-right">
<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>
</span>
</h4>
</div>
<div id="collapseOne_521" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-condensed table-bordered">
<tbody><tr style="font-size:14px;">
<th>开始里程(公里)</th>
<th>结束里程(公里)</th>
<th>增长价(元)</th>
<th>操作</th>
</tr>
</tbody></table>
<hr>
<span class="time_content2">
超过（<span class="this_qblc">0</span><input type="number" value="0" name="chargeStartTimes[0].qblc" class="qblc_input bottom_border" style="width:60px;display:none;" required="" min="0">公里）
以后每<span class="this_djglUnit">0</span><input type="number" value="0" name="chargeStartTimes[0].djglUnit" class="djglUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">公里
（不足<span class="this_djglThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[0].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">公里不计费）
加收<span class="this_djglCost">0</span><input type="number" value="0" name="chargeStartTimes[0].djglCost" class="djglCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元。
免费等候<span class="this_mfdhsj">0</span><input type="number" value="0" name="chargeStartTimes[0].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟，
后每<span class="this_dhsjUnit">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟
（ 低于<span class="this_dhsjThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟不计费）
加收<span class="this_dhsjCost">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元！
</span>
</div>
</div>
</div>
</div>
</div>
<div class="item-length">
<div class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" href="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/area/list  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_522'" tppabs="http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_522">
展开
</a>
<span class="time_content">
开始救援时间（
<span class="this_startHour"> 21
</span>
<select name="chargeStartTimes[1].startHour" class="startHour_select bottom_border" style="display:none;">
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
<option value="21" selected=""> 21
</option>
<option value="22"> 22
</option>
<option value="23"> 23
</option>
</select>
：
<span class="this_startMinute"> 00
</span>
<select name="chargeStartTimes[1].startMinute" class="startMinute_select bottom_border" style="display:none;">
<option value="0" selected=""> 00
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
-
<span class="this_endHour"> 06
</span>
<select name="chargeStartTimes[1].endHour" class="endHour_select bottom_border" style="display:none;">
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
<option value="6" selected=""> 06
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
：
<span class="this_endMinute"> 59
</span>
<select name="chargeStartTimes[1].endMinute" class="endMinute_select bottom_border" style="display:none;">
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
<option value="59" selected=""> 59
</option>
</select>
）
起步价<span class="this_cost">29</span><input type="number" value="29" name="chargeStartTimes[1].cost" data-name="chargeStartTimes[1]" class="cost_input bottom_border" style="width:60px;display:none;" required="" min="0">元
</span>
<span class="time_button pull-right">
<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>
</span>
</h4>
</div>
<div id="collapseOne_522" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-condensed table-bordered">
<tbody><tr style="font-size:14px;">
<th>开始里程(公里)</th>
<th>结束里程(公里)</th>
<th>增长价(元)</th>
<th>操作</th>
</tr>
</tbody></table>
<hr>
<span class="time_content2">
超过（<span class="this_qblc">0</span><input type="number" value="0" name="chargeStartTimes[1].qblc" class="qblc_input bottom_border" style="width:60px;display:none;" required="" min="0">公里）
以后每<span class="this_djglUnit">0</span><input type="number" value="0" name="chargeStartTimes[1].djglUnit" class="djglUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">公里
（不足<span class="this_djglThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[1].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">公里不计费）
加收<span class="this_djglCost">0</span><input type="number" value="0" name="chargeStartTimes[1].djglCost" class="djglCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元。
免费等候<span class="this_mfdhsj">0</span><input type="number" value="0" name="chargeStartTimes[1].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟，
后每<span class="this_dhsjUnit">0</span><input type="number" value="0" name="chargeStartTimes[1].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟
（ 低于<span class="this_dhsjThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[1].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟不计费）
加收<span class="this_dhsjCost">0</span><input type="number" value="0" name="chargeStartTimes[1].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元！
</span>
</div>
</div>
</div>
</div>
</div>
<h4 class="text-primary">收费说明：</h4>
<p class="text-muted">
<span class="memo_span">超过（5公里） 以后每5公里 加收20元。 等候30分钟后，加收20，每30分钟 （ 低于30分钟不计费） 加收20元！</span>
<textarea class="memo_textarea" cols="100" rows="5" style="display:none;" name="memo">超过（5公里） 以后每5公里 加收20元。 等候30分钟后，加收20，每30分钟 （ 低于30分钟不计费） 加收20元！</textarea>
</p>
</div>
</div>
</div>
</form>
<form action="http://erescue.wabestway.com:8080/CPICRescue/area/save" class="form-horizontal" method="post">
<input type="hidden" name="id" value="70">
<div class="col-md-12">
<div class="panel panel-default">
<div class="panel-heading">
<span class="name_span">北京市</span>
<input type="text" value="北京市" name="name" class="name_input" style="width:150px;display:none;" required="">
<button type="button" data="70" class="deleteArea pull-right button button-pill button-flat-caution button-tiny"><span class="glyphicon glyphicon-remove"></span>&nbsp;删除</button>
<button type="button" class="area-add pull-right button button-pill button-flat-action button-tiny"><span class="glyphicon glyphicon-plus"></span>&nbsp;新增时间段</button>
<button type="button" class="area-edit pull-right button button-pill button-flat-primary button-tiny"><span class="glyphicon glyphicon-edit"></span>&nbsp;修改</button>
<button type="submit" class="area-save pull-right button button-pill button-flat button-tiny"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</button>
</div>
<div class="panel-body time_panel_body">
<div class="item-length">
<div class="panel-group">
<div class="panel panel-default">
<div class="panel-heading">
<h4 class="panel-title">
<a data-toggle="collapse" href="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/area/list  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_553'" tppabs="http://erescue.wabestway.com:8080/CPICRescue/area/list#collapseOne_553">
展开
</a>
<span class="time_content">
开始救援时间（
<span class="this_startHour"> 00
</span>
<select name="chargeStartTimes[0].startHour" class="startHour_select bottom_border" style="display:none;">
<option value="0" selected=""> 00
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
：
<span class="this_startMinute"> 00
</span>
<select name="chargeStartTimes[0].startMinute" class="startMinute_select bottom_border" style="display:none;">
<option value="0" selected=""> 00
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
-
<span class="this_endHour"> 23
</span>
<select name="chargeStartTimes[0].endHour" class="endHour_select bottom_border" style="display:none;">
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
<option value="23" selected=""> 23
</option>
</select>
：
<span class="this_endMinute"> 59
</span>
<select name="chargeStartTimes[0].endMinute" class="endMinute_select bottom_border" style="display:none;">
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
<option value="59" selected=""> 59
</option>
</select>
）
起步价<span class="this_cost">39</span><input type="number" value="39" name="chargeStartTimes[0].cost" data-name="chargeStartTimes[0]" class="cost_input bottom_border" style="width:60px;display:none;" required="" min="0">元
</span>
<span class="time_button pull-right">
<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>
<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>
</span>
</h4>
</div>
<div id="collapseOne_553" class="panel-collapse collapse in">
<div class="panel-body">
<table class="table table-condensed table-bordered">
<tbody><tr style="font-size:14px;">
<th>开始里程(公里)</th>
<th>结束里程(公里)</th>
<th>增长价(元)</th>
<th>操作</th>
</tr>
</tbody></table>
<hr>
<span class="time_content2">
超过（<span class="this_qblc">0</span><input type="number" value="0" name="chargeStartTimes[0].qblc" class="qblc_input bottom_border" style="width:60px;display:none;" required="" min="0">公里）
以后每<span class="this_djglUnit">0</span><input type="number" value="0" name="chargeStartTimes[0].djglUnit" class="djglUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">公里
（不足<span class="this_djglThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[0].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">公里不计费）
加收<span class="this_djglCost">0</span><input type="number" value="0" name="chargeStartTimes[0].djglCost" class="djglCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元。
免费等候<span class="this_mfdhsj">0</span><input type="number" value="0" name="chargeStartTimes[0].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟，
后每<span class="this_dhsjUnit">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟
（ 低于<span class="this_dhsjThresholdt">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;display:none;" required="" min="0">分钟不计费）
加收<span class="this_dhsjCost">0</span><input type="number" value="0" name="chargeStartTimes[0].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;display:none;" required="" min="0">元！
</span>
</div>
</div>
</div>
</div>
</div>
<h4 class="text-primary">收费说明：</h4>
<p class="text-muted">
<span class="memo_span"></span>
<textarea class="memo_textarea" cols="100" rows="5" style="display:none;" name="memo"></textarea>
</p>
</div>
</div>
</div>
</form>
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
<audio id="new_order_play" src="../assets/audio/new_msg.mp3" tppabs="http://erescue.wabestway.com:8080/assets/audio/new_msg.mp3" hidden="true"></audio>
<div class="lc-box hidden-xs" style="top: 12px; position: absolute;">
<span class="lc-info gcinfo1">未分派工单:1</span>
<span class="lc-info gcinfo2">执行中工单:0</span>
<span class="lc-info gcinfo3">已完成工单:1</span>
<span class="lc-info gcinfo4">今日总收入:39</span>
<span class="lc-info gcinfo5 hidden-sm">空闲救援员:0</span>
<span class="lc-info gcinfo6 hidden-sm">忙碌救援员:0</span>
</div>
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
<script src="js/area.js" tppabs="js/area.js"></script>
<script type="text/javascript">
var dv;
var dvitem
function deleteArea() {
$.post('/area/delete',{'id':dv},function(data){
if(data.success){
$.scojs_message('地区删除成功', $.scojs_message.TYPE_OK);
window.location="http://erescue.wabestway.com:8080/area/list";//强制刷新
} else {
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
}
function deleteAreaNew() {
window.location="http://erescue.wabestway.com:8080/area/list";//强制刷新
}
function deleteAreaItem() {
$.post('/area/deleteitem',{'id':dvitem},function(data){
if(data.success){
$.scojs_message('时间段删除成功', $.scojs_message.TYPE_OK);
window.location="http://erescue.wabestway.com:8080/area/list";//强制刷新
} else {
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
}
$(document).ready(function(){
$(document).on('click','.deleteArea',function(){
dv = $(this).attr('data');
var confirm = $.scojs_confirm({
content: "你真的要删除该计费规则吗？",
action:deleteArea
});
confirm.show();
});
$(document).on('click','.deleteArea-item',function(){
dvitem = $(this).attr('data');
var confirm = $.scojs_confirm({
content: "你真的要删除该时间段吗？",
action:deleteAreaItem
});
confirm.show();
});
$(document).on('click','.deleteArea-new',function(){
dv = $(this).attr('data');
var confirm = $.scojs_confirm({
content: "你真的要删除该计费规则吗？",
action:deleteAreaNew
});
confirm.show();
});
});
</script>

</body></html>