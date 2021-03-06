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
<div class="col-md-5">
<div class="btn-group">
<a href="index.jsp" tppabs="index.jsp" class="btn btn-danger">
<span class="glyphicon glyphicon-time"></span> 时效
</a>
</div>
<div class="btn-group">
<a class="btn btn-default active" href="order_unfinished.jsp" tppabs="order_unfinished.jsp">执行中</a>
<a class="btn btn-default" href="order_reback.jsp" tppabs="order_reback.jsp">已销单</a>
<a class="btn btn-default" href="order_pay.jsp" tppabs="order_pay.jsp">已结算</a>
<a class="btn btn-default" href="order_finishi.jsp" tppabs="order_finishi.jsp">已报单</a>
</div>
</div>
<div class="col-md-4">
<form class="form-inline" role="form">
<div class="form-group col-xs-9">
<input type="text" class="form-control" style="width:100%;" name="param" value="" placeholder="输入工单号、客户电话、救援人员姓名、救援人员电话、目的地">
</div>
<button type="submit" class="btn btn-default"><i class="icon-search"></i>&nbsp;搜索</button>
</form>
</div>
<div class="col-md-3">
<button class="pull-right button button-rounded button-flat-blue" onclick="window.open('order_add.jsp.htm'/*tpa=order_add.jsp*/, &#39;_blank&#39;, &#39;height=770,width=1220,scrollbars=yes,resizable=yes,alwaysRaised=yes,toolbar=no&#39;);"><i class="icon-plus"></i>&nbsp;添加新工单</button>
<button class="pull-right button button-rounded button-flat-blue" onclick="window.location.reload(true);"><i class="icon-refresh"></i>&nbsp;刷新</button>
</div>
</div>
<div class="row margin-top">
<div class="col-xs-12">
<div class="panel panel-primary">
<div class="table-responsive">
<table class="table table-hover table-striped">
<thead>
<tr style="font-size:14px;">
<th style="padding-left:20px;width:80px;">状态</th>
<th>单号</th>
<th class="hidden-xs">类型</th>
<th class="hidden-xs">来源</th>
<th>预约时间</th>
<th>预约地</th>
<th>客户姓名</th>
<th>客户电话</th>
<th>接单救援人员</th>
<th>操作</th>
</tr>
</thead>
<tbody>
<tr>
<td style="padding-left:15px;">
<span class="label label-info">未派单</span>
</td>
<td><a target="_blank" href="order_detail.jsp" tppabs="order_detail.jsp" class="btn-link">***01100027</a></td>
<td class="hidden-xs">一键下单</td>
<td class="hidden-xs"></td>
<td>01/10 19:36</td>
<td style="max-width:250px;">
通州区滨惠北三街
</td>
<td>先生/女士</td>
<td>18611786726</td>
<td>
无
</td>
<td>
<a class="btn-link" href="distribute.jsp" tppabs="distribute.jsp">派单</a>
<a href="javascript:;" data-value="3062" class="btn-link cancelthis">销单</a>
<a href="javascript:;" data-value="3062" data-value-memo="" class="btn-link memothis">备注</a>
<!--
-->
</td>
</tr>
</tbody>
</table>
<ul class="pagination pull-right pagination-sm">
<li><a>共 1 条数据</a></li>
</ul>
</div>
</div>
</div>
</div>
<form id="cancel_form" class="form-horizontal" action="http://erescue.wabestway.com:8080/CPICRescue/order/cancelpost" method="post">
<div class="modal fade" id="dialog_cancel">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">输入销单原因</h4>
</div>
<div class="modal-body">
<input type="hidden" name="id" id="dialog_cancel_id">
<div class="form-group">
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="cancel_reason" value="与客户协商一致取消工单"> 与客户协商一致取消工单
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="cancel_reason" value="客户呼叫多人，只用先到救援人员"> 客户呼叫多人，只用先到救援人员
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="cancel_reason" value="客户拒接电话"> 客户拒接电话
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="cancel_reason" value="客户单方面取消"> 客户单方面取消
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="cancel_reason" value="other"> 其他
</label>
</p>
</div>
</div>
<div class="form-group">
<div class="col-sm-12">
<textarea class="form-control" cols="20" id="dialog_cancel_content" name="content" rows="2" required=""></textarea>
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" id="ok_modal_cancel">提交</button>
<button type="button" class="btn btn-default" id="close_modal_cancel">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</form>
<form id="powercancel_form" class="form-horizontal" action="http://erescue.wabestway.com:8080/CPICRescue/order/powercancelpost" method="post">
<div class="modal fade" id="dialog_powercancel">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">输入销单原因</h4>
</div>
<div class="modal-body">
<input type="hidden" name="id" id="dialog_powercancel_id">
<div class="form-group">
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="powercancel_reason" value="与客户协商一致取消工单"> 与客户协商一致取消工单
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="powercancel_reason" value="客户呼叫多人，只用先到救援人员"> 客户呼叫多人，只用先到救援人员
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="powercancel_reason" value="客户拒接电话"> 客户拒接电话
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="powercancel_reason" value="客户单方面取消"> 客户单方面取消
</label>
</p>
</div>
<div class="col-sm-12">
<p class="form-control-static">
<label style="padding-right:20px;">
<input type="radio" name="powercancel_reason" value="other"> 其他
</label>
</p>
</div>
</div>
<div class="form-group">
<div class="col-sm-12">
<textarea class="form-control" cols="20" id="dialog_powercancel_content" name="content" rows="2"></textarea>
</div>
</div>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-primary" id="ok_modal_powercancel">提交</button>
<button type="button" class="btn btn-default" id="close_modal_powercancel">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</form>
<form class="form-horizontal" action="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/order/revoke?id=  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/order/revoke?id='" tppabs="http://erescue.wabestway.com:8080/CPICRescue/order/revoke?id=" method="post">
<div class="modal fade" id="dialog_revoke">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">输入收回原因</h4>
</div>
<div class="modal-body">
<input type="hidden" name="id" id="dialog_revoke_id">
<div class="form-group">
<div class="col-sm-12">
<textarea class="form-control" cols="20" id="dialog_revoke_content" name="content" rows="2" required=""></textarea>
</div>
</div>
</div>
<div class="modal-footer">
<button type="submit" class="btn btn-primary" id="ok_modal_revoke">提交</button>
<button type="button" class="btn btn-default" id="close_modal_revoke">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</form>
<form class="form-horizontal" action="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/order/powerrevoke?id=  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/order/powerrevoke?id='" tppabs="http://erescue.wabestway.com:8080/CPICRescue/order/powerrevoke?id=" method="post">
<div class="modal fade" id="dialog_powerrevoke">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">输入收回原因</h4>
</div>
<div class="modal-body">
<input type="hidden" name="id" id="dialog_powerrevoke_id">
<div class="form-group">
<div class="col-sm-12">
<textarea class="form-control" cols="20" id="dialog_powerrevoke_content" name="content" rows="2" required=""></textarea>
</div>
</div>
</div>
<div class="modal-footer">
<button type="submit" class="btn btn-primary" id="ok_modal_powerrevoke">提交</button>
<button type="button" class="btn btn-default" id="close_modal_powerrevoke">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</form>
<form class="form-horizontal" action="javascript:if(confirm('http://erescue.wabestway.com:8080/CPICRescue/order/memo?id=  \n\n�ļ���δ�� Teleport Pro ȡ�أ���Ϊ ������·������ʼ��ַ�����õķ�Χ��  \n\n��Ҫ�ӷ������ϴ�����'))window.location='http://erescue.wabestway.com:8080/CPICRescue/order/memo?id='" tppabs="http://erescue.wabestway.com:8080/CPICRescue/order/memo?id=" method="post">
<div class="modal fade" id="dialog_memo">
<div class="modal-dialog">
<div class="modal-content">
<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
<h4 class="modal-title">添加工单备注</h4>
</div>
<div class="modal-body">
<input type="hidden" name="id" id="dialog_memo_id">
<div class="form-group">
<label class="col-sm-3 control-label">输入新备注：</label>
<div class="col-sm-9">
<textarea class="form-control" cols="20" id="dialog_memo_newcontent" name="memo" rows="2" required=""></textarea>
</div>
</div>
<div class="form-group">
<label class="col-sm-3 control-label">已有备注：</label>
<div class="col-sm-9">
<p class="form-control-static" id="dialog_memo_oldcontent"></p>
</div>
</div>
</div>
<div class="modal-footer">
<button type="submit" class="btn btn-primary" id="ok_modal_memo">提交</button>
<button type="button" class="btn btn-default" id="close_modal_memo">关闭</button>
</div>
</div><!-- /.modal-content -->
</div><!-- /.modal-dialog -->
</div>
</form>
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
window.daijia = {
ctx:'',
userId:'266'
};
</script>
<script src="js/orderlist.js" tppabs="js/orderlist.js"></script>
<script src="js/pushmessage.js" tppabs="js/pushmessage.js"></script>
<script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_order").addClass("active");
</script>
</body></html>