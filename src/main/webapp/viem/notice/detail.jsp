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
			<td>公告编号</td>
			<td colspan="3" class="control">
				${notice_detail.nid}
			</td>
		</tr>

		<tr>
			<td>公告标题</td>
			<td colspan="3" class="control">
				${ notice_detail.ntitle}
			</td>
		</tr>
		<tr>
			<td>公告内容</td>
			<td colspan="3" class="control">
			 ${ notice_detail.ncontent}
			</td>
		</tr>
		<tr>
			<td>公告时间</td>
			<td colspan="3" class="control">
				<fmt:formatDate value="${ notice_detail.ntime}" pattern="yyyy-MM-dd"></fmt:formatDate>
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