<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>新闻发布系统 - 新闻发布</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>投稿信息</h3>
	<table class="form-table">
		
		<tr>
			<td>投稿编号</td>
			<td colspan="3" class="control">
				<input type="text" name="coid" value="${contribute_detail.coid}">
			</td>
		</tr>

		<tr>
			<td>标题</td>
			<td colspan="3" class="control">
				<input type="text" name="cotitle" value="${ contribute_detail.cotitle}" >
			</td>
		</tr>
		<tr>
			<td>内容</td>
			<td colspan="3" class="control">
			 <textarea rows="3" cols="4" name="cocontent">${ contribute_detail.cocontent}</textarea>
			</td>
		</tr>
		<tr>
			<td>内容图片</td>
			<td colspan="3" class="control">
				<img src="http://localhost:8080/image/${contribute_detail.coimg}" width="55px" height="55px">
			</td>
		</tr>
		 
		<tr>
			<td>投稿时间</td>
			<td colspan="3" class="control">
				<input type="text" name="cotime" value="<fmt:formatDate value="${ contribute_detail.cotime}" pattern="yyyy-MM-dd"></fmt:formatDate>" onfocus="WdatePicker()" class="Wdate">
			</td>
		</tr>
		<tr>
			<td>投稿作者</td>
			<td colspan="3" class="control">
				<input type="text" name="cotime" value="${ contribute_detail.coauthor}" onfocus="WdatePicker()" class="Wdate">
			</td>
		</tr>
		<tr>
			<td>投稿状态</td>
			<td colspan="3" class="control">
				<input type="text" name="cotime" value="${ contribute_detail.costatus}" onfocus="WdatePicker()" class="Wdate">
			</td>
		</tr>
		
		
	</table>
	<div class="buttons">
		<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>