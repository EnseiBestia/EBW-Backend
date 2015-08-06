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
<div class="col-md-2">
<ul class="list-group">
<li class="list-group-item"><a href="statistics.jsp" tppabs="statistics.jsp">工单走势</a></li>
<li class="list-group-item"><a href="statistics_orderCount.jsp" tppabs="statistics_orderCount.jsp">工单统计</a></li>
<li class="list-group-item"><a href="statistics_orderType.jsp" tppabs="statistics_orderType.jsp">工单类型统计</a></li>
<li class="list-group-item"><a href="statistics_customerType.jsp" tppabs="statistics_customerType.jsp">客户类型统计</a></li>
<li class="list-group-item"><a href="statistics_orderSource.jsp" tppabs="statistics_orderSource.jsp">工单来源统计</a></li>
<li class="list-group-item"><a href="statistics_driverOnline.jsp" tppabs="statistics_driverOnline.jsp">救援人员在线时间统计</a></li>
</ul>
</div>
<div class="col-md-10">
<div class="row">
<div class="col-md-12">
<form id="submit_form" class="form-horizontal" role="form">
<div class="form-group">
<label class="control-label clearfix" for="year">年</label>
<div class="col-sm-3">
<select name="year" class="form-control" id="year">
<option value="2015">2015</option>
<option value="2014">2014</option>
</select>
</div>
</div>
</form>
</div>
</div>
<div class="row">
<div class="col-xs-12">
<div id="chart" data-highcharts-chart="0"><div class="highcharts-container" id="highcharts-0" style="position: relative; overflow: hidden; width: 1072px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);"><svg version="1.1" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Arial, Helvetica, sans-serif;font-size:12px;" xmlns="http://www.w3.org/2000/svg" width="1072" height="400"><desc>Created with Highcharts 4.0.1</desc><defs><clippath id="highcharts-1"><rect x="0" y="0" width="911" height="298"></rect></clippath></defs><rect x="0" y="0" width="1072" height="400" strokeWidth="0" fill="#FFFFFF" class=" highcharts-background"></rect><g class="highcharts-button" style="cursor:default;" stroke-linecap="round" transform="translate(1038,10)"><title>Chart context menu</title><rect x="0.5" y="0.5" width="24" height="22" strokeWidth="1" fill="white" stroke-width="1" stroke="none" rx="2" ry="2"></rect><path fill="#E0E0E0" d="M 6 6.5 L 20 6.5 M 6 11.5 L 20 11.5 M 6 16.5 L 20 16.5" stroke="#666" stroke-width="3" zIndex="1"></path><text x="0" zIndex="1" style="color:black;fill:black;" y="13"></text></g><path fill="rgba(67,67,72,0.25)" d="M 571.4583333333333 291.4 C 584.7783333333333 291.4 584.7783333333333 311.4 571.4583333333333 311.4 C 558.1383333333332 311.4 558.1383333333332 291.4 571.4583333333333 291.4 Z"></path><path fill="rgba(144,237,125,0.25)" d="M 571.4583333333333 291.4 C 584.7783333333333 291.4 584.7783333333333 311.4 571.4583333333333 311.4 C 558.1383333333332 311.4 558.1383333333332 291.4 571.4583333333333 291.4 Z"></path><g class="highcharts-grid" zIndex="1"></g><g class="highcharts-grid" zIndex="1"><path fill="none" d="M 78 62.5 L 989 62.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 123.5 L 989 123.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 182.5 L 989 182.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 242.5 L 989 242.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 301.5 L 989 301.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 361.5 L 989 361.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path></g><g class="highcharts-grid" zIndex="1"><path fill="none" d="M 78 62.5 L 989 62.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 123.5 L 989 123.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 182.5 L 989 182.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 242.5 L 989 242.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 301.5 L 989 301.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path><path fill="none" d="M 78 361.5 L 989 361.5" stroke="#C0C0C0" stroke-width="1" zIndex="1" opacity="1"></path></g><g class="highcharts-axis" zIndex="2"><path fill="none" d="M 229.5 361 L 229.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 305.5 361 L 305.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 381.5 361 L 381.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 457.5 361 L 457.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 533.5 361 L 533.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 608.5 361 L 608.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 684.5 361 L 684.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 760.5 361 L 760.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 836.5 361 L 836.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 912.5 361 L 912.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 988.5 361 L 988.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 153.5 361 L 153.5 371" stroke="#C0D0E0" stroke-width="1" opacity="1"></path><path fill="none" d="M 77.5 361 L 77.5 371" stroke="#C0D0E0" stroke-width="1" opacity="undefined"></path><path fill="none" d="M 78 361.5 L 989 361.5" stroke="#C0D0E0" stroke-width="1" zIndex="7" visibility="visible"></path></g><g class="highcharts-axis" zIndex="2"><text x="26" zIndex="7" text-anchor="middle" transform="translate(0,0) rotate(270 26 212)" class=" highcharts-yaxis-title" style="color:#434348;fill:#434348;" visibility="visible" y="212">单量</text></g><g class="highcharts-axis" zIndex="2"><text x="1046" zIndex="7" text-anchor="middle" transform="translate(0,0) rotate(90 1046 212)" class=" highcharts-yaxis-title" style="color:#7cb5ec;fill:#7cb5ec;" visibility="visible" y="212">总价</text></g><g class="highcharts-series-group" zIndex="3"><g class="highcharts-series highcharts-tracker" visibility="visible" zIndex="0.1" transform="translate(78,63) scale(1 1)" style="cursor:pointer;" clip-path="url(#highcharts-1)"><rect x="19.5" y="66.5" width="37" height="232" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="95.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="171.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="246.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="322.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="398.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="474.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="rgba(149,206,255,1)" rx="0" ry="0" stroke-width="1"></rect><rect x="550.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="626.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="702.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="778.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect><rect x="854.5" y="298.5" width="37" height="0" stroke="#FFFFFF" fill="#7cb5ec" rx="0" ry="0" stroke-width="1"></rect></g><g class="highcharts-markers" visibility="visible" zIndex="0.1" transform="translate(78,63) scale(1 1)" clip-path="none"></g><g class="highcharts-series" visibility="visible" zIndex="0.1" transform="translate(78,63) scale(1 1)" clip-path="url(#highcharts-1)"><path fill="none" d="M 37.958333333333336 178.8 C 37.958333333333336 178.8 83.50833333333334 238.4 113.875 238.4 C 144.24166666666667 238.4 159.425 238.4 189.79166666666669 238.4 C 220.1583333333333 238.4 235.3416666666667 238.4 265.7083333333333 238.4 C 296.075 238.4 311.2583333333333 238.4 341.625 238.4 C 371.9916666666667 238.4 387.175 238.4 417.5416666666667 238.4 C 447.9083333333333 238.4 463.0916666666667 238.4 493.4583333333333 238.4 C 523.825 238.4 539.0083333333334 238.4 569.3750000000001 238.4 C 599.7416666666668 238.4 614.9250000000001 238.4 645.2916666666667 238.4 C 675.6583333333334 238.4 690.8416666666667 238.4 721.2083333333334 238.4 C 751.575 238.4 766.7583333333334 238.4 797.1250000000001 238.4 C 827.4916666666668 238.4 873.0416666666667 238.4 873.0416666666667 238.4" stroke="#434348" stroke-width="2" zIndex="1" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 27.958333333333336 178.8 L 37.958333333333336 178.8 C 37.958333333333336 178.8 83.50833333333334 238.4 113.875 238.4 C 144.24166666666667 238.4 159.425 238.4 189.79166666666669 238.4 C 220.1583333333333 238.4 235.3416666666667 238.4 265.7083333333333 238.4 C 296.075 238.4 311.2583333333333 238.4 341.625 238.4 C 371.9916666666667 238.4 387.175 238.4 417.5416666666667 238.4 C 447.9083333333333 238.4 463.0916666666667 238.4 493.4583333333333 238.4 C 523.825 238.4 539.0083333333334 238.4 569.3750000000001 238.4 C 599.7416666666668 238.4 614.9250000000001 238.4 645.2916666666667 238.4 C 675.6583333333334 238.4 690.8416666666667 238.4 721.2083333333334 238.4 C 751.575 238.4 766.7583333333334 238.4 797.1250000000001 238.4 C 827.4916666666668 238.4 873.0416666666667 238.4 873.0416666666667 238.4 L 883.0416666666667 238.4" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="22" zIndex="2" class=" highcharts-tracker" style="cursor:pointer;"></path></g><g class="highcharts-markers highcharts-tracker" visibility="visible" zIndex="0.1" transform="translate(78,63) scale(1 1)" clip-path="none" style="cursor:pointer;"><path fill="#434348" d="M 873 234.4 C 878.328 234.4 878.328 242.4 873 242.4 C 867.672 242.4 867.672 234.4 873 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 797 234.4 C 802.328 234.4 802.328 242.4 797 242.4 C 791.672 242.4 791.672 234.4 797 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 721 234.4 C 726.328 234.4 726.328 242.4 721 242.4 C 715.672 242.4 715.672 234.4 721 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 645.2916666666667 234.4 C 650.6196666666667 234.4 650.6196666666667 242.4 645.2916666666667 242.4 C 639.9636666666668 242.4 639.9636666666668 234.4 645.2916666666667 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 569.3750000000001 234.4 C 574.7030000000001 234.4 574.7030000000001 242.4 569.3750000000001 242.4 C 564.0470000000001 242.4 564.0470000000001 234.4 569.3750000000001 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 493.4583333333333 232.4 C 501.45033333333333 232.4 501.45033333333333 244.4 493.4583333333333 244.4 C 485.4663333333333 244.4 485.4663333333333 232.4 493.4583333333333 232.4 Z" stroke="#FFFFFF" stroke-width="1"></path><path fill="#434348" d="M 417.5416666666667 234.4 C 422.86966666666666 234.4 422.86966666666666 242.4 417.5416666666667 242.4 C 412.2136666666667 242.4 412.2136666666667 234.4 417.5416666666667 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 341.625 234.4 C 346.953 234.4 346.953 242.4 341.625 242.4 C 336.297 242.4 336.297 234.4 341.625 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 265.7083333333333 234.4 C 271.0363333333333 234.4 271.0363333333333 242.4 265.7083333333333 242.4 C 260.38033333333334 242.4 260.38033333333334 234.4 265.7083333333333 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 189.79166666666669 234.4 C 195.1196666666667 234.4 195.1196666666667 242.4 189.79166666666669 242.4 C 184.46366666666668 242.4 184.46366666666668 234.4 189.79166666666669 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 113.875 234.4 C 119.203 234.4 119.203 242.4 113.875 242.4 C 108.547 242.4 108.547 234.4 113.875 234.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#434348" d="M 37.958333333333336 174.8 C 43.28633333333334 174.8 43.28633333333334 182.8 37.958333333333336 182.8 C 32.63033333333333 182.8 32.63033333333333 174.8 37.958333333333336 174.8 Z" stroke="#FFFFFF" stroke-width="0.00001"></path></g><g class="highcharts-series" visibility="visible" zIndex="0.1" transform="translate(78,63) scale(1 1)" clip-path="url(#highcharts-1)"><path fill="none" d="M 37.958333333333336 238.4 C 37.958333333333336 238.4 83.50833333333334 238.4 113.875 238.4 C 144.24166666666667 238.4 159.425 238.4 189.79166666666669 238.4 C 220.1583333333333 238.4 235.3416666666667 238.4 265.7083333333333 238.4 C 296.075 238.4 311.2583333333333 238.4 341.625 238.4 C 371.9916666666667 238.4 387.175 238.4 417.5416666666667 238.4 C 447.9083333333333 238.4 463.0916666666667 238.4 493.4583333333333 238.4 C 523.825 238.4 539.0083333333334 238.4 569.3750000000001 238.4 C 599.7416666666668 238.4 614.9250000000001 238.4 645.2916666666667 238.4 C 675.6583333333334 238.4 690.8416666666667 238.4 721.2083333333334 238.4 C 751.575 238.4 766.7583333333334 238.4 797.1250000000001 238.4 C 827.4916666666668 238.4 873.0416666666667 238.4 873.0416666666667 238.4" stroke="#90ed7d" stroke-width="2" zIndex="1" stroke-linejoin="round" stroke-linecap="round"></path><path fill="none" d="M 27.958333333333336 238.4 L 37.958333333333336 238.4 C 37.958333333333336 238.4 83.50833333333334 238.4 113.875 238.4 C 144.24166666666667 238.4 159.425 238.4 189.79166666666669 238.4 C 220.1583333333333 238.4 235.3416666666667 238.4 265.7083333333333 238.4 C 296.075 238.4 311.2583333333333 238.4 341.625 238.4 C 371.9916666666667 238.4 387.175 238.4 417.5416666666667 238.4 C 447.9083333333333 238.4 463.0916666666667 238.4 493.4583333333333 238.4 C 523.825 238.4 539.0083333333334 238.4 569.3750000000001 238.4 C 599.7416666666668 238.4 614.9250000000001 238.4 645.2916666666667 238.4 C 675.6583333333334 238.4 690.8416666666667 238.4 721.2083333333334 238.4 C 751.575 238.4 766.7583333333334 238.4 797.1250000000001 238.4 C 827.4916666666668 238.4 873.0416666666667 238.4 873.0416666666667 238.4 L 883.0416666666667 238.4" stroke-linejoin="round" visibility="visible" stroke="rgba(192,192,192,0.0001)" stroke-width="22" zIndex="2" class=" highcharts-tracker" style="cursor:pointer;"></path></g><g class="highcharts-markers highcharts-tracker" visibility="visible" zIndex="0.1" transform="translate(78,63) scale(1 1)" clip-path="none" style="cursor:pointer;"><path fill="#90ed7d" d="M 873 234.4 L 877 238.4 873 242.4 869 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 797 234.4 L 801 238.4 797 242.4 793 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 721 234.4 L 725 238.4 721 242.4 717 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 645.2916666666667 234.4 L 649.2916666666667 238.4 645.2916666666667 242.4 641.2916666666667 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 569.3750000000001 234.4 L 573.3750000000001 238.4 569.3750000000001 242.4 565.3750000000001 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 493.4583333333333 232.4 L 499.4583333333333 238.4 493.4583333333333 244.4 487.4583333333333 238.4 Z" stroke="#FFFFFF" stroke-width="1"></path><path fill="#90ed7d" d="M 417.5416666666667 234.4 L 421.5416666666667 238.4 417.5416666666667 242.4 413.5416666666667 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 341.625 234.4 L 345.625 238.4 341.625 242.4 337.625 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 265.7083333333333 234.4 L 269.7083333333333 238.4 265.7083333333333 242.4 261.7083333333333 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 189.79166666666669 234.4 L 193.79166666666669 238.4 189.79166666666669 242.4 185.79166666666669 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 113.875 234.4 L 117.875 238.4 113.875 242.4 109.875 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><path fill="#90ed7d" d="M 37.958333333333336 234.4 L 41.958333333333336 238.4 37.958333333333336 242.4 33.958333333333336 238.4 Z" stroke="#FFFFFF" stroke-width="0.00001"></path></g></g><text x="536" text-anchor="middle" class="highcharts-title" zIndex="4" style="color:#333333;font-size:18px;fill:#333333;width:1008px;" y="25">救援工单统计图</text><text x="536" text-anchor="middle" class="highcharts-subtitle" zIndex="4" style="color:#555555;fill:#555555;width:1008px;" y="47">2014年</text><g class="highcharts-legend" zIndex="7" transform="translate(130,110)"><rect x="0" y="0" width="76" height="59" strokeWidth="0" stroke="#909090" stroke-width="0.00001" fill="#FFFFFF" visibility="visible"></rect><g zIndex="1"><g><g class="highcharts-legend-item" zIndex="1" transform="translate(8,3)"><text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" zIndex="2">金额</text><rect x="0" y="4" width="16" height="12" zIndex="3" fill="#7cb5ec"></rect></g><g class="highcharts-legend-item" zIndex="1" transform="translate(8,19)"><path fill="none" d="M 0 11 L 16 11" stroke-width="2" stroke="#434348"></path><path fill="#434348" d="M 8 7 C 13.328 7 13.328 15 8 15 C 2.6719999999999997 15 2.6719999999999997 7 8 7 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" zIndex="2">单量</text></g><g class="highcharts-legend-item" zIndex="1" transform="translate(8,35)"><path fill="none" d="M 0 11 L 16 11" stroke-width="2" stroke="#90ed7d"></path><path fill="#90ed7d" d="M 8 7 L 12 11 8 15 4 11 Z" stroke="#FFFFFF" stroke-width="0.00001"></path><text x="21" y="15" style="color:#333333;font-size:12px;font-weight:bold;cursor:pointer;fill:#333333;" text-anchor="start" zIndex="2">已销单</text></g></g></g></g><g class="highcharts-axis-labels highcharts-xaxis-labels" zIndex="7"><text x="115.95833333333334" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">1月</text><text x="191.875" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">2月</text><text x="267.7916666666667" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">3月</text><text x="343.70833333333337" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">4月</text><text x="419.625" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">5月</text><text x="495.5416666666667" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">6月</text><text x="571.4583333333334" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">7月</text><text x="647.375" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">8月</text><text x="723.2916666666667" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">9月</text><text x="799.2083333333334" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">10月</text><text x="875.125" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">11月</text><text x="951.0416666666667" text-anchor="middle" style="width:56px;color:#606060;cursor:default;font-size:11px;fill:#606060;" y="381" opacity="1">12月</text></g><g class="highcharts-axis-labels highcharts-yaxis-labels" zIndex="7"><text x="63" text-anchor="end" style="width:334px;color:#434348;cursor:default;font-size:11px;fill:#434348;" y="365" opacity="1">-1单</text><text x="63" text-anchor="end" style="width:334px;color:#434348;cursor:default;font-size:11px;fill:#434348;" y="305.4" opacity="1">0单</text><text x="63" text-anchor="end" style="width:334px;color:#434348;cursor:default;font-size:11px;fill:#434348;" y="245.8" opacity="1">1单</text><text x="63" text-anchor="end" style="width:334px;color:#434348;cursor:default;font-size:11px;fill:#434348;" y="186.2" opacity="1">2单</text><text x="63" text-anchor="end" style="width:334px;color:#434348;cursor:default;font-size:11px;fill:#434348;" y="126.6" opacity="1">3单</text><text x="63" text-anchor="end" style="width:334px;color:#434348;cursor:default;font-size:11px;fill:#434348;" y="67" opacity="1">4单</text></g><g class="highcharts-axis-labels highcharts-yaxis-labels" zIndex="7"><text x="1004" text-anchor="start" style="width:334px;color:#7cb5ec;cursor:default;font-size:11px;fill:#7cb5ec;" y="365" opacity="1"><tspan>0 元</tspan></text><text x="1004" text-anchor="start" style="width:334px;color:#7cb5ec;cursor:default;font-size:11px;fill:#7cb5ec;" y="305.4" opacity="1"><tspan>10 元</tspan></text><text x="1004" text-anchor="start" style="width:334px;color:#7cb5ec;cursor:default;font-size:11px;fill:#7cb5ec;" y="245.8" opacity="1"><tspan>20 元</tspan></text><text x="1004" text-anchor="start" style="width:334px;color:#7cb5ec;cursor:default;font-size:11px;fill:#7cb5ec;" y="186.2" opacity="1"><tspan>30 元</tspan></text><text x="1004" text-anchor="start" style="width:334px;color:#7cb5ec;cursor:default;font-size:11px;fill:#7cb5ec;" y="126.6" opacity="1"><tspan>40 元</tspan></text><text x="1004" text-anchor="start" style="width:334px;color:#7cb5ec;cursor:default;font-size:11px;fill:#7cb5ec;" y="67" opacity="1"><tspan>50 元</tspan></text></g><g class="highcharts-tooltip" zIndex="8" style="cursor:default;padding:0;white-space:nowrap;" transform="translate(471,318)" opacity="1" visibility="visible"><path fill="none" d="M 3.5 0.5 L 93.5 0.5 C 96.5 0.5 96.5 0.5 96.5 3.5 L 96.5 77.5 C 96.5 80.5 96.5 80.5 93.5 80.5 L 3.5 80.5 C 0.5 80.5 0.5 80.5 0.5 77.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke-width="5" isShadow="true" stroke="black" stroke-opacity="0.049999999999999996" transform="translate(1, 1)" width="96" height="80"></path><path fill="none" d="M 3.5 0.5 L 93.5 0.5 C 96.5 0.5 96.5 0.5 96.5 3.5 L 96.5 77.5 C 96.5 80.5 96.5 80.5 93.5 80.5 L 3.5 80.5 C 0.5 80.5 0.5 80.5 0.5 77.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke-width="3" isShadow="true" stroke="black" stroke-opacity="0.09999999999999999" transform="translate(1, 1)" width="96" height="80"></path><path fill="none" d="M 3.5 0.5 L 93.5 0.5 C 96.5 0.5 96.5 0.5 96.5 3.5 L 96.5 77.5 C 96.5 80.5 96.5 80.5 93.5 80.5 L 3.5 80.5 C 0.5 80.5 0.5 80.5 0.5 77.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke-width="1" isShadow="true" stroke="black" stroke-opacity="0.15" transform="translate(1, 1)" width="96" height="80"></path><path fill="rgba(249, 249, 249, .85)" d="M 3.5 0.5 L 93.5 0.5 C 96.5 0.5 96.5 0.5 96.5 3.5 L 96.5 77.5 C 96.5 80.5 96.5 80.5 93.5 80.5 L 3.5 80.5 C 0.5 80.5 0.5 80.5 0.5 77.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5" stroke-width="1" stroke="#7cb5ec"></path><text x="8" zIndex="1" style="font-size:12px;color:#333333;fill:#333333;" y="21"><tspan style="font-size: 10px">7月</tspan><tspan style="fill:#7cb5ec" x="8" dy="16">●</tspan><tspan dx="0"> 金额: </tspan><tspan style="font-weight:bold" dx="0">0元</tspan><tspan style="fill:#434348" x="8" dy="16">●</tspan><tspan dx="0"> 单量: </tspan><tspan style="font-weight:bold" dx="0">0单</tspan><tspan style="fill:#90ed7d" x="8" dy="16">●</tspan><tspan dx="0"> 已销单: </tspan><tspan style="font-weight:bold" dx="0">0个</tspan></text></g></svg></div></div>
</div>
</div>
</div>
</div>
<audio id="new_order_play" src="../assets/audio/new_msg.mp3" tppabs="http://erescue.wabestway.com:8080/assets/audio/new_msg.mp3" hidden="true"></audio>
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
<script src="js/highcharts.js" tppabs="js/highcharts.js"></script>
<script src="js/exporting.js" tppabs="js/exporting.js"></script>
<script src="js/chart.js" tppabs="js/chart.js"></script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_statistics").addClass("active");
</script>
</body></html>