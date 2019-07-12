<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="/crowdfunding/static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/crowdfunding/static/css/dashboard.css" />
    <link rel="stylesheet" href="/crowdfunding/static/css/dialog.css" />
    <script type="text/javascript" src="/crowdfunding/static/js/jquery1.12.4.min.js"></script>
    <script type="text/javascript" src="/crowdfunding/static/js/bootstrap.min.js"></script>
</head>
<body>
 <!--左侧导航栏end-->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
           <h3 class="btn btn-primary" >参与捐赠的详细信息</h3> 
            <div class="panel panel-default">
         </div>
                <div class="panel-body">

                    <div class="table-responsive ">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>参与Id</th>
                                <th>用户姓名</th>
                                <th>项目Id</th>
                                <th>捐赠金额</th>
                                <th>捐赠时间</th>
                            </tr>
                            </thead>
                            <tbody>
                        <c:forEach items="${listFunging.list}" var="p">
                            <tr>
                                <td>${p.fdId}</td>
                                <td>${p.uid.usName}</td>
                                <td>${p.fdPsId}</td>
                                <td>${p.fdMoney}</td>
                                <td><fmt:formatDate type="date" pattern="yyyy-MM-dd HH:mm:ss" value="${p.fdTime}"></fmt:formatDate></td>
                            </tr>
                        </c:forEach>
                            </tbody>
                        </table>
                    </div>
               
                    </div>
                    	<div class="col-lg-offset-2 col-lg-10">
								<nav aria-label="Page navigation">
										<ul class="pagination">    
											    <li>
											    	<a href="listFinging?pn=1">首页</a>
											    </li>
											     <li>
											      <a href="selectFunding?pn=${listFunging.pageNum-1}">上一页</a>
											    </li>
												  <c:forEach items="${listFunging.navigatepageNums}" var="n">
														<li><a href="selectFunding?pn=${n}">${n}</a></li>
												</c:forEach>
											    <li>
											      <a href="selectFunding?pn=${listFunging.pageNum+1}">下一页</a>
											    </li>
											    <li>
											      <a href="selectFunding?pn=${listFunging.pages}">末页</a>
											    </li>
									</ul>
								</nav>
                		</div>
  
		</div>
</body>
</html>