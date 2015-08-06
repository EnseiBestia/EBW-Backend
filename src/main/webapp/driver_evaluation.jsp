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
<title>âEè·¯çéâç§»å¨è½¦ä¸»æå¡å¹³å°</title>
</head>
<body>
    <div class="container-fluid">
<div class="row">
<div class="col-lg-12">
<div style="text-align: right; line-height:40px;" id="top">
<small>
<span>è¯ç¨å¹³å°</span>
<a href="#">åç±å¤æ³°</a><span>ï¼æ¬¢è¿åæ¥ï¼ &nbsp;&nbsp;</span>
<a href="#" target="_self">éåºç³»ç» </a>
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
<span style="float:left;padding: 15px 15px;font-size: 18px;line-height: 20px;color:#fff;">åç±å¤æ³°-Eææ´ãEä»£é©¾ãEç»´ä¿</span>
</a>
</div>
<!-- Collect the nav links, forms, and other content for toggling -->
<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
<ul class="nav navbar-nav" id="nav_header">
<li  id="nav_header_order"><a href="index.jsp" tppabs="index.jsp">å·¥å</a></li>
<li  id="nav_header_dispatch"><a href="dispatch.jsp" tppabs="dispatch.jsp">è°åº¦</a></li>
<li  id="nav_header_distribute"><a href="distribute.jsp" tppabs="distribute.jsp">æ´¾å</a></li>
<li  id="nav_header_driver"><a href="driver.jsp" tppabs="driver.jsp">ç¹æäººå </a></li>
<li  id="nav_header_customer"><a href="customer.jsp" tppabs="customer.jsp">å®¢æ· </a></li>
<li  id="nav_header_vendor"><a href="vendor.jsp" tppabs="vendor.jsp">æå¡å </a></li>
<li  id="nav_header_statistics"><a href="statistics.jsp" tppabs="statistics.jsp">ç»è®¡</a></li>
<li  id="nav_header_financial"><a href="financial.jsp" tppabs="financial.jsp">è´¢å¡</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">éç¥ <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="notify_driver.jsp" tppabs="notify_driver.jsp">ç¹æäººåéç¥</a></li>
<li><a href="notify_customer.jsp" tppabs="notify_customer.jsp">å®¢æ·éç¥</a></li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">å¾®ä¿¡ <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="#">è®¢éå·</a></li>
<li><a href="#">æå¡å·</a></li>
</ul>
</li>
<li class="dropdown ">
<a href="#" class="dropdown-toggle" data-toggle="dropdown">ç³»ç» <b class="caret"></b></a>
<ul class="dropdown-menu">
<li><a href="system_operateLog.jsp" tppabs="system_operateLog.jsp">æä½æ¥å¿</a></li>
<li class="divider"></li>
<li><a href="system_registerCharge.jsp" tppabs="system_registerCharge.jsp">å°åºæ¶è´¹æ å</a></li>
<li><a href="#">èªå¨è°åº¦è§åéç½®</a></li>
<li><a href="system_chargeSetting.jsp" tppabs="system_chargeSetting.jsp">åèä»·ç®</a></li>
<li class="divider"></li>
<li><a href="system_changePassword.jsp" tppabs="system_changePassword.jsp">ä¿®æ¹å¯ç </a></li>
</ul>
</li>
</ul>
</div><!-- /.navbar-collapse -->
</nav>


<div class="lc-box hidden-xs" style="top: 12px; position: absolute;">
<span class="lc-info gcinfo1">æªåæ´¾å·¥å:2</span>
<span class="lc-info gcinfo2">æ§è¡ä¸­å·¥å:3</span>
<span class="lc-info gcinfo3">å·²å®æå·¥å:40</span>
<span class="lc-info gcinfo4">ä»æ¥æ»å·¥å:45</span>
<span class="lc-info gcinfo5 hidden-sm">ç©ºé²ææ´å:5</span>
<span class="lc-info gcinfo6 hidden-sm">å¿ç¢ææ´å:2</span>
</div>

</div>

