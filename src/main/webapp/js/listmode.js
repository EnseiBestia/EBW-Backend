var ctx = window.daijia.ctx;

$(document).ready(function(){
	
	initWebSocket();
	
	$("#siji").width($("#container").width() - 30 -  $("#paidan").width());
	
	//点击新单
    $(document).on("click","input[name=newOrderRadios]",function(){
    	
    	$("#drivers_ul").html("正在为您推荐救援人员...");
    	
    	$.get(ctx+'/driver/tuijianDrivers',{'orderid':$(this).val()},function(result){
    		$("#drivers_ul").empty();
    		if(result && result.length>0){
    			$(result).each(function(index,element){
    				$("#drivers_ul").append('<a class="list-group-item tuijian-siji-li listmode"  data-driver-id="'+element.id+'">'+element.realname+'   '+element.phone+'   '+parseInt(element.distance)+'公里<button class="btn btn-default btn-xs paidan pull-right" data-driver-id="'+element.id+'">派单</button></a>');
    			});
    		}
    		else
    		{
    			$("#drivers_ul").html("没有找到合适的救援人员");
    		}
    	});
    });
    
    $(document).on("click",".tuijian-siji-li",function(){
    	$("#drivers_ul .active").removeClass("active");
    	$(this).addClass("active");
    });
    
    //派单
    $(document).on("click",".paidan",function(){
    	if($("input[name=newOrderRadios]:checked").length==0){
    		$.scojs_message("请先选择工单", $.scojs_message.TYPE_ERROR);
    		return false;
    	}
    	
    	var thisbutton=$(this);
    		
    	if(window.confirm('确认要派单给该救援人员吗？')){
    		$(".paidan").attr("disabled",true);
    		$.post(ctx+'/order/yupaidan',{'driverid':thisbutton.attr("data-driver-id"),'orderid':$("input[name=newOrderRadios]:checked").val()},function(data){

    			if(data.success){
    				$("input[name=newOrderRadios]:checked").attr("checked",false);
    				var result=eval('(' + data.result + ')');
    				if(result.type=="paidan"){
    					
        				var driverId = result.driverID;
        				var orderID = result.orderID;
        		    	var orderNumber = result.orderNumber;
        		    	
        		    	if($("#newOrder_"+orderID+"").length>0){
        		    		queryDriverDetail(driverId);
        			    	
        			    	$("#drivers_ul").empty();
        			    	$.scojs_message('工单'+orderNumber+"派单成功", $.scojs_message.TYPE_OK);
        			    	
        			    	$("#newOrder_"+orderID+"").remove();
        		    	}
    				}
    				else if(result.type=="yupaidan"){
    					$.scojs_message('派单成功', $.scojs_message.TYPE_OK);
    					
    					var driverId=result.driverID;
    			    	var orderId=result.orderID;
    			    	
    			    	if($("#newOrder_"+orderId+"").length>0){
    			    		$("#newOrder_"+orderId+"").remove();//移除工单
    			    		$("#drivers_ul").html("");
    				    	queryDriverDetail(driverId);
    			    	}
    				}
    				
    			}
    			else{
    				$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
    			}
    		});
    	}
    });
    
    //徽章
    $(".pop").popover({
    		title: '已派工单',
    		html:true,
    		template:'<div class="popover" role="tooltip" style="max-width:500px;"><div class="arrow"></div><h3 class="popover-title"></h3><div class="popover-content"></div></div>',
    		content: function(){
    			
    			var driverId = $(this).attr('data');
    			
    			var tpl = "<div id='order_"+driverId+"'>加载中...</div>";
    			
    			$.post(ctx+"/order/listYuPai",{'driverId':driverId},function(data){
    				if(data.success){
    					var orders = data.data;
    					var list = '<ul class="list-group" style="margin-top:10px;">';
    					for(var i = 0 ; i < orders.length ; i++){
    						var order = orders[i];
    						list += ' <li class="list-group-item modeDriver">工单：'+order.orderNumber+' 时间：'+order.bookTime+' 预约地：'+order.bookAddr+'</li>';
    					}
    					list += "</ul>";
    					$("#order_"+driverId).html(list);
    				}
    				else
    				{
    					$("#order_"+driverId).html("无预派工单");
    				}
    				
    			},'json');
    			
    			return tpl;
    		},
    		placement:'bottom'
    	});
    
    
    $('#search_driver').AutoComplete({
    	listStyle: 'custom',
    	width:250,
    	data: ctx+"/driver/queryByKey",
		ajaxDataType: 'json',
		ajaxParams:function(keyword){
			return {'orderId':$('input[name=newOrderRadios]:checked').val(),'keyword':keyword};
		},
		beforeLoadDataHandler: function(keyword) {
			var val = $('input[name=newOrderRadios]:checked').val();
			
			if(!val){
				alert('请先选择未派的工单');
				$('#search_driver').val('');
				return false;
			}
			
            return keyword.length > 0;
        },
		matchHandler: function(keyword, data){
            return true;
        },
        createItemHandler: function(index, data){
        	var regex = RegExp("("+$("#search_driver").val().replace(/([.?*+^$[\]\\(){}|-])/g, "\\$1")+")", 'ig');
            var driverName = data.driverName.replace(regex, "<span style='color:red;'>$1</span>");
            return "<p>"+driverName +"   "+data.driverPhone+"   "+parseInt(data.distance)+"公里</p>";
        },
        afterSelectedHandler: function(data){
        	$("#drivers_ul").empty();
        	var tpl = '<a class="list-group-item tuijian-siji-li listmode" data-driver-id="'+data.driverID+'">'+data.driverName+'   '+data.driverPhone+'   '+parseInt(data.distance)+'公里<button class="btn btn-default btn-xs paidan pull-right" data-driver-id="'+data.driverID+'">派单</button></a>';
        	$("#drivers_ul").append(tpl);
        	
        }
    });
    
    
    $(document).on('click','.input',function(){
    	
    	var $this = $(this);
    	
    	var el = $('#addrInput');
    	var addrInput = el.find('input[name=address]');
    	
    	var val = $this.next().val();
    	addrInput.val(val);
    	
    	var finishInput = $this.next().next();
    	var time = finishInput.val();
    	
    	var timeInput = el.find('input[name=needTime]');
    	
    	if($.trim(time) == ''){
    		
	    	var times = time.split(":");
	    	
	    	var hour 	= parseInt(times[0]);
	    	var minute  = parseInt(times[1]);
	    	var date = new Date();
	    	date.setHours(hour);
	    	date.setMinutes(minute);
	    	
	    	var f = date.getTime();
	    	var now = new Date().getTime();
	    	var need = (f - now) / 1000 / 60;
	    	if(need > 0){
	        	timeInput.val(parseInt(need));
	    	}
	    	else
	    	{
	    		timeInput.val('');
	    	}
	    	
    	}
    	
    	el.modal('show');
    	
    	var orderId = $this.next().next().next().val();
    	
    	el.find(".btn-primary").one('click',function(){
    		//保存数据并刷新
    		var addr = $.trim(addrInput.val());
    		if(addr == ""){
    			alert("请输入预计目的地");
    			return;
    		}
    		var time = $.trim(timeInput.val());
    		if(time == ""){
    			alert("请输入预计时间");
    			return;
    		}
    		
    		$.post(ctx+'/order/updateOrderPlace',{'orderId':orderId,'place':addr,'timediff':time},function(data){
    			
    			if(data.success){
    				//刷新显示内容
    				$this.html(addr+"（"+data.object+"）");
    				addrInput.val(addr);
    				finishInput.val(data.object);
    				el.modal('hide');
    			}
    			else
    			{
    				alert(data.message);
    			}
    			
    		},'json');
    		
    	});
    	
    });
    
});


