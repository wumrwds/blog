<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>fwBlog</title>

<link rel="shortcut icon" href="../../images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="style.css" />
<link rel='stylesheet' id='bootstrap-css-css'
	href='../../css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='../../css/responsive5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='../../js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css'
	media='all' />
<link rel='stylesheet' id='main-css-css'
	href='../../css/main5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='../../css/custom5152.html?ver=1.0' type='text/css' media='all' />

<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet" href="../../css/blog_index.css">
<link rel="stylesheet" href="../../css/common_index.css">

<link rel="stylesheet" href="../../css/taotao/taotao.css">

<script src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
    $.ajax({  
        type:"GET",
        async: false,
        url: "http://localhost:8081/rest/article/list",  
        dataType:"jsonp",
        jsonp: "callback",
        jsonpCallback:"getArticleList",
        global:false,   
        success: function(data){  
    	  $.each(data.dataList,function(index,item){
    		  $("#articleList").append(
    				  "<dl class='blog_list clearfix'><dt><img src='" + item.userPicPath + "' class='head'><p class='nickname'>"
    				  + item.userName + "</p></dt><dd><h3 class='tracking-ad' data-mod='popu_254'><a href='"
    				  + item.articleUrl + "' target='_blank'>" + item.articleTitle + "</a></h3><div class='blog_list_c'>"
    				  + item.articleShortDetail + "</div><div class='blog_list_b clearfix'><div class='blog_list_b_l fl'>"
    				  + "<span><i class='fa fa-list-ul'></i><a href='" + item.catUrl + "' target='_blank'>"
    				  + item.catName + "</a></span></div><div class='blog_list_b_r fr'><label>"
    				  + item.timeCreated + "</label></div></div></dd></dl>");
    	  });
        },
        error: function(){
            alert('fail');
        }
    });
});
</script>
<style type="text/css">
.myele {
	margin: 0px 40px;
}
</style>
</head>
<body>
	<!-- header start -->
	<jsp:include page="../commons/header.jsp" />
	<!-- header end -->

	<!-- Start of Page Container -->
	<div class="page-container">
		<div class="container myele">
			<!-- 			<div class="row-fluid"> -->
			<!-- 				<div class="span8"></div> -->
			<!-- 				<div class="span4"></div> -->
			<!-- 			</div> -->

			<!-- start of page content -->
			<!-- this is a start of an module -->
			<div class="span12 page-content">
				<div class="row separator">
					<div class="span7">
						<!-- 轮播开始 -->
						<div id="myCarousel" class="carousel slide carousel1">
							<!-- 轮播（Carousel）指标 -->
							<ol class="carousel-indicators">
								<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
								<li data-target="#myCarousel" data-slide-to="1"></li>
								<li data-target="#myCarousel" data-slide-to="2"></li>
							</ol>
							<!-- 轮播（Carousel）项目 -->
							<div class="carousel-inner">
								<div class="item active carousel1">
									<img src="../../images/test/IMG20150804211547.jpg"
										alt="First slide" style="width: 100%; height: 100%">
									<div class="carousel-caption">标题 1</div>
								</div>
								<div class="item carousel1">
									<img src="../../images/test/IMG20151023163347.jpg"
										alt="Second slide" style="width: 100%; height: 100%">
									<div class="carousel-caption">标题 2</div>
								</div>
								<div class="item carousel1">
									<img src="../../images/test/IMG20151028190118.jpg"
										alt="Third slide" style="width: 100%; height: 100%">
									<div class="carousel-caption">标题 3</div>
								</div>
							</div>
							<!-- 轮播（Carousel）导航 -->
							<a class="carousel-control left" href="#myCarousel"
								data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
								href="#myCarousel" data-slide="next">&rsaquo;</a>
						</div>
						<!-- 轮播结束 -->



						<h3
							style="font-weight: 600; margin-bottom: 20px; font-size: 20px;">最新文章</h3>
						
						
						<div id="articleList" class="blog_list_wrap">
							<dl class="blog_list clearfix">
								<dt>
									<img
										src="http://avatar.csdn.net/3/3/C/3_mr_dsw.jpg" class="head">
									<p class="nickname">Mr_dsw</p>
								</dt>
								<dd>
									<h3 class="tracking-ad" data-mod="popu_254">
										<a href="http://blog.csdn.net/mr_dsw/article/details/61542047"
											target="_blank">Android设计中的.9.png图片</a>
									</h3>
									<div class="blog_list_c">.9.png是一种可以自定义拉伸特定区域的图片格式。
										简书：Android设计中的.9.png图片在Android的UI设计开发中，很多控件需要适配不同的手机分辨率进行拉伸或者压缩，这样就出现了可以任...</div>
									<div class="blog_list_b clearfix">
										<div class="blog_list_b_l fl">

											<span><i class="fa fa-list-ul"></i><a
												href="/mobile/newarticle.html" target="_blank">移动开发</a></span>
										</div>
										<div class="blog_list_b_r fr">
											<label>2017.03.15&nbsp;&nbsp;23:19</label>
										</div>
									</div>
								</dd>
							</dl>
						</div>
					</div>

					<div class="span5">
						<jsp:include page="../commons/slidebar.jsp"></jsp:include>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- End of Page Container -->

	<!-- Start of Footer -->
	<%-- 	<jsp:include page="../commons/footer.jsp"></jsp:include> --%>
	<!-- End of Footer -->

	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript' src='../../js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript' src='../../js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='../../js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='../../js/jflickrfeed.js'></script>
	<script type='text/javascript' src='../../js/jquery.liveSearch.js'></script>
	<script type='text/javascript' src='../../js/jquery.form.js'></script>
	<script type='text/javascript' src='../../js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='../../js/custom.js'></script>
</body>
</html>