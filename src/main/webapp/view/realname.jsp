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
	<script src="/crowdfunding/static/js/user_slm.js"></script>
</head>
<body>
	 <form class="form-horizontal" id="myForm">
		<table class="table table-striped">
		<tr>
			<td width="30%">
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-5 control-label">用户姓名</label>
				  </div>
			</td>
			<td>
			<div class="form-group">
				    <div class="col-sm-7">
				      <input type="email" class="form-control" name="usName" placeholder="请输入用户姓名">
				    </div>
				  </div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-5 control-label">身份证号</label>
				  </div>
			</td>
			<td>
			<div class="form-group">
				    <div class="col-sm-7">
				      <input type="email" class="form-control" name="usIdcard" placeholder="请输入身份证号">
				    </div>
				  </div>
			</td>
		</tr>
		<tr>
			<td>
				<div class="form-group">
				    <label for="inputEmail3" class="col-sm-5 control-label">手机号</label>
				  </div>
			</td>
			<td>
			<div class="form-group">
				    <div class="col-sm-7">
				      <input type="email" class="form-control" name="usPhone" placeholder="请输入手机号">
				    </div>
				  </div>
			</td>
		</tr>
		<tr>
			<td></td>
			<td align="right">
				<div class="col-sm-offset-2 col-sm-10">
				      <button type="submit" class="btn btn-default">提交</button>
				</div>
			</td>
		</tr>
		</table>
		</form>
	  
</body>
</html>