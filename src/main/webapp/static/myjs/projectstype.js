$(function(){
	
	/**
	 * 查找
	 */
	$.each($("input[value='详情/修改']"),function(index,item){
		$(item).click(function(){
			$.post("selectProjectById",{"pstId":$(this).prop("name")},function(data){
				var  startime=new Date(data.pstStardate).toLocaleDateString().replace(/\//g, "-") + " " + new Date(data.pstStardate).toTimeString().substr(0, 8);
				$("#p_id").prop("value",data.pstId);
				$("#p_name").prop("value",data.pstName);
				$("#p_des").prop("value",data.pstDesc);
				$("#p_time").prop("value",startime);
				$("#p_status").prop("value",data.pstStatus);
				
				$('#myModal').modal({
					  keyboard: false
					})
					
			})
		})
	})
	/**
	 * 确认修改
	 */
	$("input[value='确认修改']").click(function(){
		$.post("update",{"pstId":$("#p_id").prop("value"),"pstName":$("#p_name").prop("value"),"pstDesc":$("#p_des").prop("value"),"pstType":$("#p_status").prop("value")},function(data){
			if(data==1){
				$('#myModal').modal('hide');
			}
		},"JSON")
		var	id=$("#p_id").prop("value");
		alert($("tr[id='"+id+"']").prop("id"))
		$("tr[id='"+id+"']").empty();
		/*$("tr[id='"+id+"']");*/
		$("<td></td>").append(id).appendTo($("tr[id='"+id+"']"));
		$("<td></td>").append($("#p_name").prop("value")).appendTo($("tr[id='"+id+"']"));
		$("<td></td>").append($("#p_des").prop("value")).appendTo($("tr[id='"+id+"']"));
		$("<td></td>").append($("#p_time").prop("value")).appendTo($("tr[id='"+id+"']"));
		$("<td></td>").append($("#p_status").prop("value")).appendTo($("tr[id='"+id+"']"));
		$("<td class='operation'></td>")
		              .append("<input type='button' value='详情/修改' class='btn btn-info' name='"+id+"'></input>")
					  .append("<input type='button' value='删除' class='btn btn-danger'></input>")
					  .appendTo($("tr[id='"+id+"']"));
		
	})
     /**
      * 根据id删除
      */
	  $.each($("input[value='删除']"),function(index,item){
		  $(item).click(function(){
			 var id=$(this).prev().prop("name");
			  $.post("delete",{"pstId":$(this).prev().prop("name")},function(data){
				  if(data==1){
					  $("tr[id='"+id+"']").remove();
				  }
			  })
		  })
	  })
})