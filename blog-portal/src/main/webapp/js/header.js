var HEADER = {
	checkLogin : function() {
		var _ticket = $.cookie("FWBLOG_COOKIE");
		if (!_ticket) {
			return;
		}
		$.ajax({
				url : "http://localhost:8084/user/token/" + _ticket,
				dataType : "jsonp",
				type : "GET",
				success : function(data) {
					if (data.status == 200) {
						var nickname = data.data.nickname;
						var userId = data.data.id;
						var userPic = data.data.pic;
						$("#li_login").remove();
						$("#li_register").remove();
						var html = "<img alt=\"\" src=\"" + userPic + "\" style=\"height: 10px\"><ul class=\"sub-menu\"><li><a href=\"/user/" + userId + ".html\">个人信息</a></li><li><a href=\"/article/user/" + userId + ".html\">我的博客</a></li><li><a href=\"#\" onclick=\"HEADER.logout();return false\">退出</a></li></ul>";
						$("#li_userinfo").html(html);
					}
				}
			});
	},
	logout : function() {
		var _ticket = $.cookie("FWBLOG_COOKIE");
		if (!_ticket) {
			return;
		}
		$.ajax({
			url : "http://localhost:8084/user/logout/" + _ticket,
			dataType : "jsonp",
			type : 'GET', 
			success : function(data) {
				if (data.status == 200) {
					location.href = "http://localhost:8082/";
				}
			}
		});
	}
};

$(function() {
	// 查看是否已经登录，如果已经登录查询登录信息
	HEADER.checkLogin();
});