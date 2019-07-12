<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>校信通系统 - 类型管理</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>新闻类型</h3>
	<table class="form-table">
		
		<tr>
			<td>类型编号</td>
			<td colspan="3" class="control">
				<input type="text" name="tid" value="${type_detail.tid}">
			</td>
		</tr>
		<tr>
			<td>新闻类型</td>
			<td colspan="3" class="control">
				<input type="text" name="tstyle" value="${type_detail.tstyle}" >
			</td>
		</tr>
		 
	</table>
	<div class="buttons">
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>