<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript"
	src="/static/jquery/jquery-1.12.4.min.js"></script>
<link
	href="/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
      <div class="col-md-12">
      <form class="form-horizontal" id="updatefrm">
           <table class="table table-hover" border="0">
			   <tr>

			   <td>
				   <div class="form-group">
					   <label  class="col-sm-2 control-label">用户名</label>
					   <div class="col-sm-10">
						   <input type="text" class="form-control" id="inputususername" readOnly="true" name="usRealname" value="${user.usName }">
						   <span id="helpBlock7" class="help-block"></span>
					   </div>
				   </div>
			   </td>
			   </tr>


           <tr>
           <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">真实姓名</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputusname" readOnly="true" name="usRealname" value="${user.usRealname }">
			      <span id="helpBlock5" class="help-block"></span>
			    </div>
			 </div> 
			  </td>
		   </tr>
			   <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">邮箱</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control"  readOnly="true" id="inputusemail" name="usEml" value="${user.usEml }">
			      <span id="helpBlock4" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>
			 <tr>

			 </tr>
			 <tr>

			 </tr>
			 <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">手机号</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" readOnly="true" id="inputusphone" name="usTel" value="${user.usTel}">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>

					<tr>
					 <td>
					 <div class="row">
					 <div class="col-sm-4 col-sm-offset-8">

			        </div>
			        </div>
			         </td>
			        </tr>
			   </table> 
			   </form>
      </div>
      </div>
     <script type="text/javascript">
		 $(document).ready(function(){
				$("#btnupdate").click(function(){
					$.post("updateuser",$("#updatefrm").serialize(),function(msg){
						if(msg==1){
							window.location.reload();
						}
					})
				})
		    })
	 </script>
</body>
</html>