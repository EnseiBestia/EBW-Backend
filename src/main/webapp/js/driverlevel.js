
$(function () {


    $(document).on('click','.time-delete',function(){
    	$(this).parent().parent().remove();
    });
    
    var time_index=$("#fieldset-div fieldset").length;
    $(".time-add").click(function(){
			var newitem = '<fieldset>'+
							'<legend>分时段'+(time_index+1)+'</legend>'+
							'<small class="pull-right"><a href="javascript:;" class="time-delete">删除</a></small>'+
				            '<div class="form-group">'+
				            	'<label class="col-sm-3 control-label"><em>*</em>时间：</label>'+
				            	'<div class="col-sm-4">'+
						        	'<select name="driverLevelDetails['+time_index+'].startHour">'+$("#item-hour-div").html()+'</select>'+
						        	'：'+
						        	'<select name="driverLevelDetails['+time_index+'].startMinute">'+$("#item-minute-div").html()+'</select>'+
						        	'-'+
						        	'<select name="driverLevelDetails['+time_index+'].endHour">'+$("#item-hour-div").html()+'</select>'+
						        	'：'+
						        	'<select name="driverLevelDetails['+time_index+'].endMinute">'+$("#item-minute-div").html()+'</select>'+
						        '</div>'+
					         '</div>'+
					                
			                '<div class="form-group">'+
			                    '<label class="col-sm-3 control-label"><em>*</em>提成（固定）：</label>'+
			                    '<div class="col-sm-3">'+
				                    '<div class="input-group">'+
						            	'<input class="form-control" name="driverLevelDetails['+time_index+'].money" type="number" min="0" required/>'+
						            	'<span class="input-group-addon">元</span>'+
					                '</div>'+
			                    '</div>'+
			                    '<div class="col-sm-3">'+
					                    '<div class="input-group">'+
					                	'<span class="input-group-addon">低于</span>'+
						            	'<input class="form-control" name="driverLevelDetails['+time_index+'].minMoney" type="number" min="0" required/>'+
						            	'<span class="input-group-addon">元不提成</span>'+
					                '</div>'+
				                '</div>'+
			                '</div>'+
			                
			                '<div class="form-group">'+
			                    '<label class="col-sm-3 control-label"><em>*</em>提成（比例）：</label>'+
			                    '<div class="col-sm-3">'+
			                    	'<div class="input-group">'+
						            	'<input class="form-control" name="driverLevelDetails['+time_index+'].commission" type="number" min="0" max="100" required/>'+
						            	'<span class="input-group-addon">%</span>'+
					                '</div>'+
			                    '</div>'+
			                    '<div class="col-sm-3">'+
					                    '<div class="input-group">'+
					                	'<span class="input-group-addon">低于</span>'+
						            	'<input class="form-control" name="driverLevelDetails['+time_index+'].minCommission" type="number" min="0" required/>'+
						            	'<span class="input-group-addon">元不提成</span>'+
					                '</div>'+
				                '</div>'+
			                '</div>'+
			                
			                '<div class="form-group">'+
			                	'<label class="col-sm-3 control-label"><em>*</em>提成类型：</label>'+
			                	'<p class="form-control-static">'+
			                    	'<label style="padding-right:20px;padding-left:15px;">'+
									  '<input type="radio" name="driverLevelDetails['+time_index+'].driverLevelType" value="guding" checked="checked" />使用固定提成'+
									'</label>'+
									'<label>'+
									  '<input type="radio" name="driverLevelDetails['+time_index+'].driverLevelType" value="ticheng"/>使用比例提成'+
									'</label>'+
								'</p>'+
			                '</div>'+
		                
		                '</fieldset>';
    	
    	$("#fieldset-div").append(newitem);
    	time_index++;
    	
    });
    
});


