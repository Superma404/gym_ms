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
	<h3>投稿列表</h3>
	<div class="actions">
		 
	</div>

	<table class="list">
		<tr>
			<th>投稿编号</th>
			<th>标题</th>
			<th>内容</th>
			<th>内容图片</th>
			<th>投稿时间</th>
			<th>投稿作者</th>
			<th>投稿状态</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${contribute_list.list }" var="c">
		<tr>
			<td>${c.coid}</td>
			<td>${c.cotitle}</td>
			<td>${c.cocontent}</td>
			<td>${c.coimg}</td>
			<td><fmt:formatDate value="${c.cotime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
			<td>${c.coauthor}</td>
			<td>${c.costatus}</td>
			<td>
				<a class="fa fa-info" title="详情" href="contribute_detail?coid=${c.coid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="contribute_update?coid=${c.coid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="contribute_delete?coid=${c.coid}"></a>
			</td>
		</tr>
	</c:forEach>
	</table>
	<div class="pager-info">
		<div>共有 1 条记录，第 1/1 页 </div>
		<div>
			<ul class="pagination">
				<li class="paginate_button previous disabled }">
				<a href="#">上一页</a>
				</li>
				<li class="paginate_button active"><a href="#">1</a></li>
				<li class="paginate_button next disabled">
				<a href="#">下一页</a>
				</li>
			</ul>
		</div>
	</div>
</div>
<script src="../../lib/jquery/jquery.js"></script>
<script>
function confirmDelete(id){
	if (confirm("确定要删除码？")) {
		alert('发送删除请求，刷新页面（不要异步）');
	}
	return false;
}
</script>
</body>
</html>