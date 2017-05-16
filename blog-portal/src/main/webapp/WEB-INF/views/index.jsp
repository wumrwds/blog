<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>FwBlog 编程爱好者的博客论坛</title>

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

<link rel="stylesheet" href="../../css/blog.css">

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
    				  "<dl class='blog_list clearfix'><dt><a target='_blank' href='/article/" + item.userId + ".html'><img src='" + item.userPicPath 
    				  + "' class='head'><a target='_blank' href='/article/" + item.userId + ".html' class='nickname'>"
    				  + item.nickname + "</a></dt><dd><h3 class='tracking-ad' data-mod='popu_254'><a target='_blank' href='/article/" + item.userId 
    				  + "/" + item.articleId + ".html'>" + item.articleTitle + "</a></h3><div class='blog_list_c'>"
    				  + item.articleShortContent + " ...</div><div class='blog_list_b clearfix'><div class='blog_list_b_l fl'>"
    				  + "<span><i class='fa fa-list-ul'></i><a href='" + item.catId + "' target='_blank'>"
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
<style type="text/css">
.myele {
	margin: 0px 20px;
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
									<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1491583985285&di=55f0d0d68ffc8f856b9fafc18009ae2a&imgtype=0&src=http%3A%2F%2Ftupian.enterdesk.com%2F2012%2F1112%2Fczs%2F04%2Fandroidjiqiren%2520%25283%2529.jpg"
										alt="Second slide" style="width: 100%; height: 100%">
									<div class="carousel-caption">android VLayout 全面解析</div>
								</div>
								<div class="item carousel1">
									<img src="http://img.blog.csdn.net/20170404085720601?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvd2lyZWxlc3NfY29t/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center"
										alt="First slide" style="width: 100%; height: 100%">
									<div class="carousel-caption">全栈必备 JavaScript基础</div>
								</div>
								<div class="item carousel1">
									<img src="https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1491584195599&di=5fbe0a5ec72b678514f8f40816f4b0e9&imgtype=0&src=http%3A%2F%2Fpic.baike.soso.com%2Fp%2F20140512%2F20140512131519-1357455040.jpg"
										alt="Third slide" style="width: 100%; height: 100%">
									<div class="carousel-caption">Redis缓存技术学习系列之邂逅Redis</div>
								</div>
							</div>
							<!-- 轮播（Carousel）导航 -->
							<a class="carousel-control left" href="#myCarousel"
								data-slide="prev">&lsaquo;</a> <a class="carousel-control right"
								href="#myCarousel" data-slide="next">&rsaquo;</a>
						</div>
						<!-- 轮播结束 -->



						<div class="mod_title"><div class="border_b"></div><h3 class="mod_title_t"><label>最新文章</label></h3></div>
						<div id="articleList" class="blog_list_wrap">
						<!-- 最新文章列表 -->
						
						
						</div>
					</div>

					<div class="span5">
						<div class="span4">
							<section class="widget">
								<div class="support-widget" style="margin-bottom: 25px;">
									<h3 class="title">支持</h3>
									<p class="intro">
										需要使用帮助？如果您在使用过程中发现任何问题，请联系我解决.
										<a href="#contact" style="margin-left: 10px; color: #ff5809;">联系我</a>
									</p>
								</div>
							</section>
							<section class="widget" style="margin-bottom: 25px;">
								<div class="quick-links-widget">
									<h3 class="title">快速访问</h3>
									<ul id="menu-quick-links" class="menu clearfix" style="margin-top: 10px">
										<li><a href="index-2.html">我的博客</a></li>
										<li><a href="articles-list.html">个人信息</a></li>
										<li><a href="contact.html">写文章</a></li>
										<li><a href="faq.html">FAQs</a></li>
									</ul>
								</div>
							</section>
							<section class="widget" style="margin-bottom: 25px;">
								<div class="quick-links-widget">
									<h3 class="title">快 速 搜 索</h3>
									<form action="" method="post" style="margin-top: 10px">
										<input type="text" style="margin-top: 10px;width: 240px;vertical-align: middle;height: 28px;border: 1px solid #7e9db9;padding: 2px;"/>
										<input type="submit" value="搜索" style="margin-left: 10px;vertical-align: middle;color: #666;width: 80px;font-size: 13px;"/> 
									</form>
								</div>
							</section>
						</div>
						
				        <!-- 推荐博客 -->
						<div class="categ span4">
					          <div class="mod_title">
					            <div class="border_b"></div>
					            <h4 class="mod_title_t">
					              <label>推荐博客</label>
					            </h4>
					          </div>
					          <div class="expert_wrap tracking-ad" data-mod="popu_260">
			                        <dl class="expert_list" >
			                          <dt><a href="http://blog.csdn.net/sw950729"  target="_blank"><img src="http://avatar.csdn.net/2/A/D/2_sw950729.jpg" alt="img"></a></dt>
			                          <dd><a href="http://blog.csdn.net/sw950729" target="_blank" class="expert_t">孙炜</a>
			                            <p class="expert_intro"  title="笔名马云飞，正在朝着大牛的方向努力着，我不信神，但我通过巨人的肩膀凝视神所在的方向。">笔名马云飞，正在朝着大牛的方向努力着，我不信神，但我通过巨人的肩膀凝视神所在的方向。</p>
			                          </dd>
			                        </dl> 
			                        <dl class="expert_list" >
			                          <dt><a href="http://blog.csdn.net/tensorflowshizhan"  target="_blank"><img src="http://avatar.csdn.net/1/8/8/2_tensorflowshizhan.jpg" alt="img"></a></dt>
			                          <dd><a href="http://blog.csdn.net/tensorflowshizhan" target="_blank" class="expert_t">黄文坚</a>
			                            <p class="expert_intro"  title="PPmoney大数据算法总监，负责集团的风控、理财、互联网证券等业务的数据挖掘工作。Google TensorFlow Contributor。前明略数据技术合伙人，领导了对诸多大型银行、保险公司、基金的数据挖掘项目，包括建立金融风控模型、新闻舆情分析、保险复购预测等。曾就职于阿里巴巴搜索引擎算法团队，负责天猫个性化搜索系统。曾参加阿里巴巴大数据推荐算法大赛，于7000多支队伍中获得前10名。本科、研究生就读于香港科技大学，曾在顶级会议和期刊SIGMOBILE MobiCom、IEEE Transacti">PPmoney大数据算法总监，负责集团的风控、理财、互联网证券等业务的数据挖掘工作。Goo...</p>
			                          </dd>
			                        </dl> 
			                        <dl class="expert_list" >
			                          <dt><a href="http://blog.csdn.net/jason_dct"  target="_blank"><img src="http://avatar.csdn.net/1/8/3/2_jason_dct.jpg" alt="img"></a></dt>
			                          <dd><a href="http://blog.csdn.net/jason_dct" target="_blank" class="expert_t">段传涛</a>
			                            <p class="expert_intro"  title="现任的 微软SharePoint 最有价值专家，为多个大型国企，世界500强企业提供企业信息规划，信息架构设计和项目交付等经历">现任的 微软SharePoint 最有价值专家，为多个大型国企，世界500强企业提供企业信...</p>
			                          </dd>
			                        </dl> 
					          </div>
						</div>
						<!-- END 推荐博客 -->
						
						<!-- 推荐文章 -->
						<div class="categ span4">
				          <div class="mod_title">
				            <div class="border_b"></div>
				            <h4 class="mod_title_t">
				              <label>推荐文章</label>
				            </h4>
				          </div>
				          <ul class="hot_wrap tracking-ad" data-mod="popu_261" id="hot_wrap">
				                <li><a href="http://blog.csdn.net/u012403290/article/details/69539157" target="_blank" title="编码灵魂(3)-单一职责原则"><i class="fa fa-caret-right"></i><span  title="编码灵魂(3)-单一职责原则">编码灵魂(3)-单一职责原则</span></a></li>
				                <li><a href="http://blog.csdn.net/g401946949/article/details/69538675" target="_blank" title="android 开发笔记  时间轴开发"><i class="fa fa-caret-right"></i><span  title="android 开发笔记  时间轴开发">android 开发笔记  时间轴开发</span></a></li>
				                <li><a href="http://blog.csdn.net/qq_30379689/article/details/69525462" target="_blank" title="Android实战——RxJava2解锁图片三级缓存框架"><i class="fa fa-caret-right"></i><span  title="Android实战——RxJava2解锁..">Android实战——RxJava2解锁..</span></a></li>
				                <li><a href="http://blog.csdn.net/faremax/article/details/69537634" target="_blank" title="前端兼容性问题总结"><i class="fa fa-caret-right"></i><span  title="前端兼容性问题总结">前端兼容性问题总结</span></a></li>
				                <li><a href="http://blog.csdn.net/qq_37841382/article/details/69527252" target="_blank" title="数据获取成本降低 大数据产业迎发展机遇"><i class="fa fa-caret-right"></i><span  title="数据获取成本降低 大数据产业迎发展机遇">数据获取成本降低 大数据产业迎发展机遇</span></a></li>
				          </ul>
				 		</div>
						<!-- END 推荐文章 -->
						
						
						<!-- 联系 -->
						<div id="contact" class="categ span4">
				          <div class="mod_title">
				            <div class="border_b"></div>
				            <h4 class="mod_title_t">
				              <label>联系我</label>
				            </h4>
				          </div>
				          <div class="contact">
				            <p class="weibo"><a href="http://blog.csdn.net/blogdevteam" target="_blank">个人主页: xxx.xxx.xxx</a></p>
				            <p class="email">邮箱：wumrwds@gmail.com</p>
				             <p class="email">GitHub: wumrwds</p>            
				          </div>
				        </div>
						<!-- END 联系 -->
					</div>
				</div>
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
	<script type='text/javascript' src='../../js/jquery.cookie.js'></script>
	<script type='text/javascript' src='../../js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='../../js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='../../js/jflickrfeed.js'></script>
	<script type='text/javascript' src='../../js/jquery.liveSearch.js'></script>
	<script type='text/javascript' src='../../js/jquery.form.js'></script>
	<script type='text/javascript' src='../../js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='../../js/custom.js'></script>
	<script type='text/javascript' src='../../js/header.js'></script>
</body>
</html>