</body>
</html>
<div class="container-fluid">
<div class="row">
<div class="col-xs-6">
<div class="btn-group">
<a class="btn btn-default " href="driver.jsp" tppabs="driver.jsp">å¨é¨</a>
<a class="btn btn-default" href="driver_callRecords.jsp" tppabs="driver_callRecords.jsp">éè¯è®°å½</a>
<a class="btn btn-default active" href="driver_evaluation.jsp" tppabs="driver_evaluation.jsp">ææ´äººåè¯ä»·</a>
</div>
</div>
<div class="col-xs-4">
<form class="form-inline" role="form">
<div class="form-group">
<input type="text" class="form-control" name="param" value="" placeholder="è¾å¥ææ´äººåå§åãå®¢æ·å§å">
</div>
<button type="submit" class="btn btn-default"><i class="icon-search"></i>&nbsp;æç´¢</button>
</form>
</div>
<div class="col-xs-2">
</div>
</div>
<div class="row margin-top">
<div class="col-xs-12">
<div class="panel panel-primary">
<div class="table-responsive">
<table class="table table-hover table-striped">
<thead>
<tr style="font-size:14px;">
<th>åå®¹</th>
<th>è¯å</th>
<th>å®¢æ·å§å</th>
<th>ææ´äººåå§å</th>
<th>å·¥åå·</th>
<th>æ¶é´</th>
<th>æä½</th>
</tr>
</thead>
<tbody>
<tr>
<td style="max-width:400px;">
è¿ä¸ªå¸åæå¡çä¸éï¼èµä¸ä¸ªã
</td>
<td>3.5æ</td>
<td>åç/å¥³å£«</td>
<td>vinter</td>
<td>
<a target="_blank" href="order_detail.jsp" tppabs="order_detail.jsp">0401201501110004</a>
</td>
<td>2015-01-11 00:29:31</td>
<td>
<a href="javascript:;" data-value="78" class="btn-link deletethis">å é¤</a>
</td>
</tr>
</tbody>
</table>
<ul class="pagination pull-right pagination-sm">
<li><a>å± 1 æ¡æ°æ®</a></li>
</ul>
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
ä¸ºä¿è¯æä½³ç¨æ·ä½éªï¼å¼ºçå»ºè®®æ¨ä½¿ç¨ <a href="#" title="" data-toggle="tooltip" data-original-title="ç¹å»ä¸è½½">è°·æ­Chromeæµè§å¨</a>
</p>
<p>
å¦ææ¨ä¹ æ¯äºç¨IEæµè§å¨ï¼å¼ºçå»ºè®®æ¨åçº§å° <a href="javascript:if(confirm('http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages  \n\nÎÄ¼þ²¢Î´ÒÀ Teleport Pro È¡»Ø£¬ÒòÎª ËüµÄÓò»òÂ·¾¶³¬¹ý¿ªÊ¼ÍøÖ·ÖÐÉèÖÃµÄ·¶Î§¡£  \n\nÄãÒª´Ó·þÎñÆ÷ÉÏ´ò¿ªËüÂð£¿'))window.location='http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages'" tppabs="http://windows.microsoft.com/zh-cn/internet-explorer/ie-10-worldwide-languages" title="" data-original-title="ç¹å»ä¸è½½åçº§">ææ°çIEæµè§å¨(10+)</a>
å½åçæ¬ V0.0.2 <a target="_blank" href="#" data-original-title="" title="">æ´æ°è¯´æ</a> 
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
window.daijia = {
ctx:'',
userId:'266'
};
</script>
<script src="js/pushmessage.js" tppabs="js/pushmessage.js"></script>
<script type="text/javascript">
var thisButton;
function deleteRate() {
$.post('/rate/delete',{'id':thisButton.attr("data-value")},function(data){
if(data.success){
thisButton.parent().parent().remove();
$.scojs_message('ææ´äººåè¯ä»·å é¤æå', $.scojs_message.TYPE_OK);
} else {
$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
}
},'json');
}
$(document).ready(function(){
$(".deletethis").click(function(){
thisButton = $(this);
var confirm = $.scojs_confirm({
content: "ç¡®å®è¦å é¤è¯¥ææ´äººåè¯ä»·åï¼",
action:deleteRate
});
confirm.show();
});
});
</script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_driver").addClass("active");
</script>
</body></html>