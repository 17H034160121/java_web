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

		<!-- 内容部分开始 -->
		<div class="main">
			<div class="c11">
				<div class="container" style="overflow: hidden;margin: 0 auto;padding-bottom: 50px;">
					<div class="col-lg-12" id="c11-1">
						<h1 class="hh1" style="font-size: 36px;">美食不可辜负</h1>	
						<hr style="width: 100%;border: none;height: 1px;background-color: #E2E2E2;"/>	
					</div>						
				</div>
				<div class="container">
					<div id="picture_carousel" class="carousel slide" data-interval ="false">
						<ol class="carousel-indicators">
							<li class="active" data-target="#picture_carousel" data-slide-to = "0"></li>
							<li data-target="#picture_carousel" data-slide-to = "1"></li>
							<li data-target="#picture_carousel" data-slide-to = "2"></li>
							<li data-target="#picture_carousel" data-slide-to = "3"></li>
							<li data-target="#picture_carousel" data-slide-to = "4"></li>
							<li data-target="#picture_carousel" data-slide-to = "5"></li>
						</ol>
						<div class="carousel-inner">
							<div class="item active">
								<div style="overflow: hidden;">
									<div class="col-md-5"><img src="../img/${requestScope.pageBean.list[0].image}" width="80%" /></div>
									<div class="col-md-7" style="height:153px;padding-left: 30px;padding-right: 80px;">
										<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">
											${requestScope.pageBean.list[0].introduce}
										</p>
									</div>
								</div>
							</div>
							<c:forEach items="${pageBean.list}" var="view" begin="1">
								<div class="item">
									<div style="overflow: hidden;">
										<div class="col-md-5"><img src="../img/${view.image}" width="80%" /></div>
										<div class="col-md-7" style="height:153px;padding-left: 30px;padding-right: 80px;">
											<p style="font-size:13px;text-align: left;color: #a9a9a9;line-height: 26px;">
												${view.introduce}
											</p>
										</div>
									</div>
								</div>
							</c:forEach>
							<a class="left carousel-control" href="#picture_carousel" data-slide="prev">
								<span class="glyphicon glyphicon-menu-left"></span>
							</a>
							<a class="right carousel-control" href="#picture_carousel" data-slide="next">
								<span class="glyphicon glyphicon-menu-right"></span>
							</a>
						</div>
					</div>
				</div>

				
			</div>
		</div>
		
				<%@ include file="../footer.txt" %>
</div>
</body>	
	
</html>
