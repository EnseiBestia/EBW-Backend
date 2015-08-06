var ctx=window.daijia.ctx;

var initWebSocket = function() {
	//建立长连接
	var sock = new SockJS('http://' + window.location.host + '/push', null, {
		  debug:true,
         'protocols_whitelist': ['websocket', 'xhr-streaming','iframe-eventsource', 'iframe-htmlfile','xhr-polling', 'jsonp-polling'] });
	
	sock.onopen = function() {
		sock.send("{'command':'connected','userId':"+window.daijia.userId+"}");
	};
	sock.onmessage = function(evt) {
		
		var result = $.parseJSON(evt.data);
		
		if(result.type == "driverOnline"){
			$.scojs_message(result.driverName+"已经上线", $.scojs_message.TYPE_OK);
		}
		else if(result.type == "newOrders"){//添加新工单
	    	document.getElementById('new_order_play').play();//播放声音
		}
		else if(result.type == "paidan"){//派单
	    	if(result.ringing){
    			document.getElementById('new_order_play').play();//播放声音
    		}
	    }
		else if(result.type == "fillorderv2"){//补单
			document.getElementById('new_order_play').play();//播放声音
		}
		else if(result.type == "refuse"){//拒单
			document.getElementById('new_order_play').play();//播放声音
			
			var driverName = result.driverName;
			var orderNumber = result.orderNumber;
			$.scojs_message("救援人员【"+driverName+"】拒绝了工单【"+orderNumber+"】", $.scojs_message.TYPE_ERROR);
		}
		else if(result.type == "finish"){
			$.scojs_message(result.message, $.scojs_message.TYPE_OK);
		}
		else if(result.type == "deviceinfo"){
			$("#mobileVersion_span").html(result.mobileVersion);
			$("#systemVersion_span").html(result.systemVersion);
			if(result.wifi){
				$("#wifi_span").html("开启");
			}else{
				$("#wifi_span").html("关闭");
			}
			if(result.gps){
				$("#gps_span").html("开启");
			}else{
				$("#gps_span").html("关闭");
			}
			if(result.runningBackground){
				$("#runningBackground_span").html("是");
			}else{
				$("#runningBackground_span").html("否");
			}
			if(result.root){
				$("#root_span").html("是");
			}else{
				$("#root_span").html("否");
			}
			
			var networkType=result.networkType;
			if(networkType==0){
				$("#networkType_span").html("wifi");
			}else if(networkType==1 || networkType==2 || networkType==4 || networkType==7 || networkType==11){
				$("#networkType_span").html("2G");
			}else if(networkType==3 || networkType==5 || networkType==6 || networkType==10 || networkType==12 || networkType==14 || networkType==15){
				$("#networkType_span").html("3G");
			}else if(networkType==8 || networkType==9){
				$("#networkType_span").html("3.5G");
			}else if(networkType==13){
				$("#networkType_span").html("4G");
			}
			
			$("#operatorName_span").html(result.operatorName);
			
			$("#deviceInfo_loading_div").hide();
	    	$("#deviceInfo_complete_div").slideDown();
		}
	};
	sock.onclose = function() {
		sock.close(); //关闭TCP连接
		initWebSocket();
    };
    
};

$(function () {

	if($("#licenseTime").length>0){
		$("#licenseTime").datetimepicker({ format: 'yyyy-mm-dd', language: 'zh-CN', minView: 'month', pickDate: true, pickTime: false, inputMask: false, autoclose: true ,endDate:new Date()});
	}

});

//list
var thisButton;
function deleteDriver() {
    $.post(ctx+'/driver/delete',{'id':thisButton.attr("data-value")},function(data){
            if(data.success){
//            	thisButton.parent().parent().remove();
                $.scojs_message('救援人员删除成功', $.scojs_message.TYPE_OK);
                window.location.reload(true);//强制刷新
            } else {
                $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
            }
    },'json');
}

