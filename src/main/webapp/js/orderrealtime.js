var ctx = window.daijia.ctx;

var minute = 1000 * 60;
var second = 1000;
var thisButton;

function   formatDate(now)   {     
//      var   year=now.getYear();     
      var   month=now.getMonth()+1;     
      var   date=now.getDate();     
      var   hour=now.getHours();     
      var   minute=now.getMinutes();     
//      var   second=now.getSeconds();
      
      if(month<10){
      	month="0"+month;
      }
      if(date<10){
      	date="0"+date;
      }
      if(hour<10){
      	hour="0"+hour;
      }
      if(minute<10){
      	minute="0"+minute;
      }
           
      return  month+"-"+date+" "+hour+":"+minute;     
}     

function cancelWorkCarPickup() {
    $.post(ctx+'/workcarpickup/cancel',{'id':thisButton.attr("data-value")},function(data){
            if(data.success){
            	$.scojs_message('接送记录取消成功', $.scojs_message.TYPE_OK);
            	thisButton.parent().parent().remove();
            } else {
                $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
    },'json');
}

function timedCount(){  
	
	$(".timecount").each(function(index,element){
		str =$(element).attr("data-value");
		str = str.replace(/-/g,"/");
		date = new Date(str).getTime();
		now = new Date().getTime();
		
		m=(now-date)/minute;
		s=((now-date)-(parseInt(m)*minute))/second;
		$(element).html(parseInt(m)+"分"+parseInt(s)+"秒");
	});

	setTimeout("timedCount()",1000);

}  

var time_refresh=60;
function autoRefresh(){
	var timeID=setTimeout("autoRefresh()",1000);
	
	$("#refresh_time").html(time_refresh);
	if(time_refresh>0){
		time_refresh--;
	}
	else{
		clearTimeout(timeID);
		window.location.reload(true);
	}
}

function callback(){
}

var count=0;
function initialise(){
	if($(".getPlaceTime").length>count){
		var orderid=$($(".getPlaceTime")[count]).attr("data-orderid");
		
		var thisbutton=$($(".getPlaceTime")[count]);

		thisbutton.button('loading');
		
		$.get(ctx+'/order/getDistanceAndTime',{'id':orderid},function(data){
			if(data.success){
//		  		thisbutton.attr("data-content","预计到达："+data.message+" <a href='javascript:;' class='close-popover'>关闭</a>");
//		  		thisbutton.popover('show');
		  		$(thisbutton).parent().find(".placeTime_span").html(data.message);
		  		
		  		if($("#wcp_statusstr_"+orderid+"").length>0){
		  			$("#wcp_statusstr_"+orderid+"").html(data.message.split("行程")[0]);
		  		}
		  	}
		  	else{
		  		$(thisbutton).parent().find(".placeTime_span").html("加载失败");
		  	}
		  	thisbutton.button('reset');
		});
		
		count++;
		setTimeout("initialise()",1000);
	}
	else{
		count=0;
	}
}

$(document).ready(function(){
	
	//已等待时间
	timedCount();
	
	//自动刷新
	autoRefresh();
	
	$(".getPlaceTime").click(function(){
		var orderid=$(this).attr("data-orderid");
		
		var thisbutton=$(this);

		thisbutton.button('loading');
		
		$.get(ctx+'/order/getDistanceAndTime',{'id':orderid},function(data){
			if(data.success){
//		  		thisbutton.attr("data-content","预计到达："+data.message+" <a href='javascript:;' class='close-popover'>关闭</a>");
//		  		thisbutton.popover('show');
		  		$(thisbutton).parent().find(".placeTime_span").html(data.message);
		  		
		  		if($("#wcp_statusstr_"+orderid+"").length>0){
		  			$("#wcp_statusstr_"+orderid+"").html(data.message.split("行程")[0]);
		  		}
		  	}
		  	else{
		  		$(thisbutton).parent().find(".placeTime_span").html("加载失败");
		  	}
		  	thisbutton.button('reset');
		});
		
	});
	
	$(document).on('click','.close-popover',function(){
		$(this).parent().parent().parent().find(".getPlaceTime").popover('destroy');
	});
	
	initialise();
	$("#initialise").click(function(){
		initialise();
	});
	
	//取消接送
	$(".workcar_cancelthis").click(function(){
	      thisButton = $(this);
	      var confirm = $.scojs_confirm({
	        content: "你真的要取消该接送记录吗？",
	        action:cancelWorkCarPickup
	      });
	      confirm.show();
    });
	
	//备注
	$(".memothis").click(function(){
    	thisButton = $(this);
    	$("#dialog_memo_oldcontent").html(thisButton.attr("data-value-memo"));
    	$("#dialog_memo_id").val(thisButton.attr("data-value"));
    	$("#ok_modal_memo").attr("disabled",false);
    	$('#dialog_memo').modal();
    });
	$("#close_modal_memo").click(function(){
		$('#dialog_memo').modal("hide");
	});
	$("#ok_modal_memo").click(function(){
		if($("#dialog_memo_newcontent").val().length==0){
			$.scojs_message("请填写备注内容", $.scojs_message.TYPE_ERROR);
			return;
		}
		$(this).attr("disabled",true);
		$.post($(this).attr("action"),{'id':thisButton.attr("data-value"),'memo':$("#dialog_memo_newcontent").val()},function(data){
            if(data.success){
            	window.location.reload(true);
            }
            else{
            	$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
		},'json');
	});
	
	//销单
	$(".cancelthis").click(function(){
    	thisButton = $(this);
    	$("#dialog_cancel_id").val(thisButton.attr("data-value"));
    	$("#ok_modal_cancel").attr("disabled",false);
    	$('#dialog_cancel').modal();
    });
	$("#close_modal_cancel").click(function(){
		$('#dialog_cancel').modal("hide");
	});
	$("#ok_modal_cancel").click(function(){
		if($("input[name=cancel_reason]:checked").length==0){
			$.scojs_message("请选择销单原因", $.scojs_message.TYPE_ERROR);
			return false;
		}
		if($("input[name=cancel_reason]:checked").val()=="other" && $("#dialog_cancel_content").val().length==0){
			$.scojs_message("请输入销单原因", $.scojs_message.TYPE_ERROR);
			return false;
		}
		var content="";
		if($("input[name=cancel_reason]:checked").val()=="other"){
			content=$("#dialog_cancel_content").val();
		}
		else{
			content=$("input[name=cancel_reason]:checked").val();
		}
		$(this).attr("disabled",true);
		$.post($(this).attr("action"),{'id':thisButton.attr("data-value"),'content':content},function(data){
            if(data.success){
            	window.location.reload(true);
            }
            else{
            	$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
		},'json');
	});
	
	//强制销单
	$(".powercancelthis").click(function(){
    	thisButton = $(this);
    	$("#dialog_powercancel_id").val(thisButton.attr("data-value"));
    	$("#ok_modal_powercancel").attr("disabled",false);
    	$('#dialog_powercancel').modal();
    });
	$("#close_modal_powercancel").click(function(){
		$('#dialog_powercancel').modal("hide");
	});
	$("#ok_modal_powercancel").click(function(){
		if($("input[name=powercancel_reason]:checked").length==0){
			$.scojs_message("请选择强制销单原因", $.scojs_message.TYPE_ERROR);
			return false;
		}
		if($("input[name=powercancel_reason]:checked").val()=="other" && $("#dialog_powercancel_content").val().length==0){
			$.scojs_message("请输入强制销单原因", $.scojs_message.TYPE_ERROR);
			return false;
		}
		var content="";
		if($("input[name=powercancel_reason]:checked").val()=="other"){
			content=$("#dialog_powercancel_content").val();
		}
		else{
			content=$("input[name=powercancel_reason]:checked").val();
		}
		$(this).attr("disabled",true);
		$.post($(this).attr("action"),{'id':thisButton.attr("data-value"),'content':content},function(data){
            if(data.success){
            	window.location.reload(true);
            }
            else{
            	$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
		},'json');
	});
	
	//收回
	$(".revokethis").click(function(){
    	thisButton = $(this);
    	$("#dialog_revoke_id").val(thisButton.attr("data-value"));
    	$("#ok_modal_revoke").attr("disabled",false);
    	$('#dialog_revoke').modal();
    });
	$("#close_modal_revoke").click(function(){
		$('#dialog_revoke').modal("hide");
	});
	$("#ok_modal_revoke").click(function(){
		if($("#dialog_revoke_content").val().length==0){
			$.scojs_message("请填写收回原因", $.scojs_message.TYPE_ERROR);
			return;
		}
		$(this).attr("disabled",true);
		$.post($(this).attr("action"),{'id':thisButton.attr("data-value"),'content':$("#dialog_revoke_content").val()},function(data){
            if(data.success){
            	window.location.reload(true);
            }
            else{
            	$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
		},'json');
	});
	
	//强制收回
	$(".powerrevokethis").click(function(){
    	thisButton = $(this);
    	$("#dialog_powerrevoke_id").val(thisButton.attr("data-value"));
    	$("#ok_modal_powerrevoke").attr("disabled",false);
    	$('#dialog_powerrevoke').modal();
    });
	$("#close_modal_powerrevoke").click(function(){
		$('#dialog_powerrevoke').modal("hide");
	});
	$("#ok_modal_powerrevoke").click(function(){
		if($("#dialog_powerrevoke_content").val().length==0){
			$.scojs_message("请填写强制收回原因", $.scojs_message.TYPE_ERROR);
			return;
		}
		$(this).attr("disabled",true);
		$.post($(this).attr("action"),{'id':thisButton.attr("data-value"),'content':$("#dialog_powerrevoke_content").val()},function(data){
            if(data.success){
            	window.location.reload(true);
            }
            else{
            	$.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
		},'json');
	});
	
});