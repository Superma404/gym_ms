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
	<h3>资讯信息列表</h3>
	<div class="actions">
		<div>
			<a class="btn btn-primary" href="<c:url value='/viem/message/add.jsp'></c:url>">发布资讯</a>
		</div>
	</div>

	<table class="list">
		<tr>
			<th>资讯编号</th>
			<th>资讯标题</th>
			<th>资讯内容</th>
			<th>内容图片</th>
			<th>作者</th>
			<th>发布时间</th>
			<th>点击量</th>
			<th>操作</th>
		</tr>
	<c:forEach items="${message_list.list}" var="m">
		<tr>
			<td>${m.mid}</td>
			<td>${m.mtitle}</td>
			<td>${m.mcontent}</td>
			<td>${m.mimg}</td>
			<td>${m.mauthor}</td>
			<td><fmt:formatDate value="${m.mtime}" pattern="yyyy-MM-dd"></fmt:formatDate></td>
			<td>${m.mhits}</td>
			<td>
				<a class="fa fa-info" title="详情" href="message_detail?mid=${m.mid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-pencil" title="编辑" href="message_update?mid=${m.mid}"></a>
				&nbsp;&nbsp;
				<a class="fa fa-remove" title="删除" href="message_delete?mid=${m.mid}"></a>
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