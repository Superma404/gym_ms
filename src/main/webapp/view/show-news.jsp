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
<script type="text/javascript" src="/crowdfunding/static/js/jquery1.12.4.min.js"></script>
 <script type="text/javascript" src="/crowdfunding/static/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="/crowdfunding/static/mmq-js/news.js"></script>	
 <style type="text/css">

 
 </style>
</head>
<body>
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active" >
      <img src="/crowdfunding/static/2.png" >
    </div>
    <div class="item">
      <img src="/crowdfunding/static/11jpg.jpg" >
      <div class="carousel-caption">
      </div>
    </div>
 
  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
<!-- 添加新闻 -->
<!--左侧导航栏end-->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
           <h3 class="btn btn-primary" id="addNews">添加新闻</h3> 
            <div class="panel panel-default">
         </div>
                <div class="panel-body">

                    <div class="table-responsive ">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>新闻ID</th>
                                <th>新闻标题</th>
                                <th>新闻内容</th>
                                <th>新闻作者</th>
                                <th>新闻时间</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                        <c:forEach items="${listNew.list}" var="p">
                            <tr>
                                <td>${p.newId}</td>
                                <td>${p.title}</td>
                                <td>${p.content}</td>
                                <td>${p.author}</td>
                                <td><fmt:formatDate type="date" pattern="yyyy-MM-dd HH:mm:ss" value="${p.time}"/>
                                </td>
                                 <td>
                                    <a href="#" class="btn btn-primary" id="update" mm="${p.newId}">修改</a> |
                                    <a href="deteleNews?pn=${listNew.pageNum}&id=${p.newId}" class="btn btn-danger">删除</a>
                                </td>
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
											    	<a href="selectNew?pn=1">首页</a>
											    </li>
											     <li>
											      <a href="selectNew?pn=${listNew.pageNum-1}">上一页</a>
											    </li>
												  <c:forEach items="${listNew.navigatepageNums}" var="n">
														<li><a href="selectLog?pn=${n}">${n}</a></li>
												</c:forEach>
											    <li>
											      <a href="selectNew?pn=${listNew.pageNum+1}">下一页</a>
											    </li>
											    <li>
											      <a href="selectNew?pn=${listNew.pages}">末页</a>
											    </li>
									</ul>
								</nav>
                		</div>
  
		</div>
		
		<!-- 模态框的加入 -->
			<div class="modal fade" tabindex="-1" role="dialog" id="add-news">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title">修改用户信息</h4>
			      </div>
			      <!-- 表单的加入 -->
		<form class="form-horizontal" id="news">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">新闻标题</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="title" name="title">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">新闻内容</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control" id="content" name="content" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3"  class="col-sm-2 control-label" >新闻作者</label>
					    <div class="col-sm-10">
					      <input type="mail" class="form-control" id="author" name="author" >
					    </div>
					  </div>
					   
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					    </div>
					  </div>
		</form>
			     <!-- 表单的结束 -->
			      <div class="modal-footer">
			        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
			        <button type="button" class="btn btn-primary" id="sureaddnews">确认发表</button>
			      </div>
			    </div><!-- /.modal-content -->
			  </div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
<div align="center">版权所有(C) xg090113 地址:郑州五大街    联系电话： 110  广告热线：120  </div></td>
</body>
</html>