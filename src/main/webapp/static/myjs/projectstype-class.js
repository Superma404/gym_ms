
 $(function (){
	 
/**
	 * 添加
	 */
	$("input[type='button']").click(function(){
		var typeName=$("#type_name").prop("value");
		var typeDesc=$("#desc").prop("value");
		$.post("insertClass",{"pstName":typeName,"pstDesc":typeDesc},function(data){
			if(data==1){
				 window.location.href="projectstype";
			}
		})
	})
 })
	