var initWebSocket = function() {
	//建立长连接
	var sock = new SockJS('http://' + window.location.host + '/push', null, {
		  debug:false,
         'protocols_whitelist': ['websocket', 'xhr-streaming','iframe-eventsource', 'iframe-htmlfile','xhr-polling', 'jsonp-polling'] });
	
	sock.onopen = function() {
		sock.send("{'command':'connected','userId':"+window.daijia.userId+"}");
	};
	sock.onmessage = function(evt) {
		
		var result = $.parseJSON(evt.data);
		
		if(result.type == "driverOnline"){//救援人员上线
			var driverId = result.driverID;
			queryDriverDetail(driverId);
			$.scojs_message('救援人员'+result.driverName+"，已经上线", $.scojs_message.TYPE_OK);
		}
		else if(result.type == "driverOffline"){//救援人员下线
			var driverId = result.driverID;
			$("#driver_"+driverId+"").remove();
			$.scojs_message('救援人员'+result.driverName+"，已经下线", $.scojs_message.TYPE_OK);
		}
		else if(result.type == "newOrders"){//添加新工单
			
			var bookAddress = result.bookAddress;
			var bookTime	= result.bookTime;
			var orderID		= result.orderID;
			
			$("#newOrder_ul").append(
	    			'<a id="newOrder_'+orderID+'" class="list-group-item">'+
					    '<input type="radio" name="newOrderRadios" value="'+orderID+'">'+' '+bookTime+' '+bookAddress+
				   	'</a>');
	    	$("#newOrder_"+orderID+"").show(1000);
			
	    	document.getElementById('new_order_play').play();//播放声音
		}
		else if(result.type == "paidan"){//派单
			
			var driverId = result.driverID;
			var orderID = result.orderID;
	    	var orderNumber = result.orderNumber;
	    	
	    	if($("#newOrder_"+orderID+"").length>0){
	    		queryDriverDetail(driverId);
		    	
		    	$("#drivers_ul").empty();
		    	$.scojs_message('工单'+orderNumber+"派单成功", $.scojs_message.TYPE_OK);
		    	
		    	$("#newOrder_"+orderID+"").remove();
	    	}
	    	
	    	if(result.ringing){
    			document.getElementById('new_order_play').play();//播放声音
    		}
	    	
	    }
		else if(result.type == "accept"){ //接单
			var driverId=result.driverID;
			queryDriverDetail(driverId);
		}
		else if(result.type == "getrushorder"){//救援人员抢单 直接接受
			
	    	var driverId=result.driverID;
	    	var orderID =result.orderID;
	    	
	    	queryDriverDetail(driverId);
	    	
	    	$("#drivers_ul").empty();
	    	if($("#newOrder_"+orderID+"").length>0){
	    		$("#newOrder_"+orderID+"").remove();
	    	}
	    	
	    }
		else if(result.type == "yupaidan"){//预派单
			$.scojs_message('派单成功', $.scojs_message.TYPE_OK);
			
			var driverId=result.driverID;
	    	var orderId=result.orderID;
	    	
	    	if($("#newOrder_"+orderId+"").length>0){
	    		$("#newOrder_"+orderId+"").remove();//移除工单
	    		$("#drivers_ul").html("");
		    	queryDriverDetail(driverId);
	    	}
	    	
		}
		else if(result.type == "revoke" || result.type == "refuse"){//收回/拒单
			
			var driverId	= result.driverID;
			var orderID		= result.orderID;
			var bookAddress = result.bookAddress;
			var bookTime	= result.bookTime;
	    	
	    	queryDriverDetail(driverId);
	    	
	    	$("#newOrder_ul").append(
	    			'<li id="newOrder_'+orderID+'" class="list-group-item listmode">'+
					    '<input type="radio" name="newOrderRadios" value="'+orderID+'">'+' '+bookTime+' '+bookAddress+
				   	'</li>');
	    	
	    	$("#newOrder_"+orderID+"").show(1000);
	    	
		}
		else if(result.type == "powerrevoke"){//强制收回
			
			var driverId	= result.driverID;
			var orderID		= result.orderID;
			var bookAddress = result.bookAddress;
			var bookTime	= result.bookTime;
			
			queryDriverDetail(driverId);
	    	
	    	$("#newOrder_ul").append(
	    			'<li id="newOrder_'+orderID+'" class="list-group-item  listmode">'+
					    '<input type="radio" name="newOrderRadios" value="'+orderID+'">'+' '+bookTime+' '+bookAddress+
				   	'</li>');
	    	
	    	$("#newOrder_"+orderID+"").show(1000);
		}
		else if(result.type == "revokeyupaidan"){//收回预派单
	    	
	    	queryDriverDetail(result.driverID);
	    	
	    	$.scojs_message('收回成功', $.scojs_message.TYPE_OK);
	    	
	    	$("#newOrder_ul").append(
	    			'<li id="newOrder_'+result.orderID+'" class="list-group-item listmode">'+
					    '<input type="radio" name="newOrderRadios" value="'+result.orderID+'">'+
					    ' '+result.bookTime+' '+result.bookAddress+
				   	'</li>');
	    	$("#newOrder_"+result.orderID+"").show(1000);
	    	
		}
		else if(result.type == "cancel"){//销单
			
			var orderId	 = result.orderID;
	    	var driverId = result.driverID;
	    	if($("#newOrder_"+orderId+"").length > 0){
	    		$("#newOrder_"+orderId+"").remove();//移除工单
	    	}
	    	queryDriverDetail(driverId);
	    	
		}
		else if(result.type == "powercancel"){//强制销单
			
	    	var driverId = result.driverID;
	    	queryDriverDetail(driverId);
			
		}
		else if(result.type == "cancelyupaidan"){//销单预派单
			var driverId=result.driverID;
			queryDriverDetail(driverId);
		}
		else if(result.type == "finish"){//完成
			$.scojs_message(result.message, $.scojs_message.TYPE_OK);
			var driverId=result.driverID;
			queryDriverDetail(driverId);
		}
		else if(result.type == "updateUserLocation"){//更新救援人员坐标
	    	var driverId = result.driverID;
	    	var addr = result.address;
	    	if(addr && addr!="未知"){
	    		$("#driver_"+driverId).find("a").html("<a>("+addr+")</a>");
	    	}
	    }
		else if(result.type=="zhuandan"){
			var driverId = result.driverID;
			var oldDriverID = result.oldDriverID;
			var orderId = result.orderID;
			
			queryDriverDetail(driverId);
			queryDriverDetail(oldDriverID);
			
			if($("#newOrder_"+orderId+"").length > 0){
	    		$("#newOrder_"+orderId+"").remove();//移除工单
	    	}
		}
		else if(result.type == "qingqiujie"){//请求接
			queryDriverDetail(result.driverID);
		}
		else if(result.type == "fillorderv2"){//补单
			document.getElementById('new_order_play').play();//播放声音
		}
	};
	sock.onclose = function() {
		sock.close(); //关闭TCP连接
		initWebSocket();
    };
    
};


