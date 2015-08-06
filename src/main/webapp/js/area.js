
$(function () {


    $(document).on("submit",".form-horizontal",function (){
    	
    	var thisform=$(this);
    	
    	if(thisform.find(".item-length").length==0){
    		alert("至少添加一条时间段");
            return false;
    	}
    	
    	var formable=true;
    	
    	thisform.find(".item-length").each(function(index,element){
    		var startHour=$(element).find(".startHour_select option:selected").val();
    		var startMinute=$(element).find(".startMinute_select  option:selected").val();
    		var endHour=$(element).find(".endHour_select option:selected").val();
    		var endMinute=$(element).find(".endMinute_select  option:selected").val();
    		
    		if(parseInt(endHour*60+endMinute) <= parseInt(startHour*60+startMinute)){
    			alert("结束时间必须大于起始时间");
    			$(element).find(".endHour_select").focus();
    			formable=false;
    			return false;
    		}
    	});
    	
    	if(!formable){
    		return false;
    	}
    	
    	$(thisform).find(".distance_tr").each(function(index,element){
    		var start_distance=$(element).find(".distance_td_distance_start").val();
    		var end_distance=$(element).find(".distance_td_distance").val();
    		if(!start_distance){
    			start_distance=0;
    		}
    		
    		if(parseInt(start_distance)>parseInt(end_distance)){
    			alert("结束里程必须大于开始里程");
    			$(element).find(".distance_td_distance").focus();
    			formable=false;
    			return false;
    		}
    	});
    	
    	if(!formable){
    		return false;
    	}
    	
    	thisform.find(".item-length").each(function(index,element){
    		$(element).find(".distance_tr").each(function(i,e){
    			$(e).find(".distance_td_distance").attr("name",$(element).find(".cost_input").attr("data-name")+".chargeStartDistances["+i+"].distance");
    			$(e).find(".distance_td_money").attr("name",$(element).find(".cost_input").attr("data-name")+".chargeStartDistances["+i+"].money");
    		});
    	});

        $(thisform).find(".area-save").attr("disabled",true);
        
        $.post(thisform.attr("action"),thisform.serialize(),function(result){
			if(result.success){
				$.scojs_message(result.message, $.scojs_message.TYPE_OK);
				window.location.reload(true);
			}
			else{
				$.scojs_message(result.message, $.scojs_message.TYPE_ERROR);
				$(thisform).find(".area-save").attr("disabled",false);
			}
		});

    	return false;
    });


    $(document).on('click','.area-edit',function(){
//    	$(this).parent().parent().find("span").hide();
//    	$(this).parent().parent().find("select").show();
//    	$(this).parent().parent().find("input").show();
//    	$(this).parent().parent().find("textarea").show();
    	
//    	$(this).attr("disabled",true);
    	$(this).parent().parent().find(".name_span").hide();
    	$(this).parent().parent().find(".name_input").show();
    	$(this).parent().parent().find(".memo_span").hide();
    	$(this).parent().parent().find(".memo_textarea").show();
//    	$(this).parent().find(".area-save").attr("disabled",false);
    });
    
    //时间段删除
    $(document).on('click','.time_button_delete',function(){
    	$(this).parent().parent().parent().parent().parent().parent().remove();
    });
    
    //时间段修改
    $(document).on('click','.time_button_edit',function(){
    	var table=$(this).parent().parent().parent().parent().find("table");
    	$(this).parent().parent().find(".time_content span").hide();
    	$(this).parent().parent().find(".time_content select").show();
    	$(this).parent().parent().find(".time_content input").show();
    	$(this).parent().parent().parent().parent().find(".time_content2 span").hide();
    	$(this).parent().parent().parent().parent().find(".time_content2 input").show();
    	
    	if(table.parent().parent().css("display")=="none"){
    		$(this).parent().parent().find("a").click();
    	}
    });
    
    //里程价格添加
    $(document).on('click','.time_button_add',function(){
    	var table=$(this).parent().parent().parent().parent().find("table");
    	var length=table.find(".distance_tr").length;
    	var content="";
    	content+="<tr class='distance_tr'>";
    	if(length==0){
    		content+="<td>0</td>";
    	}
    	else{
    		var value=table.find(".distance_tr:last").find(".distance_td_distance").val();
    		content+="<td><input class='distance_td_distance_start' type='number' min='0' required value='"+value+"' /></td>";
    	}
    	content+="<td><input class='distance_td_distance' type='number' min='0' required /></td>"+
				 "<td><input class='distance_td_money' type='number' min='0' required /></td>"+
				 "<td><a href='javascript:;' class='distance_td_delete'>删除</a></td>"+
				"</tr>";
    	table.find("tbody").append(content);
    	if(table.parent().parent().css("display")=="none"){
    		$(this).parent().parent().find("a").click();
    	}
    });
    
    //里程价格删除
    $(document).on('click','.distance_td_delete',function(){
    	$(this).parent().parent().remove();
    });
    
    //里程价格编辑
    $(document).on('click','.distance_td_edit',function(){
    	$(this).parent().parent().find("span").hide();
    	$(this).parent().parent().find("input").show();
    });
    
    //里程距离改变
    $(document).on('change','.distance_td_distance',function(){
    	$($(this).parent().parent().next().find("span")[0]).html($(this).val());
    	$(this).parent().parent().next().find(".distance_td_distance_start").val($(this).val());
    });
    
    
    
    $(document).on('click','.area-add',function(){
    	var currItemLength=$(this).parent().parent().find(".item-length").length;
    	var randomid=randomString(5);
    	var newitem = '<div class="item-length">'+
    					'<div class="panel-group">'+
						  '<div class="panel panel-default">'+
						    '<div class="panel-heading">'+
						      '<h4 class="panel-title">'+
						        '<a data-toggle="collapse" href="#collapseOne_'+randomid+'">'+
								'展开'+
						        '</a>'+
	    						'<span class="time_content">'+
						        	'开始救援时间（'+
						        	'<select name="chargeStartTimes['+currItemLength+'].startHour" class="startHour_select bottom_border">'+$("#item-hour-div").html()+'</select>'+
						        	'：'+
						        	'<select name="chargeStartTimes['+currItemLength+'].startMinute" class="startMinute_select bottom_border">'+$("#item-minute-div").html()+'</select>'+
						        	'-'+
						        	'<select name="chargeStartTimes['+currItemLength+'].endHour" class="endHour_select bottom_border">'+$("#item-hour-div").html()+'</select>'+
						        	'：'+
						        	'<select name="chargeStartTimes['+currItemLength+'].endMinute" class="endMinute_select bottom_border">'+$("#item-minute-div").html()+'</select>'+
						        	'）'+
						        	'起步价<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].cost" data-name="chargeStartTimes['+currItemLength+']" class="cost_input bottom_border" style="width:60px;" required min="0"/>元'+
					        	'</span>'+
					        	'<span class="time_button pull-right">'+
						      		'<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>'+
						      		'<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>'+
						      		'<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>'+
						      	'</span>'+
						      '</h4>'+
							'</div>'+
							
							'<div id="collapseOne_'+randomid+'" class="panel-collapse collapse">'+
						      '<div class="panel-body">'+
						      	'<table class="table table-condensed table-bordered">'+
									'<tr style="font-size:14px;">'+
										'<th>开始里程(公里)</th>'+
										'<th>结束里程(公里)</th>'+
										'<th>增长价(元)</th>'+
										'<th>操作</th>'+
									'</tr>'+
								'</table>'+
								'<hr/>'+
								'<span class="time_content2">'+
									'超过（<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].qblc" class="qblc_input bottom_border" style="width:60px;" required min="0"/>公里），'+
						        	'以后每<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].djglUnit" class="djglUnit_input bottom_border" style="width:60px;" required min="0"/>公里'+
						        	'（不足<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;" required min="0"/>公里不计费）'+
						        	'加收<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].djglCost" class="djglCost_input bottom_border" style="width:60px;" required min="0"/>元。'+
						        	'免费等候<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;" required min="0"/>分钟，'+
						        	'后每<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;" required min="0"/>分钟'+
						        	'（ 低于<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;" required min="0"/>分钟不计费）'+
						        	'加收<input type="number" value="0" name="chargeStartTimes['+currItemLength+'].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;" required min="0"/>元！'+					
						      	'</span>'+
						      '</div>'+
						    '</div>'+
						    
						  '</div>'+
						'</div>'+
		                
		            '</div>';
					        	
    	$(this).parent().parent().find(".time_panel_body").prepend(newitem);
    	
    	currItemLength++;
    });
    
    $("#add-new-area").click(function(){
//    	$(this).attr("disabled",true);
    	var randomid=randomString(5);
    	var newitem = '<form action='+window.daijia.ctx+'"/area/create" class="form-horizontal" method="post">'+
						'<div class="col-md-12">'+
							'<div class="panel panel-default">'+
							  '<div class="panel-heading">'+
					              '<input type="text" name="name" class="name_input" style="width:150px;" required/>'+
					              '<button type="button" class="deleteArea-new pull-right button button-pill button-flat-caution button-tiny"><span class="glyphicon glyphicon-remove"></span>&nbsp;删除</button>'+
					              '<button type="button" class="area-add pull-right button button-pill button-flat-action button-tiny"><span class="glyphicon glyphicon-plus"></span>&nbsp;新增时间段</button>'+
					              '<button type="submit" class="area-save pull-right button button-pill button-flat button-tiny"><span class="glyphicon glyphicon-floppy-disk"></span>&nbsp;保存</button>'+
					          '</div>'+
							  '<div class="panel-body time_panel_body">'+
							  
					        	'<div class="item-length">'+
			    					'<div class="panel-group">'+
									  '<div class="panel panel-default">'+
									    '<div class="panel-heading">'+
									      '<h4 class="panel-title">'+
									        '<a data-toggle="collapse" href="#collapseOne_'+randomid+'">'+
											'展开'+
									        '</a>'+
				    						'<span class="time_content">'+
									        	'开始救援时间（'+
									        	'<select name="chargeStartTimes[0].startHour" class="startHour_select bottom_border">'+$("#item-hour-div").html()+'</select>'+
									        	'：'+
									        	'<select name="chargeStartTimes[0].startMinute" class="startMinute_select bottom_border">'+$("#item-minute-div").html()+'</select>'+
									        	'-'+
									        	'<select name="chargeStartTimes[0].endHour" class="endHour_select bottom_border">'+$("#item-hour-div").html()+'</select>'+
									        	'：'+
									        	'<select name="chargeStartTimes[0].endMinute" class="endMinute_select bottom_border">'+$("#item-minute-div").html()+'</select>'+
									        	'）'+
									        	'起步价<input type="number" value="0" name="chargeStartTimes[0].cost" data-name="chargeStartTimes[0]" class="cost_input bottom_border" style="width:60px;" required min="0"/>元'+
								        	'</span>'+
								        	'<span class="time_button pull-right">'+
									      		'<button type="button" class="pull-right btn btn-default btn-xs time_button_delete">删除</button>'+
									      		'<button type="button" class="pull-right btn btn-default btn-xs time_button_edit">修改</button>'+
									      		'<button type="button" class="pull-right btn btn-default btn-xs time_button_add">添加里程价格</button>'+
									      	'</span>'+
									      '</h4>'+
										'</div>'+
										
										'<div id="collapseOne_'+randomid+'" class="panel-collapse collapse">'+
									      '<div class="panel-body">'+
									      	'<table class="table table-condensed table-bordered">'+
												'<tr style="font-size:14px;">'+
													'<th>开始里程(公里)</th>'+
													'<th>结束里程(公里)</th>'+
													'<th>增长价(元)</th>'+
													'<th>操作</th>'+
												'</tr>'+
											'</table>'+
											'<hr/>'+
											'<span class="time_content2">'+
												'超过（<input type="number" value="0" name="chargeStartTimes[0].qblc" class="qblc_input bottom_border" style="width:60px;" required min="0"/>公里），'+
									        	'以后每<input type="number" value="0" name="chargeStartTimes[0].djglUnit" class="djglUnit_input bottom_border" style="width:60px;" required min="0"/>公里'+
									        	'（不足<input type="number" value="0" name="chargeStartTimes[0].djglThresholdt" class="djglThresholdt_input bottom_border" style="width:60px;" required min="0"/>公里不计费）'+
									        	'加收<input type="number" value="0" name="chargeStartTimes[0].djglCost" class="djglCost_input bottom_border" style="width:60px;" required min="0"/>元。'+
									        	'免费等候<input type="number" value="0" name="chargeStartTimes[0].mfdhsj" class="mfdhsj_input bottom_border" style="width:60px;" required min="0"/>分钟，'+
									        	'后每<input type="number" value="0" name="chargeStartTimes[0].dhsjUnit" class="dhsjUnit_input bottom_border" style="width:60px;" required min="0"/>分钟'+
									        	'（ 低于<input type="number" value="0" name="chargeStartTimes[0].dhsjThresholdt" class="dhsjThresholdt_input bottom_border" style="width:60px;" required min="0"/>分钟不计费）'+
									        	'加收<input type="number" value="0" name="chargeStartTimes[0].dhsjCost" class="dhsjCost_input bottom_border" style="width:60px;" required min="0"/>元！'+					
									      	'</span>'+
									      '</div>'+
									    '</div>'+
									    
									  '</div>'+
									'</div>'+
					                
					            '</div>'+
					            
					            '<h4 class="text-primary">收费说明：</h4>'+
					            '<p class="text-muted">'+
					        		'<textarea cols="100" rows="5" name="memo"></textarea>'+
					            '</p>'+
							  '</div>'+
							'</div>'+
						'</div>'+
						'</form>';
    	
    	$(".area_container").prepend(newitem);
    	
    });
    
});

function deleteItem(btn){
	$(btn).parent().parent().remove();
}
function padZero(hourormin){
	if(hourormin.length==1){
		return "0"+hourormin;
	}
	else{
		return hourormin;
	}
}
function randomString(len){
	len = len || 32;
	var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678';
	var maxPos = $chars.length;
	var pwd = '';
	for (var i = 0; i < len; i++) {
		pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
	}
	return pwd;
}

