<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="static/js2/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    $(function(){
    	$("#btn").click(function(){
    		var formData=new FormData($("#uploadFrm")[0]);
    		$.ajax({
    			    type : "POST",  
			        url : "upload.do",  
			        data : formData,
			        async: false,  
			        cache: false,  
			        contentType: false,  
			        processData: false,
			        success : function(msg){  
			        }
    		}
    		);
    		
    	});
    })
</script>
</head>
<body>
           <input type="button" id="btn"/>
     <form enctype="multipart/form-data" method="post" id="uploadFrm">
           <input type="file" name="myfile"/>
           <input type="text" name="desc"/>
     </form>s
</body> 
</html>