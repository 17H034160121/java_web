<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/login.css" />
		<link rel="stylesheet" href="../css/footer&cbl.css" />
		<script defer="defer" type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
		<script defer="defer" type="text/javascript" src="../js/bootstrap.min.js" ></script>
		<script defer="defer" type="text/javascript" src="../js/templet.js" ></script>
		<script defer="defer" type="text/javascript" src="../js/hp.js"></script>
<title>CCT的个人主页</title>
		<style type = "text/css">

		</style>
	</head>
	<body>
		<div id="main">
			<div class="collapse navbar-collapse" id="daohangtiao">
				<span class="close"><a href="../front/index.jsp"><i></i></a></span>
			</div>	
		<div class="main">	
			<div class="container">
				<div class="c2">
						<img src="../img/school_logo.jpg" />
					<p>CCT的个人主页</p>
				</div>
				<div class="c3">
					<form method="post" action="/LoginServlet">
						<div class="form-group">
    						<label for="usernameoremail">账号</label>
    						<input type="text" class="form-control" id="usernameoremail" name="username">
  						</div>
  						<div class="form-group">
    						<label for="password">密码</label>
    						<input type="password" class="form-control" id="password" name="password">
  						</div>
  						<div class="checkbox">
    						<label>
     		 					<input type="checkbox"> 记住我（请在私人计算机上使用此功能）
    						</label>
  						</div>
  						<div class="c3-1">
							<button id="denglu" type="submit" class="btn btn-default btn1">登录</button>  
							<a href="../front/register.jsp" type="button" class="btn btn-default btn2">注册</a>
						</div>
						<div class="c3-2 clearfix">
							<span class="c3-2-2">其他账号登录：</span>
							<div class="c3-2-1">
								<a href="" title="使用腾讯QQ登录"><span class="s1"></span></a>
								<a href="" title="使用微信登录"><span class="s2"></span></a>
								<a href="" title="使用谷歌登录"><span class="s3"></span></a>
								<a href="" title="使用脸书登录"><span class="s4"></span></a>
							</div>
						</div>
						<div class="c3-3 clearfix">
							<a href="register.jsp" class="pull-right">忘记密码？点这里找回</a>
						</div>
					</form>
				</div>
			</div>
		</div>
		<ul class="cbl" >
			<li><a href="#">
				<div class="icon"><i class="i1"></i><span class="title">761147933</span></div>
			</a></li>
			<i class="clearfix"></i>
			<li><a href="#">
				<div class="icon"><i class="i2"></i><span class="title">13566135160</span></div>
			</a></li>
			<i class="clearfix"></i>
			<li><a  href="#">
				<div class="icon"><i class="i3"></i><span class="title">cct的个人主页</span></div>
			</a></li>
			<i class="clearfix"></i>
			<li><a  href="#">
				<div class="icon"><i class="i4"></i><span class="title">13566135160</span></div>
			</a></li>
		</ul>
		</div>
		
	</body>
</html>
