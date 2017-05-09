<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>${article.articleTitle} - ${user.nickname } - FwBlog 编程爱好者的博客论坛</title>

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

					<article class=" type-post format-standard hentry clearfix">

					<h1 class="post-title">
						<a href="#">${article.articleTitle}</a>
					</h1>

					<div class="post-meta clearfix">
						<span class="date"><fmt:formatDate value="${article.timeCreated}" pattern="yyyy-MM-dd HH:mm:ss"/></span> <span class="category"><a
							href="#" title="View all posts in Server &amp; Database">${article.catName}</a>
							</span> <span class="comments"><a href="#"
							title="Comment on Integrating WordPress with Your Website">3
								Comments</a></span>
					</div>
					<!-- end of post meta -->
					
					
					<!-- start of article content -->
					${article.content}
					<!-- end of article content -->

					</article>

					<div class="like-btn">

						<form id="like-it-form" action="#" method="post">
							<span class="like-it ">66</span> <input type="hidden"
								name="post_id" value="99"> <input type="hidden"
								name="action" value="like_it">
						</form>

						<span class="tags"> <strong>Tags:&nbsp;&nbsp;</strong><a
							href="#" rel="tag">basic</a>, <a href="#" rel="tag">setting</a>,
							<a href="http://knowledgebase.inspirythemes.com/tag/website/"
							rel="tag">website</a>
						</span>

					</div>

					<section id="comments">

					<h3 id="comments-title">(3) Comments</h3>

					<ol class="commentlist">

						<li class="comment even thread-even depth-1" id="li-comment-2">
							<article id="comment-2"> <a href="#"> <img alt=""
								src="http://1.gravatar.com/avatar/50a7625001317a58444a20ece817aeca?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
								class="avatar avatar-60 photo" height="60" width="60">
							</a>

							<div class="comment-meta">

								<h5 class="author">
									<cite class="fn"> <a href="#" rel="external nofollow"
										class="url">John Doe</a>
									</cite> - <a class="comment-reply-link" href="#">Reply</a>
								</h5>

								<p class="date">
									<a href="#"> <time datetime="2013-02-26T13:18:47+00:00">February
										26, 2013 at 1:18 pm</time>
									</a>
								</p>

							</div>
							<!-- end .comment-meta -->

							<div class="comment-body">
								<p>Duis autem vel eum iriure dolor in hendrerit in vulputate
									velit esse molestie consequat, vel illum dolore eu feugiat
									nulla facilisis at vero eros et accumsan et iusto odio
									dignissim qui blandit praesent luptatum zzril delenit augue
									duis dolore te feugait nulla facilisi.</p>
								<p>Nam liber tempor cum soluta nobis eleifend option congue
									nihil imperdiet doming id quod mazim placerat facer possim
									assum. Typi non habent claritatem insitam; est usus legentis in
									iis qui facit eorum claritatem.</p>
							</div>
							<!-- end of comment-body --> </article> <!-- end of comment -->

							<ul class="children">

								<li
									class="comment byuser comment-author-saqib-sarwar bypostauthor odd alt depth-2"
									id="li-comment-3"><article id="comment-3"> <a
										href="#"> <img alt=""
										src="http://0.gravatar.com/avatar/2df5eab0988aa5ff219476b1d27df755?s=60&amp;d=http%3A%2F%2F0.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
										class="avatar avatar-60 photo" height="60" width="60">
									</a>

									<div class="comment-meta">

										<h5 class="author">
											<cite class="fn">saqib sarwar</cite> - <a
												class="comment-reply-link" href="#">Reply</a>
										</h5>

										<p class="date">
											<a href="#"> <time datetime="2013-02-26T13:20:14+00:00">February
												26, 2013 at 1:20 pm</time>
											</a>
										</p>

									</div>
									<!-- end .comment-meta -->

									<div class="comment-body">
										<p>Nam liber tempor cum soluta nobis eleifend option
											congue nihil imperdiet doming id quod mazim placerat facer
											possim assum. Typi non habent claritatem insitam; est usus
											legentis in iis qui facit eorum claritatem. Investigationes
											demonstraverunt lectores legere me lius quod ii legunt
											saepius. Claritas est etiam processus dynamicus, qui sequitur
											mutationem consuetudium lectorum. Mirum est notare quam
											littera gothica, quam nunc putamus parum claram, anteposuerit
											litterarum formas humanitatis per seacula quarta decima et
											quinta decima. Eodem modo typi, qui nunc nobis videntur parum
											clari, fiant sollemnes in futurum.</p>
									</div>
									<!-- end of comment-body --> </article> <!-- end of comment --></li>
							</ul>
						</li>

						<li class="comment even thread-odd thread-alt depth-1"
							id="li-comment-4"><article id="comment-4"> <a
								href="#"> <img alt=""
								src="http://1.gravatar.com/avatar/50a7625001317a58444a20ece817aeca?s=60&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D60&amp;r=G"
								class="avatar avatar-60 photo" height="60" width="60">
							</a>

							<div class="comment-meta">

								<h5 class="author">
									<cite class="fn"><a href="#" rel="external nofollow"
										class="url">John Doe</a></cite> - <a class="comment-reply-link"
										href="#">Reply</a>
								</h5>

								<p class="date">
									<a
										href="http://knowledgebase.inspirythemes.com/integrating-wordpress-with-your-website/#comment-4">
										<time datetime="2013-02-26T13:27:04+00:00">February 26,
										2013 at 1:27 pm</time>
									</a>
								</p>

							</div>
							<!-- end .comment-meta -->

							<div class="comment-body">
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
									sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
									aliquam erat volutpat. Ut wisi enim ad minim veniam, quis
									nostrud exerci tation ullamcorper suscipit lobortis nisl ut
									aliquip ex ea commodo consequat.</p>
								<p>Duis autem vel eum iriure dolor in hendrerit in vulputate
									velit esse molestie consequat, vel illum dolore eu feugiat
									nulla facilisis at vero eros et accumsan et iusto odio
									dignissim qui blandit praesent luptatum zzril delenit augue
									duis dolore te feugait nulla facilisi. Nam liber tempor cum
									soluta nobis eleifend option congue nihil imperdiet doming id
									quod mazim placerat facer possim assum.</p>
							</div>
							<!-- end of comment-body --> </article> <!-- end of comment --></li>
					</ol>

					<div id="respond">

						<h3>Leave a Reply</h3>

						<div class="cancel-comment-reply">
							<a rel="nofollow" id="cancel-comment-reply-link" href="#"
								style="display: none;">Click here to cancel reply.</a>
						</div>


						<form action="#" method="post" id="commentform">


							<p class="comment-notes">
								Your email address will not be published. Required fields are
								marked <span class="required">*</span>
							</p>

							<div>
								<label for="author">Name *</label> <input class="span4"
									type="text" name="author" id="author" value="" size="22">
							</div>

							<div>
								<label for="email">Email *</label> <input class="span4"
									type="text" name="email" id="email" value="" size="22">
							</div>

							<div>
								<label for="url">Website</label> <input class="span4"
									type="text" name="url" id="url" value="" size="22">
							</div>


							<div>
								<label for="comment">Comment</label>
								<textarea class="span8" name="comment" id="comment" cols="58"
									rows="10"></textarea>
							</div>

							<p class="allowed-tags">
								You can use these HTML tags and attributes <small><code>&lt;a
										href="" title=""&gt; &lt;abbr title=""&gt; &lt;acronym
										title=""&gt; &lt;b&gt; &lt;blockquote cite=""&gt; &lt;cite&gt;
										&lt;code&gt; &lt;del datetime=""&gt; &lt;em&gt; &lt;i&gt;
										&lt;q cite=""&gt; &lt;strike&gt; &lt;strong&gt; </code></small>
							</p>

							<div>
								<input class="btn" name="submit" type="submit" id="submit"
									value="Submit Comment">
							</div>

						</form>

					</div>

					</section>
					<!-- end of comments -->

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
