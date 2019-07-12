<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
    <meta charset="UTF-8">
    <meta name="Keywords" content="关键词,关键词">
    <meta name="description" content="">
    <title></title>
    <script type="text/javascript" src="<c:url value='/static/js/jquery-1.11.0.min.js'/>"></script>
    <link rel="stylesheet" href="<c:url value='/static/css/base.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/headbott.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/index.css'/>" type="text/css"/>
    <link rel="stylesheet" href="<c:url value='/static/css/ly-list.css'/>" type="text/css"/>
</head>

<body>


<div id="header">
    <div class="heade-con">
    <div class="logo"><a href=""><img src="<c:url value='/static/images/LOGO.png'/>"/></a></div>
        <div class="nav posa">
            <ul>
                <li><a href="getProjects">首页</a></li>
                <li><a href="getAllProjects">公益众筹</a></li>
                <li><a href="question">常见问题</a></li>
                <li><a href="indexCheck?address=ly-list"  class="vcolor">众筹资讯</a></li>
                <li><a href="indexCheck?address=selectPro_a" style="">发布项目</a></li>
            </ul>
        </div>
        <div class="search">
            <form action="">
                <input type="text" class="search-txt" value="" placeholder="找项目">
                <input type="submit" class="search-but" value="">
            </form>
        </div>
        <div class="index-login">
        		
    
         <% 
            if(session.getAttribute("user")!=null){
            %>	
            <a href="user_slm.jsp">
               ${user.usName}
                
            </a>
            <% }else if(session.getAttribute("userName")!=null){%>
            	
             <a href="user_slm.jsp">
               ${userName}
             </a>
            	
            <% }else{  %>
            <a href="login">登录</a>
            <span style="color: white;">|</span>
            <a href="register">注册</a>
        <%}%>
        </div>
    </div>
</div>



<div class="ly-list_con">
    <div class="ly-list_conl">
        <div class="ly-list_conltit"><i></i>路演视频</div>
        <div class="ly-list_conlcon">
            <a href="">众筹第一次线下大型路演会</a>
            <a href="">众筹第一次线下大型路演会</a>
            <a class="conlcon_bg" href="">众筹第一次线下大型路演会</a>
            <a href="">众筹第一次线下大型路演会</a>
            <a href="">众筹第一次线下大型路演会</a>
            <a href="">众筹第一次线下大型路演会</a>
            <a href="">众筹第一次线下大型路演会</a>
        </div>
    </div>
    <div class="ly-list_conf">
        <div class="ly-l_csp">
            <embed
                    type="application/x-shockwave-flash"
                    src="http://player.youku.com/player.php/sid/XMzU4MDkyODQ0/v.swf"
                    id="movie_player"
                    name="movie_player"

                    quality="high"
                    allowfullscreen="true"

                   width="530" height="360"></embed>
        </div>
        <div class="ly-l_clistt">
            <div class="ly-l_clistttit">内容介绍</div>
            <div class="ly-l_clisttmin">
              <p>共建海韵青年旅舍 和我们来一次远方的约定吧！</p>
               <p>　　本项目的优势大众化和多元化的经营。和所处地理得天独厚的地理  优势。以及近两年来旅游项目的发展趋势。大大帮助了项目的意义性，和推动价值.使得越来越多的人了解，热爱在改革开放中崛起的这座高原新城，德令哈成为了瀚海戈壁升起的一 颗璀璨明珠。</p><br>
                <a href="">报名路演</a>
            </div>
        </div>
        <div class="ly-list_conbot">
