<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="stylesheet" href="../css/daohang.css" />
	<link rel="stylesheet" href="../css/bootstrap.css" />
	<link rel="stylesheet" href="../css/footer&cbl.css" />
	<script defer="defer" type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script defer="defer" type="text/javascript" src="../js/bootstrap.min.js" ></script>
	<script defer="defer" type="text/javascript" src="../js/hp.js"></script>
<title>CCT的个人主页</title>
	<style type = "text/css">
	</style>
</head>

<body>
	<div id="main">
	
		<!-- 	导航窗部分开始 -->
				<%@ include file="../frontHead.txt" %>
		<!-- 导航窗部分结束 -->
		
		<!-- 视频播放界面开始 -->
		<div class="c">
				<div class="video">
					<video autoplay="autoplay" muted="muted" loop="loop">
						<source type="video/mp4" src="../video/video.mp4"></source>
					</video>
				</div>
				<div class="cover">
					<div class="container cc1">
						<div class="cover1 col-lg-6 col-md-6 pull-right" >
							<div class="co1 hide" id="con">
								<span>苍南<br>我的家乡<br>CCT的家乡旅游景点</span>
							</div>
							<div class="co1" id="show"></div>  
							<div class="co2" >
								<p>17H034160121</p>
 								<p>陈朝听</p>
							</div>
							<a class="co3" href="" >视频如有侵权请联系删除</a>
						</div>
					</div>
					<div class="container cc1">
						<div class="coverA"><a href="">
							<i class="glyphicon glyphicon-chevron-down"></i>
						</a></div>
					</div>
				</div>			
		</div>
		<!-- 视频播放界面结束 -->

		<!-- 内容部分开始 -->
		<div class="main">
			
			<div class="c10">
				<div style="overflow: hidden;margin: 0 auto;max-width: 1500px;">
					<div class="col-lg-12">
						<h1 class="hh1" style="font-size: 36px;padding-bottom: 80px;">家乡的旅游景点</h1>
					</div>
					<c:forEach items="${pageBean.list}" var="view">
						<div class="container col-md-6" style="overflow:hidden; padding: 10px; height: 500px">
							<div class="a">
								<img src="../img/${view.image}" width="100%" height="300px"/>
								<div class="hh1" style="color: #8d9095;font-size: 14px;padding-top: 20px;">
									<p>
										${view.introduce}
									</p>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
				<%@ include file="../footer.txt" %>
</div>
</body>	
	
</html>
