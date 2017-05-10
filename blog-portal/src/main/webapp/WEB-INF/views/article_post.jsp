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

<title>发布新文章 - FwBlog 编程爱好者的博客论坛</title>

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

<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>

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
				<div class="span12 page-content">
		            <h2 style="text-align:center">发布新文章</h2>
					<form id="articleAddForm"  method="post">
					    <table cellpadding="5" style="margin:0 auto">
					        <tr>
					            <td>文章标题:</td>
					            <td><input type="text" name="title" style="width: 785px;"></input></td>
					        </tr>
					        <tr>
					            <td>文章所属类目:</td>
					            <td>
					            	<a href="javascript:void(0)">选择类目</a>
					            	<input type="hidden" name="categoryId" style="width: 280px;"></input>
					            </td>
					        </tr>
					        <tr>
					            <td>文章内容:</td>
					            <td>
					                <textarea style="width:800px;height:400px;visibility:hidden;" name="content"></textarea>
					            </td>
					        </tr>
				        </table>
			        	<table cellpadding="5" style="margin:0 auto">
			        		<tr>
			        			<td><input type="submit" name="submit" class="btn" value="提交"/></td>
			               		<td><input type="reset" name="reset" class="btn" value="重置"/></td>
			               	</tr>
			        	</table>
					</form>
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
	<script type='text/javascript' src='../../js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript' src='../../js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='../../js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='../../js/jflickrfeed.js'></script>
	<script type='text/javascript' src='../../js/jquery.liveSearch.js'></script>
	<script type='text/javascript' src='../../js/jquery.form.js'></script>
	<script type='text/javascript' src='../../js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='../../js/custom.js'></script>
	<script type='text/javascript' src='../../js/common.js'></script>

	<script type="text/javascript">
	var articleAddEditor ;
	//页面初始化完毕后执行此方法
	$(function(){
		//创建富文本编辑器
		articleAddEditor = FWBLOG.createEditor("#articleAddForm [name=content]");
		//初始化类目选择和图片上传器
		FWBLOG.init({fun:function(node){}});
	});
</script>
</body>
</html>
