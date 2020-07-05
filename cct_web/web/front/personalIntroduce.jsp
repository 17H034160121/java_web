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
				<%@ include file="../frontHead.txt"%>
		</div>
		
		<!-- 导航窗部分结束 -->


		<!-- 内容部分开始 -->
		<div class="main">
			<div class="c2">
				<div class="content" style="overflow: hidden;margin: 0 auto;max-width: 3000px;" >
				  	<div class="col-lg-4 pull-left pic1 clearfix" id="c2-1" >
						<img src="../img/${requestScope.pageBean.list[0].image}" style="width: 100%;"/>
				  	</div>
				 	<div class="w1 col-lg-8  pull-left clearfix" id="c2-2">
				 		<div style="width: 80%;margin: 0 auto;">
				 			<h1 class="hh1" style="font-size: 28px;padding-bottom: 0px;">姓名</h1>
							<p class="p1" style="font-size: 15px;line-height: 20px;">
								${requestScope.pageBean.list[0].name}
							</p>
							<h1 class="hh1" style="font-size: 28px;padding-bottom: 0px;">现就读学校</h1>
							<p class="p1" style="font-size: 15px;line-height: 20px;">
								${requestScope.pageBean.list[0].school}
							</p>
							<h1 class="hh1" style="font-size: 28px;padding-bottom: 0px;">所在学院</h1>
							<p class="p1" style="font-size: 15px;line-height: 20px;">
								${requestScope.pageBean.list[0].academy}
							</p>
							<h1 class="hh1" style="font-size: 28px;padding-bottom: 0px;">所读专业</h1>
							<p class="p1" style="font-size: 15px;line-height: 20px;">
								${requestScope.pageBean.list[0].major}
							</p>
							<h1 class="hh1" style="font-size: 28px;padding-bottom: 0px;">获奖情况</h1>
							<p class="p1" style="font-size: 15px;line-height: 20px;">
								${requestScope.pageBean.list[0].honor}
							</p>
							<h1 class="hh1" style="font-size: 28px;padding-bottom: 0px;">兴趣爱好</h1>
							<p class="p1" style="font-size: 15px;line-height: 20px;">
								${requestScope.pageBean.list[0].interest}
							</p>
				 		</div>
				  	</div>
				</div>
			</div>
			
				<%@ include file="../footer.txt"%>

</div>
</body>	
	
</html>
