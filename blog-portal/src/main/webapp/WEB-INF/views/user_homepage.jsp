<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html>
<!--<![endif]-->
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>${user.nickname } - FwBlog 编程爱好者的博客论坛</title>

<link rel="shortcut icon" href="images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="../../css/style.css" />
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

<link rel="stylesheet" href="../../css/common_index.css">
<link rel="stylesheet" href="../../css/blog_index.css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script></script>
                <![endif]-->

</head>

<body>

	<!-- Start of Header -->
	<jsp:include page="../commons/header.jsp"></jsp:include>
	<!-- End of Header -->

	<!-- Start of Page Container -->
	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">
					<div id="articleList" class="blog_list_wrap">
						<!-- 最新文章列表 -->
					
						<c:forEach var="article" items="${articleList}">
							<dl class="blog_list clearfix">
								<dt>
									<a target="_blank" href="/article/${article.userId}.html"><img
										src="${article.userPicPath }"
										class="head"></a><a target="_blank" href="/article/${article.userId}.html"
										class="nickname">${article.nickname}</a>
								</dt>
								<dd>
									<h3 class="tracking-ad" data-mod="popu_254">
										<a target="_blank" href="/article/${article.userId}/${article.articleId}.html">${article.articleTitle}</a>
									</h3>
									<div class="blog_list_c">
										${article.articleShortContent}
									</div>
									<div class="blog_list_b clearfix">
										<div class="blog_list_b_l fl">
											<span><i class="fa fa-list-ul"></i><a href="/category/${article.catId}.html"
												target="_blank">${article.catName}</a></span>
										</div>
										<div class="blog_list_b_r fr">
											<label><fmt:formatDate value="${article.timeCreated}" pattern="yyyy-MM-dd HH:mm:ss"/></label>
										</div>
									</div>
								</dd>
							</dl>
						</c:forEach>
					</div>
				</div>
				<!-- end of page content -->


				<!-- start of sidebar -->
				<aside class="span4 page-sidebar"> <section class="widget">
				<div class="side" style="margin-bottom: 20px;">
					<div id="panel_Profile" class="panel">
						<ul class="panel_head"
							style="background: #f5f5f5; height: 29px; line-height: 29px; padding-left: 11px; color: #333;">
							<span>个人资料</span>
						</ul>
						<ul class="panel_body profile">
							<div id="blog_userface" style="text-align: center;">
								<a href="http://locahost:8082/article/${user.id}.html" target="_blank"> <img
									src="${user.pic}"
									title="访问我的空间" style="max-width: 90%" />
								</a> <br /> <span><a href="http://locahost:8082/article/${user.id}.html"
									class="user_name" target="_blank"
									style="color: #666; font: 16px/20px 'microsoft yahei'; text-decoration: none;">${user.nickname}</a></span>
							</div>
							<ul id="blog_rank"
								style="padding: 4px; margin-bottom: 13px;">
								<li style="border-bottom: 1px dashed #ccc;">访问：<span>48427次</span></li>
								<li style="border-bottom: 1px dashed #ccc;">原创：<span>296篇</span></li>
								<li style="border-bottom: 1px dashed #ccc;">评论：<span>14条</span></li>
								<li style="border-bottom: 1px dashed #ccc;">个人简介：<span>${user.description}</span></li>
							</ul>
						</ul>
					</div>
				</div>
				<div class="support-widget">
					<h3 class="title">Support</h3>
					<p class="intro">Need more support? If you did not found an
						answer, contact us for further help.</p>
				</div>
				</section> <section class="widget">
				<h3 class="title">Featured Articles</h3>
				<ul class="articles">
					<li class="article-entry standard">
						<h4>
							<a href="single.html">Integrating WordPress with Your Website</a>
						</h4> <span class="article-meta">25 Feb, 2013 in <a href="#"
							title="View all posts in Server &amp; Database">Server &amp;
								Database</a></span> <span class="like-count">66</span>
					</li>
					<li class="article-entry standard">
						<h4>
							<a href="single.html">WordPress Site Maintenance</a>
						</h4> <span class="article-meta">24 Feb, 2013 in <a href="#"
							title="View all posts in Website Dev">Website Dev</a></span> <span
						class="like-count">15</span>
					</li>
					<li class="article-entry video">
						<h4>
							<a href="single.html">Meta Tags in WordPress</a>
						</h4> <span class="article-meta">23 Feb, 2013 in <a href="#"
							title="View all posts in Website Dev">Website Dev</a></span> <span
						class="like-count">8</span>
					</li>
					<li class="article-entry image">
						<h4>
							<a href="single.html">WordPress in Your Language</a>
						</h4> <span class="article-meta">22 Feb, 2013 in <a href="#"
							title="View all posts in Advanced Techniques">Advanced
								Techniques</a></span> <span class="like-count">6</span>
					</li>
				</ul>
				</section> <section class="widget">
				<h3 class="title">Categories</h3>
				<ul>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">Advanced
							Techniques</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">Designing
							in WordPress</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">Server
							&amp; Database</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet, ">Theme
							Development</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">Website
							Dev</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">WordPress
							for Beginners</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet, ">WordPress
							Plugins</a></li>
				</ul>
				</section> <section class="widget">
				<h3 class="title">Recent Comments</h3>
				<ul id="recentcomments">
					<li class="recentcomments"><a href="#" rel="external nofollow"
						class="url">John Doe</a> on <a href="#">Integrating WordPress
							with Your Website</a></li>
					<li class="recentcomments">saqib sarwar on <a href="#">Integrating
							WordPress with Your Website</a></li>
					<li class="recentcomments"><a href="#" rel="external nofollow"
						class="url">John Doe</a> on <a href="#">Integrating WordPress
							with Your Website</a></li>
					<li class="recentcomments"><a href="#" rel="external nofollow"
						class="url">Mr WordPress</a> on <a href="#">Installing
							WordPress</a></li>
				</ul>
				</section> </aside>
				<!-- end of sidebar -->
			</div>
		</div>
	</div>
	<!-- End of Page Container -->

	<!-- Start of Footer -->
	
	<jsp:include page="../commons/footer.jsp"></jsp:include>
	
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
