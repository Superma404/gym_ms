<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
           <h3 class="btn btn-primary" >日志的详细信息</h3> 
            <div class="panel panel-default">
         </div>
                <div class="panel-body">

                    <div class="table-responsive ">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>日志ID</th>
                                <th>日志信息</th>
                                <th>用户ID</th>
                                <th>登录姓名</th>
                                <th>用户身份证</th>
                            </tr>
                            </thead>
                            <tbody>
                        <c:forEach items="${listLog.list}" var="p">
                            <tr>
                                <td>${p.logId}</td>
                                <td>${p.logContent}</td>
                                <td>${p.log.usId}</td>
                                <td>${p.log.usName}</td>
                                <td>${p.log.usIdcard}</td>
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
											    	<a href="selectLog?pn=1">首页</a>
											    </li>
											     <li>
											      <a href="selectLog?pn=${listLog.pageNum-1}">上一页</a>
											    </li>
												  <c:forEach items="${listLog.navigatepageNums}" var="n">
														<li><a href="selectLog?pn=${n}">${n}</a></li>
												</c:forEach>
											    <li>
											      <a href="selectLog?pn=${listLog.pageNum+1}">下一页</a>
											    </li>
											    <li>
											      <a href="selectLog?pn=${listLog.pages}">末页</a>
											    </li>
									</ul>
								</nav>
                		</div>
  
		</div>
</body>
</html>