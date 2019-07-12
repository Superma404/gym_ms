$(function (){
	
	$.each($("input[type='button']"),function(index,item){
		
		$(item).click(function(){
			$.post("deleteCommentsById",{"cmId":$(this).prop("name")},function(data){
				if(data==1){
				}else{
					alert("删除失败！")
				}
			})	
			$(this).parent().parent().empty();
		 })
	})
	
	
})