<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
								<span>中国计量大学<br>java Web<br>CCT的个人主页</span>
							</div>
							<div class="co1" id="show"></div>
							<div class="co2" >
								<p>17H034160121</p>
 								<p>陈朝听</p>
							</div>
							<a class="co3" href="#" >视频如有侵权请联系删除</a>
						</div>
					</div>
					<div class="container cc1">
						<div class="coverA"><a href="#">
							<i class="glyphicon glyphicon-chevron-down"></i>
						</a></div>
					</div>
				</div>			
		</div>
		
		<!-- 视频播放界面结束 -->

				<%@ include file="../footer.txt" %>
</div>
</body>

	
</html>
