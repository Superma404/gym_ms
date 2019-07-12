$(function(){
	
	$.each($("input[type='button']"), function(i, elt) {
		
		$(elt).click(function(){
			
			var psid=$("select[name='"+$(elt).prop("name")+"']").prop("value");
			$.post("reviews", {"psId":$(elt).prop("name"),"psType":psid}, function(data) {
				if(data==1){
					alert("更新成功！")
				}else{
					alert("更新失败！")
					
				}
			})
		})
	})
	
})
