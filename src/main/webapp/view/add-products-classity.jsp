<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

        <link rel="stylesheet" href='<c:url value='static/css/bootstrap.min.css'></c:url>'/>
		<link rel="stylesheet" href='<c:url value='static/css/dashboard.css'></c:url>'/>
<body>

   <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">添加项目分类</h1>

            <div class="panel panel-default">
            </div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <div class="panel-title">
                        添加项目
                    </div>
                </div>
                <div class="panel-body">

                    <div class="table-responsive ">
                        <form>
                            <div class="form-group">
                                <input type="text" class="form-control" id="type_name" placeholder="分类名称">
                            </div>
                            
                            <div class="form-group">
                               <textarea class="form-control" rows="3" placeholder="分类描述" id="desc"></textarea>
                            </div>
                            &nbsp;&nbsp;
                            <input type="button" class="btn btn-default btn-primary pull-right"   value="添加"/>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
        <script type="text/javascript" src='<c:url value='static/js/jquery1.12.4.min.js'></c:url>'></script>
		<script type="text/javascript" src='<c:url value='static/js/bootstrap.min.js'></c:url>'></script>
		<script type="text/javascript" src='<c:url value='static/js/countUp.js'></c:url>' ></script>
		<script type="text/javascript" src='<c:url value='static/myjs/projectstype-class.js'></c:url>' ></script>
<script>
    $(document).ready(function() {

    });
</script>

</body>
</html>