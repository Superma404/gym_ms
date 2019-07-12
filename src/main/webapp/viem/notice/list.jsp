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
		<div>
			<a class="btn btn-primary" href="<c:url value='/viem/notice/add.jsp'></c:url>">添加公告信息</a>
		</div>
	</div>


	<table class="list">
		<tr>
			<th>公告编号</th>
			<th>公告标题</th>
			<th>公告内容</th>
			<th>发布时间</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${notice_list.list }" var="c">
		<tr>
			<td>${c.nid}</td>
			<td>${c.ntitle}</td>
			<td>${c.ncontent}</td>
			<td><fmt:formatDate value="${c.ntime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
			<td>
				<a class="fa fa-info" title="详情" href="notice_detail?nid=${c.nid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="notice_update?nid=${c.nid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="notice_delete?nid=${c.nid}"></a>
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