<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<!-- 包含公共的JSP代码片段 -->
	
<title>无线点餐平台</title>



<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="${pageContext.request.contextPath }/app/detail/style/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/app/detail/style/js/page_common.js"></script>
<link href="${pageContext.request.contextPath }/app/detail/style/css/common_style_blue.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/app/detail/style/css/index_1.css" />
<link rel="stylesheet" type="text/css" href="http://at.alicdn.com/t/font_1210369_akkeefrlerg.css" />
<%-- ui组件 css--%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.5/css/uikit.min.css" />
<!-- UIkit JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.5/js/uikit.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/uikit/3.1.5/js/uikit-icons.min.js"></script>
	<style type="text/css">
	* {
		margin: 0px;
		padding: 0px
	}
	#dish_2 a{
		text-decoration:none;
		font-size:36px;
		color:#000;
	}
	#dish_2 ul { 
		list-style:none;
	} 
	#dish_2 li{
		background:url(${pageContext.request.contextPath }/app/detail/style/images/img/btn.gif);
		width:164px;
		height:47px;
		text-align:center;
		padding-top:5px;
	}
	.title{text-align:center;}
	.footer{text-align:center;font-size:16px;margin-top:15px;}
	/* ui style css */
	</style>
</head>
<body style="text-align: center">
	<!--外部的大层-->
	<div class="index_all" style="text-align:center;">
		<!--上面的背景层-->
		<div>
			<%-- <img src="${pageContext.request.contextPath }/app/detail/style/images/flower.gif" /> --%>
			<h1 class="title">食堂在线点餐平台</h1>
		</div>
		<!--中间层-->
		<div id="index_center">
			<!--中间层的菜单层-->
			<div>
				<!--菜单层的左边-->
				<div id="index_centerleft"></div>
				<!--菜单层的中间-->
				<div class="bg_middle">
				  <!-- uikit 滑动组件 -->
<div class="uk-position-relative uk-visible-toggle uk-light" tabindex="-1" uk-slider>

    <ul class="uk-slider-items uk-child-width-1-2 uk-child-width-1-3@s uk-child-width-1-4@m">
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>1</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg2.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>2</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg3.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>3</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>4</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg2.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>5</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg3.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>6</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>7</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg2.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>8</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg3.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>9</h1></div>
        </li>
        <li>
            <img src="https://raw.githubusercontent.com/Love-LG/cnblogs_images/master/java-web/bg.jpg" alt="">
            <div class="uk-position-center uk-panel"><h1>10</h1></div>
        </li>
    </ul>

    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>

</div>
				</div>
				<!--中间层的右边-->
				<div id="index_centerright"></div>
			</div>

			<!--放桌子的层-->
			<div id="center_bottom">
				<ul style=" display:inline-table">
						<c:choose>
					   <c:when test="${not empty requestScope.table}">
					     <c:forEach var="dt" items="${requestScope.table}">
					      <li>
							<a href="${pageContext.request.contextPath }/caidan?id=${dt.id}" class="iconfont icon-canting">
								${dt.tableName }
							</a>
						</li>
					     </c:forEach>
					   </c:when>
					</c:choose>
				</ul>
			</div>
		</div>
		
		<!--下面的背景层-->
			<hr>
		<div>
			<%-- <img src="${pageContext.request.contextPath }/app/detail/style/images/flower.gif" /> --%>
			<ul uk-accordion="multiple: true">
    <li class="uk-open">
        <a class="uk-accordion-title" href="#">网站信息</a>
        <div class="uk-accordion-content">
            <p>本网站是一个服务于大学食堂的点餐系统实现学生在线点餐，商家后台管理菜品和订单等操作。</p>
        </div>
    </li>
    <li>
        <a class="uk-accordion-title" href="#">联系方式</a>
        <div class="uk-accordion-content">
            <p>邮箱地址：Michleyuan@163.com    copyright by:李健宣、袁超</p>
        </div>
    </li>
    <li>
        <a class="uk-accordion-title" href="#">项目地址</a>
        <div class="uk-accordion-content">
            <p>https://github/love-lg/java-web</p>
        </div>
    </li>
</ul>
		</div>
	</div>
</body>
</html>