<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <script type="text/javascript"
	src="/crowdfunding/static/jquery/jquery-1.12.4.min.js"></script>
<link
	href="/crowdfunding/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="/crowdfunding/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
      <div class="col-md-12">
      <form class="form-horizontal" id="updatefrm">
      <input type="hidden" name="usId" value="${user.usId }"/>
           <input type="hidden" name="usPassword" value="${user.usPassword }"/>
           <input type="hidden" name="usCode" value="${user.usCode }"/>
           <input type="hidden" name="usRole" value="${user.usRole }"/>
           <table class="table table-hover" border="0">
           
           <tr>
           <td>
        	<div class="form-group">
			    <label for="inputusername" class="col-sm-2 control-label">真实姓名</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" id="inputusname" readOnly="true" name="usName" value="${user.usName }">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div> 
			  </td> 
			 </tr>
			 <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">邮箱</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control"  readOnly="true" id="inputusemail" name="usEmail" value="${user.usEmail }">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>
			 <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">账户金额</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" readOnly="true" id="inputusmoney" name="usMoney" value="${user.usMoney}">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>
			 <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">身份证号</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" readOnly="true" id="inputusidcard" name="usIdcard" value="${user.usIdcard}">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>
			 <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">手机号</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control" readOnly="true" id="inputusphone" name="usPhone" value="${user.usPhone}">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>
			 <tr>
			  <td>
        	<div class="form-group">
			    <label  class="col-sm-2 control-label">地址</label>
			    <div class="col-sm-10">
			      <input type="text" class="form-control"  id="inputusaddress" name="usAddress" value="${user.usAddress}">
			      <span id="helpBlock2" class="help-block"></span>
			    </div>
			 </div>  
			  </td>
			 </tr>
			 <tr>
			  <td>
			 <div class="form-group">
			    <label for="inputussex" class="col-sm-2 control-label">性别</label>
			    <div class="col-sm-10">
			      <label class="radio-inline">
			      <input type="radio" name="usSex" id="inlineRadio1" value="man" ${user.usSex=='man'?'checked':'' } />男 
			          </label>
					<label class="radio-inline">
			      <input type="radio" name="usSex" id="inlineRadio2" value="woman" ${user.usSex=='woman'?'checked':'' } />女
					</label>
					</div>
					</div>
					 </td>
					</tr>
					<tr>
					 <td>
					 <div class="row">
					 <div class="col-sm-4 col-sm-offset-8">
						<button class="btn btn-info btn-sm " id="btnupdate">
				      		  修改
				        </button>
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