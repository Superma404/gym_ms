<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href='<c:url value='static/css/bootstrap.min.css'></c:url>'/>
		<link rel="stylesheet" href='<c:url value='static/css/dashboard.css'></c:url>'/>
		<link rel="stylesheet" href='<c:url value='static/css/dialog.css'></c:url>'/>
<title>Insert title here</title>
</head>
<body>

 <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">众筹项目分类</h1>

            <div class="panel panel-default">
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        项目分类列表  <a class="btn btn-primary" href="add-products-classity" target="page"> 添加 </a>
                    </div>
                </div>
                <div class="panel-body">

                    <div class="table-responsive ">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>分类名称</th>
                                <th>分类描述</th>
                                <th>添加时间</th>
                                <th>分类状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${pageinfo.list }" var="l">
		
												<tr id="${l.pstId }">
													<td>${l.pstId }</td>
													<td>${l.pstName }</td>
													<td>${l.pstDesc }</td>
													<td><fmt:formatDate value='${l.pstStardate }' type='time' pattern='yyyy-MM-dd'/></td>
													<td>
													  ${l.pstType==0?"可用":"不可用" }
													</td>
													<td class="operation">
				                                        <input type="button"  value="详情/修改" class="btn btn-info" name="${l.pstId }"> </input>
				                                        <input type="button"  value="删除" class="btn btn-danger"></input>
                                                    </td>
												</tr>
								</c:forEach>
                                
                            
                           </tbody>
                        </table>
                    </div>
                    <!--模态框-->
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog"
                         aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal"
                                            aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="myModalLabel">分类详情</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="form">
                                        <form class="form-validate form-horizontal" id="feedback_form"
                                              method="post">
                                            <div class="form-group ">
                                                <label for="p_id" class="control-label col-lg-2">序号<span
                                                        class="required"></span></label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="p_id" type="text" readonly />
                                                </div>
                                            </div>

                                            <div class="form-group ">
                                                <label for="p_name" class="control-label col-lg-2">分类名称<span
                                                        class="required"></span></label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="p_name" type="text" />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label for="p_des" class="control-label col-lg-2">分类描述<span
                                                        class="required"></span></label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="p_des" type="text" />
                                                </div>
                                            </div>
                                            <div class="form-group ">
                                                <label for="p_time" class="control-label col-lg-2">添加时间<span
                                                        class="required"></span></label>
                                                <div class="col-lg-10">
                                                    <input class="form-control" id="p_time" type="text" readonly />
                                                </div>
                                            </div>

                                            <div class="form-group ">
                                                <label for="p_status" class="control-label col-lg-2">分类状态<span
                                                        class="required"></span></label>
                                                <div class="col-lg-10">
                                                    <select class="form-control m-bot15" id="p_status">
                                                        <option>可用</option>
                                                        <option>禁用</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="form-group" style="text-align: right;">
                                                <div class="col-lg-offset-2 col-lg-10">
                                                    <input  type="button" class="btn btn-primary" type="button" value="确认修改"/>
                                                    <button class="btn btn-default" class="btn btn-default" data-dismiss="modal">返回</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                             <nav aria-label="Page navigation" class="text-right" id="PagePilot">
								<ul class="pagination">
									<li class="disabled"><a
										href="projectstype?pn=${pageinfo.pageNum-1}" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
									</a></li>
									<c:forEach items="${pageinfo.navigatepageNums }" var="ps">
										<li><a href="projectstype?pn=${ps }">${ps }</a></li>
									</c:forEach>
									<li><a href="projectstype?pn=${pageinfo.pageNum+1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
									</a></li>
								</ul>
								</nav>
                </div>
            </div>
        </div>
    </div>
</div>

        <script type="text/javascript" src='<c:url value='static/js/jquery1.12.4.min.js'></c:url>'></script>
		<script type="text/javascript" src='<c:url value='static/js/bootstrap.min.js'></c:url>'></script>
		<script type="text/javascript" src='<c:url value='static/js/countUp.js'></c:url>' ></script>
		<script type="text/javascript" src='<c:url value='static/js/dialog.js'></c:url>' ></script>
		<script type="text/javascript" src='<c:url value='static/myjs/projectstype.js'></c:url>' ></script>
 
  
</body>
</html>