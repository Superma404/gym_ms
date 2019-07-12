<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
           <h3 class="btn btn-primary" >审核详细信息</h3> 
            <div class="panel panel-default">
         </div>
                <div class="panel-body">

                    <div class="table-responsive ">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr >
                                <th>用户姓名</th>
                                <th>身份证号码</th>
                                <th>身份证照片</th>
                                <th>手持身份证照片</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                    <tbody id="tbody">
                     </tbody>
                        </table>
                    </div>
               
                    </div>
                    	<div class="col-lg-offset-2 col-lg-10">
								<nav aria-label="Page navigation">
										<ul class="pagination">
												    <li>
												    	<a href="selectAll?pn=1">首页</a>
												    </li>
												     <li>
												      <a href="selectAll?pn=${listUser.pageNum-1}">上一页</a>
												    </li>
													  <c:forEach items="${listUser.navigatepageNums}" var="n">
															<li><a href="selectAll?pn=${n}">${n}</a></li>
													</c:forEach>
												    <li>
												      <a href="selectAll?pn=${listUser.pageNum+1}">下一页</a>
												    </li>
												    <li>
												      <a href="selectAll?pn=${listUser.pages}">末页</a>
												    </li>
									</ul>
								</nav>
                		</div>
  
		</div>
</body>
</html>