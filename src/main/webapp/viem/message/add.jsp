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
	<title>资讯发布系统 - 资讯发布</title>
	<link rel="stylesheet" href="<c:url value='/css/main.css'></c:url>">
	<link rel="stylesheet" href="<c:url value='/lib/font-awesome/css/font-awesome.css'></c:url>">
</head>
<body>
<div class="box">
	<h3>资讯发布</h3>
	<form  id="message_add_frm" method="post" enctype="multipart/form-data">
	<table class="form-table">

		<tr>
			<td>资讯标题</td>
			<td colspan="3" class="control">
				<input type="text" name="mtitle" value="">
			</td>
		</tr>

		<tr>
			<td>类型</td>
			<td colspan="3" class="control">
				<select>
					<option>校内要闻</option>
					<option>学院新闻</option>
					<option>平院生活</option>
					<option>招生就业</option>
					<option>图说平院</option>
					<option>娱乐新闻</option>
					<option>校友动态</option>
				</select>
			</td>
		</tr>
		<tr>
			<td>内容图片</td>
			<td colspan="3" class="control">
				<input type="file" name="file" value="" >
			</td>
		</tr>
		<tr>
			<td>作者</td>
			<td colspan="3" class="control">
				<input type="text" name="mauthor" value="" >
			</td>
		</tr>
		<tr>
			<td>来源</td>
			<td colspan="3" class="control">
				<input type="text" name="msource" value="" >
			</td>
		</tr>
		<tr>
			<td >发布时间</td>
			<td colspan="3" class="control">
				<input type="text" name="mtime" value="" onfocus="WdatePicker()" class="Wdate">
			</td>
		</tr>
		<tr>
			<td>新闻内容</td>
			<td rows="3"colspan="5" class="control">
				<textarea rows="3"cols="5" name="mcontext"></textarea>
			</td>
		</tr>
		
	</table>

	</form>
	<div class="buttons">
		<button id="message_add_btn" class="btn btn-primary va-bottom">保存</button>&nbsp;&nbsp;
		<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
	</div>
</div>
</body>
</html>