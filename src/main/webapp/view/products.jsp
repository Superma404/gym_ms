<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>众筹管理后台</title>
<link rel="stylesheet"
	href='<c:url value='static/css/bootstrap.min.css'></c:url>' />
<link rel="stylesheet"
	href='<c:url value='static/css/dashboard.css'></c:url>' />
</head>
         
<body>
<br/>
<br/>
<br/>
<!--  -->
                        <!-- ****************************************************************************************************** -->
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">所有众筹项目</h1>

								<div class="panel panel-default">
									<div class="panel-body">
										<form class="form-inline" action="products">
											<div class="form-group">
												<input type="text" class="form-control" name="psName"
													placeholder="项目名称">
											</div>
											<div class="form-group">
												<input type="text" class="form-control" name="usName"
													placeholder="项目发起人">
											</div>
											<div class="form-group">
												<select class="form-control" name="psType">
													<option value="0">待审核</option>
													<option value="1">待上架</option>
													<option value="2">众筹中</option>
													<option value="3">众筹成功</option>
													<option value="4">众筹失败</option>
													<option value="5">审核未通过</option>
												</select>
											</div>
											<div class="form-group">
												<select class=form-control name="pstType">
													<option value="0">公益活动</option>
													<option value="1">项目类型</option>
													<option value="2">教育助学</option>
													<option value="3">爱心环保</option>
													<option value="4">扶贫助困</option>
													<option value="5">公益创业</option>
												</select>
											</div>
											&nbsp;&nbsp;
											<input type="submit" class="btn btn-default btn-primary" id="selects" value="查询"/>
										</form>
									</div>
								</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<div class="panel-title">所有项目列表</div>
					</div>
						<div class="panel-body">
	
								<div class="table-responsive ">
									<table class="table table-striped table-bordered">
										<thead>
											<tr>
												<th>序号</th>
												<th>项目类型</th>
												<th>项目名称</th>
												<th>项目进度</th>
												<th>开始日期</th>
												<th>结束日期</th>
												<th>已筹金额</th>
												<th>发起人</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody id="list">
										   
											<c:forEach items="${pageinfo.list }" var="l">
		
												<tr>
													<td>${l.psId }</td>
													<td>${l.projectstype.pstName }</td>
													<td>${l.psName }</td>
													<td>${l.user.usCode }</td>
													<td><fmt:formatDate value='${l.psStarttime }' type='time' pattern='yyyy-MM-dd'/></td>
													<td><fmt:formatDate value='${l.psEndtime }' type='time' pattern='yyyy-MM-dd'/></td>
													<td>${l.psGetmoney }</td>
													<td>${l.user.usName }</td>
													<td>
													  <a href="products-info?psId=${l.psId }"  target="page"> 详情</a>
													</td>
												</tr>
											</c:forEach>
												
										</tbody>
									</table>
									${msg }
								</div>
	
								<nav aria-label="Page navigation" class="text-right" id="PagePilot">
								<ul class="pagination">
									<li class="disabled"><a
										href="products?pn=${pageinfo.pageNum-1}" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
									</a></li>
									<c:forEach items="${pageinfo.navigatepageNums }" var="ps">
										<li><a href="products?pn=${ps }">${ps }</a></li>
									</c:forEach>
									<li><a href="products?pn=${pageinfo.pageNum+1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
								</nav>
						</div>

				</div>

			</div>
		</div>
	</div>

	<script type="text/javascript"
		src='<c:url value='static/js/jquery1.12.4.min.js'></c:url>'></script>
	<script type="text/javascript"
		src='<c:url value='static/js/bootstrap.min.js'></c:url>'></script>
	<script type="text/javascript"
		src='<c:url value='static/js/countUp.js'></c:url>'></script>
		<script type="text/javascript"
		src='<c:url value='static/myjs/projectsshow.js'></c:url>'></script>
	<script type="text/javascript">
		
		
	
		
		
	</script>
</body>
</html>
