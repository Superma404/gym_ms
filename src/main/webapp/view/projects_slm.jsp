<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title></title>
    <script type="text/javascript"
	src="/crowdfunding/static/jquery/jquery-1.12.4.min.js"></script>
<link
	href="/crowdfunding/static/bootstrap-3.3.7-dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="/crowdfunding/static/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
	<script src="/crowdfunding/static/js/project_slm.js"></script>
</head>
<style>
    *{margin: 0;padding:0;}
    body{margin:0px;padding:0px;font-size:12px;font-family: "微软雅黑", Arial; text-align:center;color:#000;}
    div,p,h1,h2,h3,h4,h5,h6,ul,li,ol,dl,dt,dd,img,form{margin:0;padding:0;border:0;}
    ul,ol,li{list-style:none;}
    img{border:0; vertical-align:top;}
    a{text-decoration:none; cursor:pointer;color:#5A5A5A}
    a:hover{text-decoration:underline;}
    table,td,tr,th,input,select{font-size:13px;}
    input{font-family:Arial;} /*text and password width*/
    table,td{ border-collapse:collapse;}
    a:link{text-decoration:none;border:none;}
    a:hover{ text-decoration:none;border:none;}
    a:active{}
    a{}
    a:hover, a:visited{}
    .clear{ zoom:1;}
    .clear:after{ display:block;clear:both;height:0;content:''}



body{background: #f9f9f9;color:#5A5A5A}
    .user-con{width: 1000px;margin: 20px auto;
        zoom: 1;overflow: auto;}

.user-conl{float: left;width: 175px;border:1px solid #c0c0c0;background: #f9f9f9;border-right: none}
    .user-conl li i{width:19px;height: 20px;position:absolute;left:30px;top:15px;display: inline-block;}
    .user-conl li .i1{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 0;}
    .user-conl li .i2{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -50px;}
    .user-conl li .i3{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -100px;}
    .user-conl li .i4{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -153px;}
    .user-conl li .i5{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -153px;}
    .user-conl li .i6{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -50px;}
    .user-conl li .i7{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -206px;}
    .user-conl li .i8{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -253px;}
    .user-conl li .i9{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -323px;}
    .user-conl li .i10{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat 0 -376px;}
.user-conl li{position: relative}
.user-conl li a{display:inline-block;height:50px;width:175px;line-height:50px;border-left: 2px solid #f9f9f9;border-bottom:1px #ebebeb solid; }
.user-conl li b{display:inline-block;height:50px;width:175px;line-height:50px;border-left: 2px solid #f9f9f9;border-bottom:1px #ebebeb solid; }
.user-conl li a:hover{background:#fff;color:#009fd6;border-bottom:1px solid #009fd6;border-left: 2px solid #009fd6;}
.user-conl li .u-hover{background:#fff;border-left: 2px solid #f9f9f9;border-bottom:1px solid #009fd6;border-left: 2px solid #009fd6;color:#009fd6}
.user-conl li .a-tit{font-size:18px;}
    .user-conl li:hover .i1{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px 0;}
    .user-conl li:hover .i2{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -50px;}
    .user-conl li:hover .i3{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -100px;}
    .user-conl li:hover .i4{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -153px;}
    .user-conl li:hover .i5{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -153px;}
    .user-conl li:hover .i6{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -50px;}
    .user-conl li:hover .i7{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -206px;}
    .user-conl li:hover .i8{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -19px -253px;}
    .user-conl li:hover .i9{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -20px -323px;}
    .user-conl li:hover .i10{background:url("/crowdfunding/static/images/Myhome_icom.png") no-repeat -20px -376px;}
.user-conr{float: left;width:800px;border-zoom: 1;overflow: auto;background:#fff}

.user-conr_tab li{  cursor: pointer;width:100px; height:35px;line-height:35px;border:1px solid #c0c0c0;float: left;margin-left:10px;border-bottom:none;background:#ccc;}
.user-conr_tab  .cur{background:#fff;}
    .user-conr_tab{width:778px;height:35px;border: 1px solid #c0c0c0;padding:20px 0 0 20px;}
    .user-conr_tab2{width:798px;min-height:556px;overflow: auto;zoom: 1;border: 1px solid #c0c0c0;border-top:none;}
    .user-conr_tab2 .curq2{display: none;padding:20px;}
    .user-conr_tab2 .curq2{display:block;}

</style>
<body>
<!-- 显示表中数据详情 -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">项目详细信息</h4>
      </div>
      <div class="modal-body">
        <table class="table-hover table-bordered" id="myTable" width="100%">
        	
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div>
  </div>
</div>
<div class="row">
	 <div class="user-conr">
		<div class="user-conr_tab">
		    <ul>
		        <li class="cur">所有项目</li>
		        <li id="myLi">众筹中项目</li>
		    </ul>
		</div>
        <div class="user-conr_tab2">
            <ul>
                <li class="curq2">
                	<table class="table table-hover">
                		<thead>
                		<tr>
                			<th>项目ID</th>
                			<th>用户ID</th>
                			<th>项目类型ID</th>
                			<th>筹款目的</th>
                			<th>筹资金额</th>
                			<th>筹资天数</th>
                			<th>项目状态</th>
                			<th>项目已筹资金额</th>
                			<th>项目支持人数</th>
                			<th>操作</th>
                		</tr>
                		</thead>
                		<tbody>
                			<c:forEach items="${page.list }" var="pro">
                				<tr>
                					<td>${pro.psId }</td>
                					<td>${pro.psUsId }</td>
                					<td>${pro.psPstId }</td>
                					<td>${pro.psName }</td>
                					<td>${pro.psMoney }</td>
                					<td>${pro.psDays }</td>
                					<td>${pro.psType }</td>
                					<td>${pro.psGetmoney }</td>
                					<td>${pro.psGetpeople }</td>
                					<td>
										<button class="btn btn-primary btn-xs" name="allBtn" psId="${pro.psId }">
											<span class="glyphicon glyphicon-list-alt" aria-hidden="true"></span>
											详情
										</button>
									</td>
                				</tr>
                			</c:forEach>
                		</tbody>
                	</table>
			<!--分页文字信息  -->
			<div class="col-sm-3">当前 ${page.pageNum }页,总${page.pages }
				页,总 ${page.total } 条记录
			</div>
			<!-- 分页条信息 -->
			<div class="col-sm-6 col-sm-offset-3">
				<nav aria-label="Page navigation">
					<ul class="pagination pagination-sm">
						<li><a href="selectAll?pn=1">首页</a></li>
							<li>
								<a href="selectAll?pn=${page.pageNum-1}"
									aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
								</a>
							</li>
						<c:forEach items="${page.navigatepageNums }" var="n">
								<li><a href="selectAll?pn=${n }">${n }</a></li>
						</c:forEach>
							<li><a href="selectAll?pn=${page.pageNum+1 }"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						<li><a href="selectAll?pn=${page.pages}">末页</a></li>
					</ul>
				</nav>
		      </div>
                </li>
            </ul>
        </div>
    </div>
    
 </div>
  <script>
        $(document).ready(function(){
        	$("#myLi").click(function(){
            	$.post("selectByType",function(data){
					$.each(data.list1,function(index,item){
						$("#myTable").empty()
						$("<h1></h1>").html(item.psGetpeople)
					})            		
            	},"json")
        	})
            });
    </script>  

</body>
</html>