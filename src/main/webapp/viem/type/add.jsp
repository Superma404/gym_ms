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
	<title>新闻发布系统 - 新闻发布</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>类型管理</h3>
	<form id="type_add_frm" >
	<table class="form-table">
		 
		<tr>
			<td>新闻类型</td>
			<td colspan="3" class="control">
				<input type="text" name="tstyle" value="" >
			</td>
		</tr>
		
	</table>

	</form>
	<div class="buttons">
		<button id="type_add_btn" class="btn btn-primary va-bottom">保存</button>&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>