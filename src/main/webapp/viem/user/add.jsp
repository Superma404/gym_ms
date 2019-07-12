<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/add.js'/>"></script>
    <script type="text/javascript" charset=UTF-8 src="<c:url value='/My97DatePicker/WdatePicker.js'/>"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>校信通系统 - 用户管理</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>用户管理</h3>
	<form id="use_add_frm"  enctype="multipart/form-data">
	<table class="form-table">

		<tr>
			<td>用户名</td>
			<td colspan="3" class="control">
				<input type="text" name="usName" value="">
			</td>
		</tr>
			<td>用户密码</td>
			<td colspan="3" class="control">
				<input type="text" name="usPassword" value="" >
			</td>
		</tr>
		<tr>
			<td>用户姓名</td>
			<td colspan="3" class="control">
				<input type="text" name="usRealname" value="" >
			</td>
		</tr>
		<tr>
			<td>用户手机</td>
			<td colspan="3" class="control">
				<input type="text" name="usTel" value="" >
			</td>
		</tr>
		 
		<tr>
			<td>用户邮箱</td>
			<td colspan="3" class="control">
				<input type="text" name="usEml" value="" >
			</td>
		</tr>
		<tr>
			<td>账号状态</td>
			<td colspan="3" class="control">
				<input type="text" name="usStatus" value="" >
			</td>
		</tr>
	</table>
	</form>
	<div class="buttons">
		<button id="use_add_btn" class="btn btn-primary va-bottom">保存</button>&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>

</div>
</body>
</html>