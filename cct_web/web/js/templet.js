
/*判定输入账号密码正确性*/
$(function() {
	var a = Math.floor(Math.random()*10);
	var b = Math.floor(Math.random()*10);
	var total = a + b;
	$("#answer").text(a+"+"+b);

	$(".c3 input").blur(function() {
		if(this.value == "" ){
			$(this).next("span").addClass("hide");
		}else if ($(this).is('#usernameoremail')) {
			if (this.value.length < 6 || this.value.length > 18) {
				$(this).next("span").removeClass("hide");
			}
		}else if ($(this).is('#password')) {
			if (this.value.length < 6 || this.value.length > 18) {
				$(this).next("span").removeClass("hide");
			}
		}else if ($(this).is('#repassword')) {
			var pwd = $('#password').val();
			var cpwd = $('#repassword').val();
			if (pwd != cpwd) {
				$(this).next("span").removeClass("hide");
			}
		}else if($(this).is('#yanzheng')){
			if($(this).val() == total){
				$(this).next("span").removeClass("hide");
			}
		}
	});
});

//用户名是否存在ajax异步校验
$(function () {
	$("#usernameoremail").blur(function () {
		var username = $(this).val();
		$.getJSON("http://localhost:8080/FindUserServlet",{username:username},function (data) {
			if (data.userExsit){
				alert("用户已经存在!!!");
			}
		});
	});
});



