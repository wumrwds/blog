<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>帐号注册 - FwBlog 编程爱好者的博客论坛</title>

<link rel="shortcut icon" href="../../images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="../../css/_layout.min.css">
<link rel="stylesheet" href="../../css/signup.min.css">

<script src="../../js/jquery.min.js"></script>
</head>
<body>
	<div class="container body-box" style="height: 523px;">
		<!--css-->
		<div class="center-block body-content">
			<!--头部提示-->
			<div class="hidden-xs title-top col-sm-12">
				注册新用户
				<hr class="head-hr">
			</div>
			<!--表单-->
			<form class="form-horizontal col-sm-8 form-padding" role="form"
				id="registerForm" method="post" novalidate="novalidate">
				<div class="form-space-top hidden-xs"></div>
				<!--每一行-->
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label class="w4-2" for="Email">邮箱</label>
					</div>
					<div class="col-sm-10 has-feedback">
						<input class="form-control" placeholder="需要通过邮件激活帐户" type="email"
							id="Email" name="Email" value="">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label class="w4-4" for="PhoneNum">手机号码</label>
					</div>
					<div class="col-sm-10 has-feedback">
						<input class="form-control" placeholder="需要通过手机短信激活帐户" type="text"
							value="" id="Phone" name="phone">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label class="w4-4" for="LoginName">登录帐号</label>
					</div>
					<div class="col-sm-10 has-feedback">
						<input class="form-control" placeholder="登录用户名，不少于4个字符"
							type="text" id="LoginName" name="loginname" value="">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label class="w4-4" for="NickName">显示名称</label>
					</div>
					<div class="col-sm-10 has-feedback">
						<input class="form-control" placeholder="即昵称，不少于2个字符" type="text"
							value="" id="NickName" name="nickname">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label class="w4-2" for="Password">密码</label>
					</div>
					<div class="col-sm-10 has-feedback">
						<input class="form-control" placeholder="至少8位，必须包含字母、数字、特殊字符"
							type="password" id="Password" name="password">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-2 control-label">
						<label class="w4-4" for="ConfirmPassword">确认密码</label>
					</div>
					<div class="col-sm-10 has-feedback">
						<input class="form-control" placeholder="请输入确认密码" type="password"
							id="ConfirmPassword" name="ConfirmPassword">
					</div>
				</div>


				<!--注册按钮-->
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<span class="col-sm-12 ajax-error"></span>
						<button id="submitBtn" type="button" onclick="REGISTER.reg();"
							class="btn ladda-button center-block cnblogs-btn-blue">
							<span class="ladda-label">注册</span>
						</button>
					</div>
				</div>
				<!--协议提示-->
				<div class="col-sm-offset-2 register-sign">
					*点击 “注册” 按钮，即表示您同意并愿意遵守 <a class="look-agreeon" target="_blank"
						href="//passport.cnblogs.com/agreement.html">用户协议</a>。
				</div>
			</form>
			<div class="hidden-xs col-sm-4 side-img-box">
				<div class="side-line">
					<div></div>
				</div>
				<img src="../../images/sideimg.png">
			</div>
		</div>

	</div>

	<script type="text/javascript">
		var REGISTER = {
			param : {
				//单点登录系统的url
				surl : ""
			},
			inputcheck : function() {
				//不能为空检查
				if ($("#LoginName").val() == "") {
					alert("用户名不能为空");
					$("#LoginName").focus();
					return false;
				}
				if ($("#NickName").val() == "") {
					alert("昵称不能为空");
					$("#NickName").focus();
					return false;
				}
				if ($("#Password").val() == "") {
					alert("密码不能为空");
					$("#Password").focus();
					return false;
				}
				if ($("#Phone").val() == "") {
					alert("手机号不能为空");
					$("#Phone").focus();
					return false;
				}
				//密码检查
				if ($("#Password").val() != $("#ConfirmPassword").val()) {
					alert("确认密码和密码不一致，请重新输入！");
					$("#ConfirmPassword").select();
					$("#ConfirmPassword").focus();
					return false;
				}
				return true;
			},
			beforeSubmit : function() {
				//检查用户是否已经被占用
				$.ajax({
					url : REGISTER.param.surl + "/user/check/"
							+ escape($("#LoginName").val()) + "/1?r="
							+ Math.random(),
					success : function(data) {
						if (data.data) {
							//检查手机号是否存在
							$.ajax({
								url : REGISTER.param.surl + "/user/check/"
										+ $("#Phone").val() + "/2?r="
										+ Math.random(),
								success : function(data) {
									if (data.data) {
										REGISTER.doSubmit();
									} else {
										alert("此手机号已经被注册！");
										$("#Phone").select();
									}
								}
							});
						} else {
							alert("此用户名已经被占用，请选择其他用户名");
							$("#LoginName").select();
						}
					}
				});

			},
			doSubmit : function() {
				$.post("/user/register", $("#registerForm").serialize(),
						function(data) {
							if (data.status == 200) {
								alert('用户注册成功，请登录！');
								REGISTER.login();
							} else {
								alert("注册失败！");
							}
						});
			},
			login : function() {
				location.href = "/account/login";
				return false;
			},
			reg : function() {
				if (this.inputcheck()) {
					this.beforeSubmit();
				}
			}
		};
	</script>
</body>
</html>