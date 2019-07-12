/*
  $(function (){
	  */
	  
	       //搜索项目
        /*$("#selects").click(function() {
                
        	  var psName=$("input[name='psName']").val();
        	  var usName=$("input[name='usName']").val();
        	  var psType=$("select[name='psType']").val();
        	  var pstType=$("select[name='pstType']").val();
        	alert(psType)
        	alert(pstType)
        	  window.location.href="select?psName='"+psName+"'&usName='"+usName+"'&psType='"+psType+"'&pstType='"+pstType+"'";
              //查找数据
         $.post("products", {"psName":psName,"usName":usName,"psType":psType,"pstType":pstType}, function() {
        		if(data.psId!=-1){
        			//如果返回数据为不为空，则清空表格信息
        			  $("#list").empty();
        	  			//清空分页条
        	  			$("#PagePilot").empty();
        			//添加信息
        	  			
        			var tr=$("<tr></tr>");
        		    var td=$("<td></td>").append(data.psId).appendTo(tr);
        			var td=$("<td></td>").append(data.projectstype.pstName).appendTo(tr);
        			//时间转化
        			var starttime=new Date(data.psStarttime).toLocaleDateString().replace(/\//g, "-") + " " + new Date(data.psStarttime).toTimeString().substr(0, 8);
        			var endtime=new Date(data.psEndtime).toLocaleDateString().replace(/\//g, "-") + " " + new Date(data.psEndtime).toTimeString().substr(0, 8);
        			tr.append($("<td></td>").append(data.psName))
        			  .append($("<td></td>").append("90%"))
        		      .append($("<td></td>").append( starttime ))
        		      .append($("<td></td>").append( endtime))
        		      .append($("<td></td>").append(data.psGetmoney ))
        		      .append($("<td></td>").append(data.user.usName))
        		      .append($("<td></td>").append($('<a href="products-info?psId='+data.psId+'" target="index1">详情</a>')))
        		      .appendTo($("#list"));
        		}else{
        			alert("抱歉！你要找的结果不存在！")
        		}
        		
        	},"JSON")  
        	
        	
		})
		
  })
  */