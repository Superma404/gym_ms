<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
 <link rel="stylesheet" href="/crowdfunding/static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/crowdfunding/static/css/dashboard.css" />
    <link rel="stylesheet" href="/crowdfunding/static/css/dialog.css" />
    <script type="text/javascript" src="/crowdfunding/static/js/jquery1.12.4.min.js"></script>
    <script type="text/javascript" src="/crowdfunding/static/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/crowdfunding/static/mmq-js/user-update.js"></script>
</head>

<body>
		
        <!--左侧导航栏end-->
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
           <h3 class="btn btn-primary" >用户的详细信息</h3> 
            <div class="panel panel-default">
         </div>
         		<!-- 检索的开始 -->
         		
         		<div class="panel-body">
			<form class="form-inline" method="post" action="selectAll">
			  <div class="form-group">
			    <input type="text" class="form-control" name="name" placeholder="用户的姓名">
			  </div>
			   <div class="form-group">
			    <input type="text" class="form-control" name="email" placeholder="用户的邮箱">
			  </div>
			  <div class="form-group">
			   <select class=form-control name="role">
				   	<option value="">用户状态</option>
				   	<option value="0">未激活</option>
				   	<option value="1 ">激活</option>
			   </select>
			  </div>
			   <div class="form-group">
			   <select class=form-control name="sex">
			   	<option value="">用户性别</option>
			   	<option value="男">男</option>
			   	<option value="女">女</option>
			   </select>
			  </div>
			  &nbsp;&nbsp;
			  <button type="submit" class="btn btn-default btn-primary" >查询</button>
			</form>
    </div>
         		<!--================ 插入检索栏目===================-->
                <div class="panel-body">

                    <div class="table-responsive ">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr class="active">
                                <th>用户ID</th>
                                <th>邮箱</th>
                                <th>用户姓名</th>
                                <th>登录密码</th>
                                <th>账户金额</th>
                                <th>用户身份证号码</th>
                                <th>用户手机号</th>
                                <th>用户地址</th>
                                <th>用户状态</th>
                                <th>用户性别</th>
                                <th>随机码</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                    <tbody id="tbody">
                        <c:forEach items="${listUser.list}" var="p">
                            <tr>
                                <td>${p.usId}</td>
                                <td>${p.usEmail}</td>
                                <td>${p.usName}</td>
                                <td>${p.usPassword}</td>
                                <td>${p.usMoney}</td>
                                <td>${p.usIdcard}</td>
                                <td>${p.usPhone}</td>
                                <td>${p.usAddress}</td>
                                <td>${p.usRole}</td>
                                <td>${p.usSex}</td>
                                <td>${p.usCode}</td>
                                <td>
                                 <input type="button" class="btn btn-primary" name="update" mm="${p.usId}" value="修改"></input> |
                                 <a href="detele2?pn=${listUser.pageNum}&id=${p.usId}" class="btn btn-danger">删除</a> 
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
		<!-- =========================添加的模态框的加入 =============-->
			<div class="modal fade" tabindex="-1" role="dialog" id="updateuser">
			  <div class="modal-dialog" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			        <h4 class="modal-title">修改用户信息</h4>
			      </div>
			      <!-- 表单的加入 -->
		<form class="form-horizontal" id="form">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="name" name="usName">
					    </div>
					  </div>
					  <input name="usId"  type="hidden" id="id">
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">邮箱</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="email" name="usEmail" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3"  class="col-sm-2 control-label" >密码</label>
					    <div class="col-sm-10">
					      <input type="mail" class="form-control" id="password" name="usPassword" >
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">金额</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="money" name="usMoney" >
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">身份证</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="card" name="usIdcard">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">手机号</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="phone" name="usPhone">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">地址</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="address" name="usAddress">
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">性别</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="sex" name="usSex" >
					    </div>
					  </div>
					   <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">随机码</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control" id="code" name="usCode" >
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3"  class="col-sm-2 control-label" >状态</label>
					    <div class="col-sm-10">
					      <input type="mail" class="form-control" id="role" name="usRole">
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
			        <button type="button" class="btn btn-primary" id="sure">确认修改</button>
			      </div>
			    </div><!-- /.modal-content -->
			  </div><!-- /.modal-dialog -->
			</div><!-- /.modal -->
		<!--==== 模态框的结束 ====-->
	</div>
</body>
</html>