function queryDriverDetail(driverID){
	
	$.post(ctx+"/driver/diaodu/findDriverDetail",{'driverID':driverID},function(data){
		
		if(data.success){
			var driver = data.object;
			var cls = "alert-danger";
			var btnCls = "btn-danger";
			if(driver.status == 1){
				cls = "alert-success";
				btnCls = "btn-success";				
			}
			
			if(driver.workCar){
				btnCls = "btn-info";
			}
			
			var currentAddress = driver.currentAddress;
			if(!currentAddress){
				currentAddress = "未知";
			}
			
			var orderInfo = "";
			var toPlace = "";
			var finishTime = "";
			if(driver.diaoduOrder){
				if(driver.diaoduOrder.fromPlace){
					orderInfo = driver.diaoduOrder.fromPlace+"（"+driver.diaoduOrder.serverTimeHI+"）";
				}
				orderInfo += "&rarr; ";
				if(driver.diaoduOrder.toPlace){
					
					toPlace = driver.diaoduOrder.toPlace;
					
					if(driver.diaoduOrder.finishTime){
						finishTime = driver.diaoduOrder.finishTimeHI;
						orderInfo += toPlace +"（"+finishTime+"）";
					}
					else
					{
						orderInfo += toPlace +"（未知）";
					}
				}
				else
				{
					orderInfo += "未知（未知）";
				}
			}
			
			var badge = "";
			if(driver.yupai>0){
				badge = '<span class="badge">'+driver.yupai+'</span>';
			}
			
			var el = $("#driver_"+driver.id);
			var nextEl = null;
			if(el.length > 0){
				nextEl = el.next();
			}
			
			var orderId = -1;
			
			if(driver.diaoduOrder){
				orderId = driver.diaoduOrder.id;
			}
			
			var tpl = '<div class="alert '+cls+' listmodeDriver" role="alert" id="driver_'+driver.id+'">'+
		    			'<button type="button" class="btn '+btnCls+' btn-xs pop" data="'+driver.id+'">'+driver.realname+'</button>'+badge+
		    			'<a>('+currentAddress+')</a> '+orderInfo+
		    			'<input type="hidden" name="address" value="'+toPlace+'"/>'+
		    			'<input type="hidden" name="finish" value="'+finishTime+'"/>'+
		    			'<input type="hidden" name="orderId" value="'+orderId+'"/>'+
		    		  '</div>';
			
			el.remove();
			
			if(nextEl&&nextEl.length > 0){
				nextEl.before(tpl);
			}
			else{
				$("#driver_panels").append(tpl);
			}
			
		}
		
	},'json');
	
}

