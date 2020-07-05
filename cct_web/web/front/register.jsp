<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<link rel="stylesheet" href="../css/bootstrap.css" />
		<link rel="stylesheet" href="../css/register.css" />
		<link rel="stylesheet" href="../css/footer&cbl.css" />
		<script defer="defer" type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
		<script defer="defer" type="text/javascript" src="../js/bootstrap.min.js" ></script>
		<script defer="defer" type="text/javascript" src="../js/templet.js" ></script>
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
			<div class="container  ">
				<div class="c2">
						<img src="../img/school_logo.jpg" />
					<p>CCT的个人主页</p>	
				</div>
				<div class="c3">
					<form method="post" action="/RegisterServlet">
						<div class="form-group">
    						<label for="usernameoremail">账号 *</label>
    						<input type="text" class="form-control" id="usernameoremail" name="username">
    						<span class="pp hide">账号长度必须大于6小于18</span>
  						</div>
  						<div class="form-group">
    						<label for="password">密码 <img class="help" src="../img/help.png" title="最少6为，最大18位"/>*</label>
    						<input type="password" class="form-control" id="password" name="password">
  							<span class="pp hide">密码长度必须大于6小于18</span>
  						</div>
  						<div class="form-group">
    						<label for="repassword">再次输入密码 </label>
    						<input type="password" class="form-control" id="repassword">
    						<span class="pp hide">两次密码不一致</span>
  						</div>
  						<div class="form-group">
    						<label for="question">验证问题 *</label>
    						<p style="color: #CCCCCC; font-size: 14px;">请回答: <label id="answer" style="color: #CCCCCC; font-size: 14px;"></label> 等于几?</p>
    						<input type="text" class="form-control" id="question">
  							<span class="pp hide">验证成功</span>
  						</div>
  						<div class="checkbox">
    						<label>
     		 					<input type="checkbox"> 我已经阅读并同意<a>cct协议</a>以及<a>保密协议</a>。
    						</label>
  						</div>
  						<div class="c3-1">
							<button type="submit" class="btn btn-default btn1" id="zhuce">注册</button>  
							<a href="../front/login.jsp" type="button" class="btn btn-default btn2">已经有账号了?请登录</a>
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
					</form>
				</div>
			</div>
		</div>
		<ul class="cbl" >
			<li><a href="#">
				<div class="icon "><i class="i1"></i><span class="title">761147933</span></div>
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