function dongjieDriver(){
	$.post(ctx+'/driver/dongjie',{'id':thisButton.attr("data-value")},function(data){
        if(data.success){
//        	thisButton.html("解冻");
//        	thisButton.removeClass("dongjiethis").addClass("jiedongthis");
//        	thisButton.replaceWith("<a href='javascript:;' data-value='"+thisButton.attr("data-value")+"' class='btn-link jiedongthis'>解冻</a>");
            $.scojs_message('冻结救援人员成功', $.scojs_message.TYPE_OK);
            window.location.reload(true);//强制刷新
        } else {
            $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
        }
	},'json');
}

function jiedongDriver(){
	$.post(ctx+'/driver/jiedong',{'id':thisButton.attr("data-value")},function(data){
        if(data.success){
//        	thisButton.html("冻结");
//        	thisButton.removeClass("jiedongthis").addClass("dongjiethis");
//        	thisButton.replaceWith("<a href='javascript:;' data-value='"+thisButton.attr("data-value")+"' class='btn-link dongjiethis'>冻结</a>");
            $.scojs_message('解冻救援人员成功', $.scojs_message.TYPE_OK);
            window.location.reload(true);//强制刷新
        } else {
            $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
        }
	},'json');
}

function jiebangDriver(){
	$.post(ctx+'/driver/jiebang',{'id':thisButton.attr("data-value")},function(data){
        if(data.success){
            $.scojs_message('解绑成功', $.scojs_message.TYPE_OK);
            window.location.reload(true);//强制刷新
        } else {
            $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
        }
	},'json');
}

function powerofflineDriver(){
	$.post(ctx+'/driver/poweroffline',{'id':thisButton.attr("data-value")},function(data){
        if(data.success){
            $.scojs_message('强制下线成功', $.scojs_message.TYPE_OK);
            window.location.reload(true);//强制刷新
        } else {
            $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
        }
	},'json');
}

function onlineDriver(){
	$.post(ctx+'/driver/online',{'id':thisButton.attr("data-value")},function(data){
        if(data.success){
            $.scojs_message('上线成功', $.scojs_message.TYPE_OK);
            window.location.reload(true);//强制刷新
        } else {
            $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
        }
	},'json');
}


