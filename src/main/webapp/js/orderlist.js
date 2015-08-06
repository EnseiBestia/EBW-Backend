var ctx=window.daijia.ctx;
var thisButton;
$(function () {
	
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
	
	//销单
	$(".cancelthis").click(function(){
    	thisButton = $(this);
    	$("#dialog_cancel_id").val(thisButton.attr("data-value"));
    	if(thisButton.attr("data-memo") && $("#dialog_cancel_oldcontent").length>0){
    		$("#dialog_cancel_oldcontent").html(thisButton.attr("data-memo"));
    	}
//    	$("#ok_modal_cancel").attr("disabled",false);
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
		$("#ok_modal_cancel").attr("disabled",true);
		$.post($("#cancel_form").attr("action"),{'id':$("#dialog_cancel_id").val(),'content':content},function(data){
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
		$("#ok_modal_powercancel").attr("disabled",true);
		$.post($("#powercancel_form").attr("action"),{'id':$("#dialog_powercancel_id").val(),'content':content},function(data){
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
	
	$(".form-horizontal").submit(function(){
		$(this).find("button[type=submit]").attr("disabled",true);
		return true;
	});
	
});


