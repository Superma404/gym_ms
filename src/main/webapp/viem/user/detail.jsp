<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>校信通系统 - 用户管理</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>用户信息</h3>
	<table class="form-table">
		
		<tr>
			<td>用户编号</td>
			<td colspan="3" class="control">
				<input type="text" name="usId" value="${user_detail.usId}">
			</td>
		</tr>
		<tr>
			<td>用户名</td>
			<td colspan="3" class="control">
				<input type="text" name="usName" value="${user_detail.usName}">
			</td>
		</tr>
		<tr>
			<td>用户密码</td>
			<td colspan="3" class="control">
				<input type="text" name="usPassword" value="${user_detail.usPassword }" >
			</td>
		</tr>
	 
		<tr>
			<td>用户姓名</td>
			<td colspan="3" class="control">
				<input type="text" name="usRealname" value="${user_detail.usRealname}" >
			</td>
		</tr><tr>
			<td>用户手机</td>
			<td colspan="3" class="control">
				<input type="text" name="usTel" value="${user_detail.usTel}" >
			</td>
		</tr>
		<tr>
			<td>用户邮箱</td>
			<td colspan="3" class="control">
				<input type="text" name="usEml" value="${user_detail.usEml}" >
			</td>
		</tr>
		<tr>
			<td>账号状态</td>
			<td colspan="3" class="control">
				<input type="text" name="usStatus" value="${user_detail.usStatus}" >
			</td>
		</tr>
		
	</table>
	<div class="buttons">
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>