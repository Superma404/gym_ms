<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href='<c:url value='static/css/bootstrap.min.css'></c:url>' />
<link rel="stylesheet"
	href='<c:url value='static/css/dashboard.css'></c:url>' />
<title>Insert title here</title>
</head>
<body>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">项目审核</h1>
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
										<th>发起人</th>
										<th>客服姓名</th>
										<th>客服电话</th>
										<th>客服地址</th>
										<th>项目标题</th>
										<th>开始日期</th>
										<th>支持的人数</th>
										<th>筹款目的</th>
										<th>筹款天数</th>
										<th>宣传视频地址</th>
										<th>项目故事</th>
										<th>关于自己</th>
										<th>项目审核状态</th>
										<th>操作 </th>
									</tr>
								</thead>
								<tbody id="list">
									<c:forEach items="${pageinfo.list }" var="l">
										<tr>
											<td>${l.psId }</td>
											<td>${l.user.usName }</td>
											<td>${l.psCustName} </td>
											<td>${l.psCustPhone} </td>
											<td>${l.psCustAddress} </td>
											<td>${l.psName }</td>
											<td><fmt:formatDate value='${l.psStarttime }'
													type='time' pattern='yyyy-MM-dd' /></td>
											<td>${l.psGetpeople }</td>
											<td>${l.psGoal }</td>
											<td>${l.psDays }</td>	
											<td>${l.psVideo }</td>	
											<td>${l.psStory  }</td>
											<td>${l.psAboutme }</td>
											<td>
											  <select name="${l.psId }">
											        <option value="0" ${l.psType==0? 'selected':"" } >待审核</option>
													<option value="1" ${l.psType==1? 'selected':"" } >待上架</option>
													<option value="2" ${l.psType==2? 'selected':"" }>众筹中</option>
													<option value="3" ${l.psType==3? 'selected':"" }>众筹成功</option>
													<option value="4" ${l.psType==4? 'selected':"" }>众筹失败</option>
													<option value="5" ${l.psType==5? 'selected':"" }>审核未通过</option>
											  </select>
											</td>
											<td>
												<input type="button"  name="${l.psId }" value="修改审核" />
											</td>
												<%-- href="products-info?psId=${l.psId }" --%>
												
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<nav aria-label="Page navigation" class="text-right"
							id="PagePilot">
						<ul class="pagination">
							<li class="disabled"><a
								href="review?pn=${pageinfo.pageNum-1}" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
							</a></li>
							<c:forEach items="${pageinfo.navigatepageNums }" var="ps">
								<li><a href="review?pn=${ps }">${ps }</a></li>
							</c:forEach>
							<li><a href="review?pn=${pageinfo.pageNum+1}"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
<script type="text/javascript"
	src='<c:url value='static/js/jquery1.12.4.min.js'></c:url>'></script>
<script type="text/javascript"
	src='<c:url value='static/js/bootstrap.min.js'></c:url>'></script>
<script type="text/javascript"
	src='<c:url value='static/js/countUp.js'></c:url>'></script>
<script type="text/javascript"
	src='<c:url value='static/myjs/projectsshow.js'></c:url>'></script>
	<script type="text/javascript"
	src='<c:url value='static/myjs/review.js'></c:url>'></script>
</html>