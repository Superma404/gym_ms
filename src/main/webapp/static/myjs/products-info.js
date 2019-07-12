
$(function(){
	
	
	var psId=$("input[type='hidden']").val();
	
	/**
	 * 项目评论
	 */
	$("#productsComentor").click(function(){
		//清空tables表
		$("#tables").empty();
		
		$.post("productsComentor",{"psId":psId},function(data){
	              
			  var tr1=$("<tr></tr>");
			       tr1.append("<th>评论用户姓名</th>").append("<td>"+data.user.usName+"</td>").appendTo($("#tables"));
			  var tr2=$("<tr></tr>");
		          tr2.append("<th>项目题目</th>").append("<td>"+data.projects.psName+"</td>").appendTo($("#tables"));
			  var tr3=$("<tr></tr>");
		          tr3.append("<th>评论内容</th>").append("<td>"+data.cmContent+"</td>").appendTo($("#tables"));
			       
		},"JSON")
	
	})
	/**
	 * 项目信息
	 */
	$("#pruductsMsg").click(function(){
		//清空tables表
		$("#tables").empty();
		
		$.post("products-infos",{"psId":psId},function(data){
			var a;
	     if(data.psType==0){
	    	  a="待审核";
	     }else if(data.psType==1){
	    	 a="待上架";
	     }else if(data.psType==2){
	    	  a="众筹中";
	     }else if(data.psType==3){
	    	  a="众筹成功";
	     }else if(data.psType==4){
	    	 a="众筹失败";
	     }else if(data.psType==5){
	    	  a="审核未通过";
	     }
	     
			  var tr=$("<tr></tr>")
			       .append("<th>项目类型</th>").append("<td>"+a+"</td>").appendTo($("#tables"));
			  var tr=$("<tr></tr>")
		       .append("<th>项目标题</th>").append("<td>"+data.psName+"</td>").appendTo($("#tables"));
			  var tr=$("<tr></tr>")
		       .append("<th>筹款目的</th>").append("<td>"+data.psGoal+"</td>").appendTo($("#tables"));
			  var tr=$("<tr></tr>")
		       .append("<th>项目地点</th>").append("<td>"+data.psAddress+"</td>").appendTo($("#tables"));
			  var tr=$("<tr></tr>")
		       .append("<th>筹款资金</th>").append("<td>"+data.psMoney+"</td>").appendTo($("#tables"));
			  var tr=$("<tr></tr>")
		       .append("<th>筹资天数</th>").append("<td></td>").appendTo($("#tables"));
			  var tr=$("<tr></tr>")
		       .append("<th>项目支持人数</th>").append("<td>"+data.psGetpeople+"</td>").appendTo($("#tables"));
			       
	
		},"JSON")
	
	})
	
	
})

	
	
	
	

	
	
	
	
	