<div class="ly-list_cbttit">成功案例</div>
           <div class="ly-list_ch1"> <div class="ly-list_ch2"></div></div>
            <div class="ly-list_cbtmin">
                <ul>
                    <li>
                        <div class="ly-list_cmpic">
                            <a href=""><img src="<c:url value='/static/images/prruducyy_03.jpg'/>" alt=""/></a>
                       <i></i>
                       <b>(215)</b>
                        </div>
                        <p><a href="">为万千新人众筹一场幸福的婚礼--乐婚城</a></p>
                    </li><li>
                        <div class="ly-list_cmpic">
                            <a href=""><img src="<c:url value='/static/images/prruducyy_03.jpg'/>" alt=""/></a>
                       <i></i>
                            <b>(215)</b>
                        </div>
                        <p><a href="">为万千新人众筹一场幸福的婚礼--乐婚城</a></p>
                    </li><li>
                        <div class="ly-list_cmpic">
                            <a href=""><img src="<c:url value='/static/images/prruducyy_03.jpg'/>" alt=""/></a>
                       <i></i>
                            <b>(215)</b>
                        </div>
                        <p><a href="">为万千新人众筹一场幸福的婚礼--乐婚城</a></p>
                    </li>
                </ul>
            </div>
        </div>
    </div>

</div>
<div id="bottom">
    <div class="bot-con1">
        <ul>
            <li class="bot-con1-li1">我们已经做到 </li>
            <li>单项支持人数<span class="inde-span1"></span></li>
            <li>单项筹款金额<span class="inde-span2"></span></li>
            <li>累计筹款金额<span class="inde-span3"></span></li>
        </ul>
    </div>
    <div class="bot-con1 bot-con2">
        <ul>
            <li class="bot-con1-li1">发起项目流程 </li>
            <li><span class="inde-span4"></span>发起人创建项目</li>
            <li><span class="inde-span5"></span>项目获得支持</li>
            <li><span class="inde-span6"></span>发起人发放回报</li>
            <li><span class="inde-span7"></span>用户收到回报</li>
        </ul>
    </div>
    <div class="bottom-ggt"><a href=""><img src="<c:url value='/static/images/bottbom_68.jpg'/>" alt=""/></a></div>
    <div class="zc-yqlink">
        <ul>
            <li><a href="">阿里巴巴集团</a></li>
            <li><a href="">淘宝网</a></li>
            <li><a href="">天猫</a></li>
            <li><a href="">聚划算</a></li>
            <li><a href="">全球速卖通</a></li>
            <li><a href="">阿里巴巴国际交易市场</a></li>
            <li><a href="">1688</a></li>
            <li><a href="">阿里妈妈</a></li>
            <li><a href="">阿里旅行</a></li>
            <li><a href="">阿里云计算</a></li>
            <li><a href="">阿里巴巴集团</a></li>
            <li><a href="">淘宝网</a></li>
            <li><a href="">天猫</a></li>
            <li><a href="">聚划算</a></li>
            <li><a href="">全球速卖通</a></li>
            <li><a href="">阿里巴巴国际交易市场</a></li>
            <li><a href="">1688</a></li>
            <li><a href="">阿里妈妈</a></li>
            <li><a href="">阿里云计算</a></li>
        </ul>
    </div>
    <div class="footer-bd">

            <a href=" ">关于淘宝</a>
            <a href=" ">合作伙伴</a>
            <a href=" ">营销中心</a>
            <a href=" ">廉正举报</a>
            <a href=" ">联系客服</a>
            <a href=" ">开放平台</a>
            <a href=" ">诚征英才</a>
            <a href=" ">联系我们</a>
            <a href=" ">网站地图</a>
            <a href=" ">法律声明</a>　　　
            <em>© 2003-2015 Taobao.com 版权所有</em><br>

       <br>
            <span>网络文化经营许可证：<a href=" ">浙网文[2013]0268-027号</a></span>
            <b>|</b>
            <span data-spm-protocol="i">增值电信业务经营许可证：<a href="">浙B2-20080224-1</a></span>
            <b>|</b>
            <span>信息网络传播视听节目许可证：1109364号</span>
            <b>|</b>
            <span>举报电话:0571-81683755</span>
    </div>
</div>
</body>
</html>
</html>