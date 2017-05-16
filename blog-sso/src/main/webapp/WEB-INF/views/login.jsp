<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>帐号登录 - FwBlog 编程爱好者的博客论坛</title>

<link rel="shortcut icon" href="../../images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/login.css">

<script src="../../js/jquery.min.js"></script>
</head>
<body>
	<div class="main">
		<div class="container container-custom">
			<div class="row wrap-login" style="width: 93%">
				<div class="login-banner col-sm-6 col-md-7 col-lg-7 hidden-xs" style="width: 50%">
					<img src="../../images/sideimg.png" class="img-responsive">
				</div>
				<div class="login-user col-xs-12 col-sm-6 col-md-5 col-lg-5"
					style="width: 385px; height: 501px;">
					<div class="login-part">
						<h3>帐号登录</h3>
						<div class="user-info">
							<div class="user-pass">

								<form id="formlogin" method="post" onsubmit="return false;">

									<input id="loginname" name="loginname" tabindex="1" placeholder="输入用户名" 
										class="user-name" type="text"/> 
									<input id="password" name="password" tabindex="2" placeholder="输入密码" 
										class="pass-word" type="password" value="" autocomplete="off"/>

									<div class="error-mess" style="display: none;">
										<span class="error-icon"></span><span id="error-message"></span>
									</div>

									<div class="row forget-password">
										<span class="col-xs-6 col-sm-6 col-md-6 col-lg-6"> </span> <span
											class="col-xs-6 col-sm-6 col-md-6 col-lg-6 forget tracking-ad"
											data-mod="popu_26"> <a
											href="/account/fpwd?action=forgotpassword&amp;service=http%3A%2F%2Fwww.csdn.net%2F"
											tabindex="5">忘记密码</a>
										</span>
									</div>
									
									<input id="loginsubmit" class="logging" accesskey="l" value="登 录" 
										tabindex="6" type="button">

								</form>
							</div>
						</div>
						<div class="line"></div>
						<div class="third-part tracking-ad" data-mod="popu_27">
							<div class="register-now">
								<span>还没有FwBlog帐号？</span> <span class="register tracking-ad"
									data-mod="popu_28"> <a
									href="/account/register">立即注册</a>
								</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		var redirectUrl = "${redirect}";
		var LOGIN = {
			checkInput : function() {
				if ($("#loginname").val() == "") {
					alert("用户名不能为空");
					$("#loginname").focus();
					return false;
				}
				if ($("#password").val() == "") {
					alert("密码不能为空");
					$("#password").focus();
					return false;
				}
				return true;
			},
			doLogin : function() {
				$.post("/user/login", $("#formlogin").serialize(), function(
						data) {
					if (data.status == 200) {
						alert("登录成功！");
						if (redirectUrl == "") {
							location.href = "http://localhost:8082/";
						} else {
							location.href = redirectUrl;
						}
					} else {
						alert("登录失败，原因是：" + data.msg);
						$("#loginname").select();
					}
				});
			},
			login : function() {
				if (this.checkInput()) {
					this.doLogin();
				}
			}

		};
		$(function() {
			$("#loginsubmit").click(function() {
				LOGIN.login();
			});
		});
	</script>
</body>
</html>