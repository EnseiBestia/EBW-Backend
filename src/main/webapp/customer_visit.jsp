<%@ page pageEncoding="UTF-8" %>
<html>
<!DOCTYPE html>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.css" tppabs="css/bootstrap.css">
    <link rel="stylesheet" href="css/scojs.css" tppabs="css/scojs.css">
    <link rel="stylesheet" href="css/sco.message.css" tppabs="css/sco.message.css">
  	<link rel="stylesheet" href="css/gird.css" tppabs="css/gird.css">
	<link rel="stylesheet" href="css/form.css" tppabs="css/form.css">
	<style>
		.form-group {
			margin-bottom: 2px;
		}
		hr{
			margin-top: 0px;
 			margin-bottom: 0px;
		}
	</style>
  </head>
  <body>
  	<div class="container-fluid">
  		<div class="row">
			<div class="col-md-12">
				<div class="panel panel-default">
					<div class="panel-heading">
						客户回访
				    </div>
				    <div class="panel-body">
	    				<form id="submit_form" action="http://erescue.wabestway.com:8080/CPICRescue/phonevisit/create" class="form-horizontal" method="post">
			               	<input type="hidden" name="orderId" id="orderId" value="3061">
			                <div class="form-group">
			                    <label class="col-sm-2 control-label">客户：</label>
			                    <div class="col-sm-4">
			                    	<input class="form-control" id="memberName" name="memberName" type="text" value="先生/女士" required="">
			                    </div>
			                    <label class="col-sm-2 control-label">联系方式：</label>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">18611786726</p>
			                    </div>
			                </div>
			                
			                <div class="form-group">
			                    <label class="col-sm-2 control-label">回访人：</label>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">华焱坤泰</p>
			                    </div>
			                    <label class="col-sm-2 control-label">回访时间：</label>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">2015-01-11 00:12</p>
			                    </div>
			                </div>
			                
			                <hr><h4>回访内容</h4>
			                
			                <div class="form-group">
			                    <label class="col-sm-2 control-label">救援人员评价：</label>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">
										<label style="padding-right:20px;">
											<input type="radio" name="driverSatisfy" value="0">不满意
										</label>
										<label style="padding-right:20px;">
											<input type="radio" name="driverSatisfy" value="1" checked="checked">满意
										</label>
										<label style="padding-right:20px;">
											<input type="radio" name="driverSatisfy" value="2">非常满意
										</label>
									</p>
			                    </div>
			                </div>
			                
			                <div class="form-group">
			                    <label class="col-sm-2 control-label">服务评价：</label>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">
							            <label style="padding-right:20px;">
											<input type="radio" name="serviceSatisfy" value="0">不满意
										</label>
							            <label style="padding-right:20px;">
											<input type="radio" name="serviceSatisfy" value="1" checked="checked">满意
										</label>
										<label style="padding-right:20px;">
											<input type="radio" name="serviceSatisfy" value="2">非常满意
										</label>
									</p>
			                    </div>
			                </div>
			                
			                <div class="form-group">
			                    <label class="col-sm-2 control-label">收费评价：</label>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">
							            <label style="padding-right:20px;">
											<input type="radio" name="chargeSatisfy" value="0">不满意
										</label>
							            <label style="padding-right:20px;">
											<input type="radio" name="chargeSatisfy" value="1" checked="checked">满意
										</label>
										<label style="padding-right:20px;">
											<input type="radio" name="chargeSatisfy" value="2">非常满意
										</label>
									</p>
			                    </div>
			                </div>
			                
			                <div class="form-group">
			                    <div class="col-sm-2"><input id="otherSatisfyInput" name="otherSatisfyInput" class="form-control" type="text" placeholder="自定义评价"></div>
			                    <div class="col-sm-4">
			                    	<p class="form-control-static">
										<label style="padding-right:20px;">
											<input type="radio" name="otherSatisfy" value="0">不满意
										</label>
										<label style="padding-right:20px;">
											<input type="radio" name="otherSatisfy" value="1">满意
										</label>
										<label style="padding-right:20px;">
											<input type="radio" name="otherSatisfy" value="2">非常满意
										</label>
									</p>
			                    </div>
			                </div>
			               
			                
			                <div class="form-group">
			                    <label class="col-sm-2 control-label">备注：</label>
			                    <div class="col-sm-4">
			                    	<textarea class="form-control" cols="20" id="memo" name="memo" rows="2"></textarea>
			                    </div>
			                </div>
			                
			                <div class="form-group">
			                	<div class="col-sm-2">
			                	</div>
			                	<div class="col-sm-2">
			                		<input id="submit_button" type="button" class="btn btn-primary" value="保存"  onclick="window.close();">
			                		<input type="button" class="btn btn-default" onclick="window.close();" value="关闭">
			                	</div>
				            </div>
				            
				            <hr><h4>历史回访记录</h4>
				            <div class="row margin-top">
								<div class="col-xs-12">
								<div class="panel panel-primary">
								<div class="table-responsive">
									<table class="table table-hover table-striped" id="historyVisits">
										<thead>
										<tr style="font-size:14px;">
											<th>回访时间</th>
											<th>工单号</th>
											<th>救援人员评价</th>
											<th>服务评价</th>
											<th>收费评价</th>
											<th>其他评价</th>
											<th>备注</th>
										</tr>
										</thead>
										<tbody>
												<tr>
													<td>2015-01-11 00:12</td>
													<td>
														<a href="order_detail.jsp" tppabs="order_detail.jsp" class="btn-link" target="_blank">0401201501100026</a>
													</td>
													<td>
															满意
													</td>
													<td>
															满意
													</td>
													<td>
															满意
													</td>
													<td>
															-
													</td>
													<td></td>
												</tr>
										</tbody>
									</table>
									
								</div>
								</div>
								</div>
							</div>
							
							<div class="form-group">
				                <center><label class="control-label" id="loadMore_label">
				                		没有更多记录
				                </label></center>
				            </div>
				            
						</form>
	        		</div>
				</div>
			</div>
		</div>
  	</div>
  	<div class="container" style="margin-top:10px;margin-left:0px;">
    	
    	<div class="row">
			
		</div>
   
	</div>
	<script type="text/javascript" language="javascript">window.daijia = {ctx : ''};</script>
    <script src="js/jquery-1.11.0.min.js" tppabs="js/jquery-1.11.0.min.js"></script>
    <script src="js/bootstrap.min.js" tppabs="js/bootstrap.min.js"></script>
    <script src="js/sco.modal.js" tppabs="js/sco.modal.js"></script>
    <script src="js/sco.message.js" tppabs="js/sco.message.js"></script>
    <script src="js/sco.confirm.js" tppabs="js/sco.confirm.js"></script>
	<script type="text/javascript">
	
		$(document).ready(function(){
			$("#submit_form").submit(function(){
				
				if($("#otherSatisfyInput").val()!=''){
					if($("input[name=otherSatisfy]:checked").length==0){
						$.scojs_message("请选择其他评价的满意选项", $.scojs_message.TYPE_ERROR);
						return false;
					}
				}
				
				issubmit=true;
				
				//禁用按钮
				$("#submit_button").attr("disabled",true);
				
				$.post($("#submit_form").attr("action"),$("#submit_form").serialize(),function(result){
					if(result.success){
						$.scojs_message("保存成功", $.scojs_message.TYPE_OK);
						setTimeout(function(){
			    			window.close();
			    		}, 1000);
					}
					else{
						$.scojs_message(result.message, $.scojs_message.TYPE_ERROR);
						$("#submit_button").attr("disabled",false);
						issubmit=false;
					}
				});
				
				return false;
			});
			
			var page=0;
			$('#loadMore').on('click', function () {
			    var $btn = $(this).button('loading');
			    $.post("/phonevisit/loadMore",{'page':page,'memberId':833},function(result){

					if(result){
						
						var bumanyiTD="<td>不满意</td>";
						var manyiTD="<td>满意</td>";
						var verymanyiTD="<td>非常满意</td>";
						
						$(result.content).each(function(index,element){
							var content="<tr>"+
									"<td>"+element.createdStr+"</td>"+
									"<td><a href='http://erescue.wabestway.com:8080/order/detail/"+element.orderId+"' class='btn-link' target='_blank'>"+element.orderNumber+"</a></td>";
									if(element.driverSatisfy==0){
										content+=bumanyiTD;
									}else if(element.driverSatisfy==1){
										content+=manyiTD;
									}else if(element.driverSatisfy==2){
										content+=verymanyiTD;
									}
									
									if(element.serviceSatisfy==0){
										content+=bumanyiTD;
									}else if(element.serviceSatisfy==1){
										content+=manyiTD;
									}else if(element.serviceSatisfy==2){
										content+=verymanyiTD;
									}
									
									if(element.chargeSatisfy==0){
										content+=bumanyiTD;
									}else if(element.chargeSatisfy==1){
										content+=manyiTD;
									}else if(element.chargeSatisfy==2){
										content+=verymanyiTD;
									}
									
									if(element.otherSatisfy==null){
										content+="<td>-</td>";
									}
									else{
										if(element.otherSatisfy==0){
											content+="<td>不满意("+element.otherSatisfyInput+")</td>";
										}else if(element.otherSatisfy==1){
											content+="<td>满意("+element.otherSatisfyInput+")</td>";
										}else if(element.otherSatisfy==2){
											content+="<td>非常满意("+element.otherSatisfyInput+")</td>";
										}
									}
									
									content+="<td>"+element.memo+"</td>";
									content+="<tr>";
								
							$("#historyVisits tbody").append(content);
						});
						
						if(!result.last){
							$btn.button('reset');
							page++;
						}
						else{
							$("#loadMore_label").html("没有更多记录");
						}
						
					}
					else{
						$("#loadMore_label").html("没有更多记录");
					}
				});
			});
  
		});
		
		<!--关闭浏览器 -->  
		var issubmit = false;
		window.onbeforeunload = function () {
			if(!issubmit){
				return ("您确认要离开该页面吗?");
			}
		}  

	</script>
	
  <script type="text/javascript">
$("#nav_header").children().removeClass("active");
$("#nav_header_customer").addClass("active");
</script>
</body></html>