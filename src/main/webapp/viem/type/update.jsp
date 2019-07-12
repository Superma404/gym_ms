<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新闻发布系统 - 新闻发布</title>
	<script type="text/javascript" src="<c:url value='/js/jquery-3.2.1.min.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/js/update.js'/>"></script>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<div class="box">
	<h3>修改新闻信息</h3>
	<form id="type_update_frm" method="post">
	<input type="hidden" name="tid" value="${type_detail.tid }"/>
	<table class="form-table">
	
		<tr>
			<td>发布编号</td>
			<td colspan="3" class="control">
				<input type="text" name="nid" value="${type_detail.tid}">
			</td>
		</tr>
		 
		<tr>
			<td>新闻类型</td>
			<td colspan="3" class="control">
				<input type="text" name="tstyle" value="${type_detail.tstyle}" >
			</td>
		</tr>
	</table>
	</form>
	<div class="buttons">
		<button id="type_update_btn" class="btn btn-primary va-bottom">保存</button>&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>