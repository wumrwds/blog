<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<!-- META TAGS -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>搜索</title>

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


<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script></script>
                <![endif]-->
<script src="../../js/jquery.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="../../js/common.js" type="text/javascript"></script>
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
    				  + item.nickname + "</p></dt><dd><h3 class='tracking-ad' data-mod='popu_254'><a href='"
    				  + item.articleUrl + "' target='_blank'>" + item.articleTitle + "</a></h3><div class='blog_list_c'>"
    				  + item.articleShortContent + " ...</div><div class='blog_list_b clearfix'><div class='blog_list_b_l fl'>"
    				  + "<span><i class='fa fa-list-ul'></i><a href='" + item.catUrl + "' target='_blank'>"
    				  + item.catName + "</a></span></div><div class='blog_list_b_r fr'><label>"
    				  + FWBLOG.formatDateTime(item.timeCreated) + "</label></div></div></dd></dl>");
    	  });
        },
        error: function(){
            alert('fail');
        }
    });
});
</script>

</head>

<body>

	<!-- Start of Header -->
	<jsp:include page="../commons/header.jsp"></jsp:include>
	<!-- End of Header -->

	<!-- Start of Search Wrapper -->
	<div class="search-area-wrapper" style="min-height: 230px">
		<div class="search-area container">
			<h3 class="search-header">站 内 搜 索</h3>
			<form id="search-form" class="search-form clearfix" method="get"
				action="#" autocomplete="off">
				<input class="search-term required" type="text" id="s" name="s"
					placeholder="请输入要搜索的内容"
					title="* 请输入要搜索的内容!" style="height:45px;line-height:40px;font-size:18px"/> <input class="search-btn"
					type="submit" value="搜 索" style="height:45px;"/>
				<div id="search-error-container"></div>
			</form>
		</div>
	</div>
	<!-- End of Search Wrapper -->

	<!-- Start of Page Container -->
	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span11 main-listing">

					<article class="format-standard type-post hentry clearfix">

					<header class="clearfix">

					<h3 class="post-title">
						<a href="single.html">Integrating WordPress with Your Website</a>
					</h3>

					<div class="post-meta clearfix">
						<span class="date">25 Feb, 2013</span> <span class="category"><a
							href="#" title="View all posts in Server &amp; Database">Server
								&amp; Database</a></span> <span class="comments"><a href="#"
							title="Comment on Integrating WordPress with Your Website">3
								Comments</a></span> <span class="like-count">66</span>
					</div>
					<!-- end of post meta --> </header>

					<p>
						Many of us work in an endless stream of tasks, browser tasks,
						social media, emails, meetings, rushing from one thing to another,
						never pausing and never ending.&nbsp;Then the day is over, and we
						are exhausted, and we often have very little to show for it. And
						we start the next . . . <a class="readmore-link"
							href="http://knowledgebase.inspirythemes.com/integrating-wordpress-with-your-website/">Read
							more</a>
					</p>

					</article>
					


					

					<div id="pagination">
						<a href="#" class="btn active">1</a> <a href="#" class="btn">2</a>
						<a href="#" class="btn">3</a> <a href="#" class="btn">Next »</a> <a
							href="#" class="btn">Last »</a>
					</div>

				</div>
				<!-- end of page content -->

			</div>
		</div>
	</div>
	<!-- End of Page Container -->

	<!-- Start of Footer -->
	<jsp:include page="../commons/footer.jsp"></jsp:include>
	<!-- End of Footer -->

	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript'
		src='../../js/jquery.easing.1.34e44.js?ver=1.3'></script>
	<script type='text/javascript'
		src='../../js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
	<script type='text/javascript'
		src='../../js/jquery.liveSearchd5f7.js?ver=2.0'></script>
	<script type='text/javascript' src='../../js/jflickrfeed.js'></script>
	<script type='text/javascript' src='../../js/jquery.formd471.js?ver=3.18'></script>
	<script type='text/javascript'
		src='../../js/jquery.validate.minfc6b.js?ver=1.10.0'></script>
	<script type='text/javascript' src='../../js/custom5152.js?ver=1.0'></script>

</body>
</html>
