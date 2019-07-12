<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>资讯发布系统 - 资讯发布</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>资讯信息</h3>
	<table class="form-table">
		<tr>
			<td>资讯编号</td>
			<td colspan="3" class="control">
				${message_detail.mid}
			</td>
		</tr>

		<tr>
			<td>资讯标题</td>
			<td colspan="3" class="control">
				${message_detail.mtitle}
			</td>
		</tr>
		<tr>
			<td>资讯内容</td>
			<td colspan="3" class="control">
				${message_detail.mcontent}
			</td>
		</tr>
		<tr>
			<td>内容图片</td>
			<td colspan="3" class="control">
				<img src="http://localhost:8080/image/${message_detail.mimg}" width="55px" height="55px">
			</td>
		</tr>

		<tr>
			<td>资讯作者</td>
			<td colspan="3" class="control">
				${message_detail.mauthor}
			</td>
		</tr>
		<tr>
			<td>发布时间</td>
			<td colspan="3" class="control">
				<fmt:formatDate value="${message_detail.mtime}" pattern="yyyy-MM-dd"></fmt:formatDate>
			</td>
		</tr>
		<tr>
			<td>资讯点击量</td>
			<td colspan="3" class="control">
				${message_detail.mhits}
			</td>
		</tr>



	</table>
	<div class="buttons">
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>