$(document).ready(function(){
	
	if(window.daijia.userId){
		initWebSocket();
	}
	
    $(".deletethis").click(function(){
          thisButton = $(this);
          var confirm = $.scojs_confirm({
            content: "你真的要删除该救援人员吗？",
            action:deleteDriver
          });
          confirm.show();
    });
    
    //解绑
    $(".jiebangthis").click(function(){
	        thisButton = $(this);
	        var confirm = $.scojs_confirm({
	          content: "你真的要解绑该救援人员吗？",
	          action:jiebangDriver
	        });
	        confirm.show();
	});
    
    //强制下线
    $(".powerofflinethis").click(function(){
        thisButton = $(this);
        var confirm = $.scojs_confirm({
          content: "你真的要强制下线该救援人员吗？",
          action:powerofflineDriver
        });
        confirm.show();
    });
    
    //上线
    $(".onlinethis").click(function(){
        thisButton = $(this);
        var confirm = $.scojs_confirm({
          content: "你真的要让该救援人员上线吗？",
          action:onlineDriver
        });
        confirm.show();
    });
    
    $(document).on('click','.dongjiethis',function(){
        thisButton = $(this);
        var confirm = $.scojs_confirm({
          content: "你真的要冻结该救援人员吗？",
          action:dongjieDriver
        });
        confirm.show();
    });
    
    $(document).on('click','.jiedongthis',function(){
        thisButton = $(this);
        var confirm = $.scojs_confirm({
          content: "你真的要解冻该救援人员吗？",
          action:jiedongDriver
        });
        confirm.show();
    });
    
    $(".getGtStatus").click(function(){
    	var button=$(this);
    	button.text("获取中..");
    	$.post(ctx+'/driver/getGtStatus',{'userid':button.attr("data-value")},function(data){
            if(data.success){
            	if(data.result){
            		if(data.result=='Online'){
            			button.text("在线");
            		}
            		else if(data.result=='Offline'){
            			button.text("离线");
            		}
            		else if(data.result=='TokenMD5NoUsers'){
            			button.text("未绑定");
            		}
            		else if(data.result=='TokenMD5Error'){
            			button.text("未绑定");
            		}
            	}
            } else {
                $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
                button.text("点击获取");
            }
    	},'json');
    });
    
    //修改密码
    $(".passwordthis").click(function(){
    	thisButton = $(this);
    	$("#dialog_whose").html(thisButton.attr("data-value-name"));
    	$("#ok_modal").attr("disabled",false);
    	$('#dialog_password').modal();
    });
    
    //关闭修改密码窗口
    $(".close_modal").click(function(){
    	$('#dialog_password').modal("hide");
    });
    
    //确定修改密码
    $("#ok_modal").click(function(){
    	var password=$.trim($("#password").val());
		if(password=='' || password.length<4){
			$.scojs_message("密码不能为空且长度至少为4个字符", $.scojs_message.TYPE_ERROR);
			return false;
		}
		var passwordconfirm=$.trim($("#passwordconfirm").val());
		if(password!=passwordconfirm){
			$.scojs_message("密码不一致", $.scojs_message.TYPE_ERROR);
			return false;
		}
		$(this).attr("disabled",true);
		$.post(ctx+'/driver/changepassword',{'id':thisButton.attr("data-value"),'password':password},function(data){
	        if(data.success){
	            $.scojs_message('密码修改成功', $.scojs_message.TYPE_OK);
	            $('#dialog_password').modal("hide");
	        } else {
	            $.scojs_message(data.message, $.scojs_message.TYPE_ERROR);
	        }
	        $("#password").val("");
	        $("#passwordconfirm").val("");
		},'json');
    });
    
    //身份证改变
    $("#idCard").change(function(){
		if (IdCardValidate($(this).val())){
			var xingbie=maleOrFemalByIdCard($(this).val());
			if(xingbie && xingbie=='male'){
				$("input[name=gender]")[0].checked="checked";
			}
			else if(xingbie && xingbie=='female'){
				$("input[name=gender]")[1].checked="checked";
			}
			$.scojs_message("身份证号填写正确", $.scojs_message.TYPE_OK);
		}
		else{
			$.scojs_message("身份证号格式错误", $.scojs_message.TYPE_ERROR);
		}
    });
    
    //获取设备信息
    $(".deviceInfo").click(function(){
    	$("#deviceInfo_loading_div").show();
    	$("#deviceInfo_complete_div").hide();
    	$("#dialog_deviceInfo").modal();
    	$.post(ctx+'/driver/deviceInfo',{'id':$(this).attr("data-value")},function(data){
	        if(data.success){
	           
	        } else {
	          
	        }
		},'json');
    });
    
    

    //提交表单
    $("#submit_form").submit(function(){
    	
    	var realname=$("#realname").val();
		var reg=new RegExp("[\\u4E00-\\u9FFF]+","g");
		if(reg.test(realname)){
			//漢字
			if(realname.length>4){
				$.scojs_message("真实姓名长度最多为4个汉字", $.scojs_message.TYPE_ERROR);
				return false;
			}
		}
		else{
			if(realname.length>8){
				$.scojs_message("真实姓名使用非汉字最多8个字符", $.scojs_message.TYPE_ERROR);
				return false;
			}
		}
    	
    	var idCard=$("#idCard").val();
    	var idcardResult=IdCardValidate(idCard);
    	if(!idcardResult){
    		$.scojs_message("身份证号格式错误", $.scojs_message.TYPE_ERROR);
//    		return false;
    	}
		
		var phone=$("#phone").val();
		var isphone=/^\+?\d{3,13}(\-?(\d{6,8}?))?(\-?(\d{4,8}?))*$/; 
		if (!isphone.test(phone)){
			$.scojs_message("手机号格式不正确", $.scojs_message.TYPE_ERROR);
			return false;
		}
    	
		$("#submit_button").attr("disabled",true);
    	return true;
    }); 
    
});

