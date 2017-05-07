<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<title>Knowledge Base Theme</title>

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
				<div id="article_details" class="details">
    <div class="article_title">   
         <span class="ico ico_type_Original"></span>


    <h1>
        <span class="link_title"><a href="/jiangwei0910410003/article/details/65935044">
        Android安全防护之旅---Android应用"反调试"操作的几种方案解析            
        </a></span>
    </h1>
</div>

   

        <div class="article_manage clearfix">
        <div class="article_r">
            <span class="link_postdate">2017-04-11 18:44</span>
            <span class="link_view" title="阅读次数">320人阅读</span>
            <span class="link_comments" title="评论次数"> <a href="#comments" onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_pinglun'])">评论</a>(0)</span>
            <span class="link_collect tracking-ad" data-mod="popu_171"> <a href="javascript:void(0);" onclick="javascript:collectArticle('Android%e5%ae%89%e5%85%a8%e9%98%b2%e6%8a%a4%e4%b9%8b%e6%97%85---Android%e5%ba%94%e7%94%a8%22%e5%8f%8d%e8%b0%83%e8%af%95%22%e6%93%8d%e4%bd%9c%e7%9a%84%e5%87%a0%e7%a7%8d%e6%96%b9%e6%a1%88%e8%a7%a3%e6%9e%90','65935044');return false;" title="收藏" target="_blank">收藏</a></span>
             <span class="link_report"> <a href="#report" onclick="javascript:report(65935044,2);return false;" title="举报">举报</a></span>

        </div>
    </div>
    <div class="embody" style="display:none" id="embody">
        <span class="embody_t">本文章已收录于：</span>
        <div class="embody_c" id="lib" value="{&quot;err&quot;:0,&quot;msg&quot;:&quot;ok&quot;,&quot;data&quot;:[]}"></div>
    </div>
    <style type="text/css">        
            .embody{
                padding:10px 10px 10px;
                margin:0 -20px;
                border-bottom:solid 1px #ededed;                
            }
            .embody_b{
                margin:0 ;
                padding:10px 0;
            }
            .embody .embody_t,.embody .embody_c{
                display: inline-block;
                margin-right:10px;
            }
            .embody_t{
                font-size: 12px;
                color:#999;
            }
            .embody_c{
                font-size: 12px;
            }
            .embody_c img,.embody_c em{
                display: inline-block;
                vertical-align: middle;               
            }
             .embody_c img{               
                width:30px;
                height:30px;
            }
            .embody_c em{
                margin: 0 20px 0 10px;
                color:#333;
                font-style: normal;
            }
    </style>
    <script type="text/javascript">
        $(function () {
            try
            {
                var lib = eval("("+$("#lib").attr("value")+")");
                var html = "";
                if (lib.err == 0) {
                    $.each(lib.data, function (i) {
                        var obj = lib.data[i];
                        //html += '<img src="' + obj.logo + '"/>' + obj.name + "&nbsp;&nbsp;";
                        html += ' <a href="' + obj.url + '" target="_blank">';
                        html += ' <img src="' + obj.logo + '">';
                        html += ' <em><b>' + obj.name + '</b></em>';
                        html += ' </a>';
                    });
                    if (html != "") {
                        setTimeout(function () {
                            $("#lib").html(html);                      
                            $("#embody").show();
                        }, 100);
                    }
                }      
            } catch (err)
            { }
            
        });
    </script>
      <div class="category clearfix">
        <div class="category_l">
           <img src="http://static.blog.csdn.net/images/category_icon.jpg">
            <span>分类：</span>
        </div>
        <div class="category_r">
                    <label onclick="GetCategoryArticles('1808721','jiangwei0910410003','top','65935044');">
                        <span onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_fenlei']);">Android<em>（152）</em></span>
                      <img class="arrow-down" src="http://static.blog.csdn.net/images/arrow_triangle _down.jpg" style="display:inline;">
                      <img class="arrow-up" src="http://static.blog.csdn.net/images/arrow_triangle_up.jpg" style="display:none;">
                        <div class="subItem">
                            <div class="subItem_t"><a href="http://blog.csdn.net/jiangwei0910410003/article/category/1808721" target="_blank">作者同类文章</a><i class="J_close">X</i></div>
                            <ul class="subItem_l" id="top_1808721">                            
                            </ul>
                        </div>
                    </label>                    
                    <label onclick="GetCategoryArticles('5897865','jiangwei0910410003','top','65935044');">
                        <span onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_fenlei']);">逆向之旅<em>（26）</em></span>
                      <img class="arrow-down" src="http://static.blog.csdn.net/images/arrow_triangle _down.jpg" style="display:inline;">
                      <img class="arrow-up" src="http://static.blog.csdn.net/images/arrow_triangle_up.jpg" style="display:none;">
                        <div class="subItem">
                            <div class="subItem_t"><a href="http://blog.csdn.net/jiangwei0910410003/article/category/5897865" target="_blank">作者同类文章</a><i class="J_close">X</i></div>
                            <ul class="subItem_l" id="top_5897865">                            
                            </ul>
                        </div>
                    </label>                    
        </div>
    </div>
    <script type="text/javascript" src="http://static.blog.csdn.net/scripts/category.js"></script>  
        <div class="bog_copyright">         
            <p class="copyright_p">版权声明：本文为博主原创文章，未经博主允许不得转载。</p>
        </div>

  

  
  
     

<div style="clear:both"></div><div style="border:solid 1px #ccc; background:#eee; float:left; min-width:200px;padding:4px 10px;"><p style="text-align:right;margin:0;"><span style="float:left;">目录<a href="#" title="系统根据文章中H1到H6标签自动生成文章目录">(?)</a></span><a href="#" onclick="javascript:return openct(this);" title="展开">[+]</a></p><ol style="display:none;margin-left:14px;padding-left:14px;line-height:160%;"><li><a href="#t0">一前言</a></li><li><a href="#t1">二反调试策略方案</a></li><ol><li><a href="#t2">第一种先占坑自己附加</a></li><li><a href="#t3">第二种签名校验</a></li><li><a href="#t4">第三种调试状态检查</a></li><ol><li><a href="#t5">第一检查应用是否属于debug模式</a></li><li><a href="#t6">第二检查应用是否处于调试状态</a></li></ol><li><a href="#t7">第四种循环检查端口</a></li><li><a href="#t8">第五种循环检查TracerPid值</a></li></ol><li><a href="#t9">三方案策略总结</a></li><li><a href="#t10">四总结</a></li><li><a href="#t11">扫一扫加小编微信添加时请注明编码美丽非常感谢</a></li></ol></div><div style="clear:both"></div><div id="article_content" class="article_content">
<h1><a name="t0"></a><span style="font-size:18px;">一、前言</span></h1><p><span style="font-size:14px;">在之前介绍了很多破解相关的文章，在这个过程中我们难免会遇到一些反调试策略，当时只是简单的介绍了如何去解决反调试，其实在去年我已经介绍了一篇关于<a href="http://lib.csdn.net/base/android" class="replace_word" title="Android知识库" target="_blank" style="color:#df3434; font-weight:bold;">Android</a>中的安全逆向防护之战的文章：<a target="_blank" href="http://www.wjdiankong.cn/android%E9%80%86%E5%90%91%E4%B9%8B%E6%97%85-android%E5%BA%94%E7%94%A8%E7%9A%84%E5%AE%89%E5%85%A8%E7%9A%84%E6%94%BB%E9%98%B2%E4%B9%8B%E6%88%98/">Android安全逆向防护解析</a>；那么这篇文章就来详细总结一下，现阶段比较流行的几种反调试解决方案。</span></p><p><span style="font-size:14px;"><br></span></p><h1><a name="t1"></a><span style="font-size:18px;">二、反调试策略方案</span></h1><h2><a name="t2"></a><span style="font-size:14px;">第一种：先占坑，自己附加</span></h2><p><span style="font-size:14px;">代码非常简单，在so中加上这行代码即可：ptrace(PTRACE_TRACEME, 0, 0, 0);</span></p><p><span style="font-size:14px;">其中PTRACE_TRACEME代表：本进程被其父进程所跟踪。其父进程应该希望跟踪子进程，一般一个进程只能被附加一次，我们在破解调试的时候都会附加需要调试应用的进程，如果我们先占坑，父进程附加自己，那么后面在附加调试就会失败。加上这段代码我们运行之后看一下效果：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325104859571?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">我们在进行破解动态调试的时候都知道附加进程的status文件中的TracerPid字段就是被调试的进程pid，这里我们运行程序之后，查看进程对应的status文件，发现TracerPid值就是进程的父进程pid值。那么后面如果有进程在想附加调试就是会失败的。这种方式启动一定的调试作用，但是不是绝对安全的。关于解决这种反调试方案后面再说。</span></p><p><span style="font-size:14px;"><br></span></p><h2><a name="t3"></a><span style="font-size:14px;">第二种：签名校验</span></h2><p><span style="font-size:14px;">其实签名校验，准备来说不算是反调试方案，但是也是一种安全防护策略，就在这里提一下了，而签名校验一般现在有很多用途，用意在于防止二次打包，一般方案有两种：</span></p><p><span style="color: rgb(255, 0, 0);"><strong><span style="font-size:14px;">第一：直接在本地做防护，如果发现签名不一致直接退出应用</span></strong></span></p><p><span style="color: rgb(255, 0, 0);"><strong><span style="font-size:14px;">第二：将签名信息携带请求参数中参与加密，服务端进行签名校验，失败就返回错误数据即可</span></strong></span></p><p><span style="font-size:14px;">而这两种方式也都不是最安全的防护，因为只要有签名校验的逻辑，在本地都可以进行过滤掉。而在之前的好几篇文章中都介绍了如何过滤这种签名校验的方法，不了解的同学可以去查看：<a target="_blank" href="http://www.wjdiankong.cn/android%E9%80%86%E5%90%91%E4%B9%8B%E6%97%85-%E5%B8%A6%E4%BD%A0%E7%88%86%E7%A0%B4%E4%B8%80%E6%AC%BE%E5%BA%94%E7%94%A8%E7%9A%84%E7%AD%BE%E5%90%8D%E9%AA%8C%E8%AF%81%E9%97%AE%E9%A2%98/">Android中破解某应用的签名校验</a>；而对于服务器签名校验以及将签名校验放到so中的文章后面会单独在介绍一篇。</span></p><p><span style="font-size:14px;"><br></span></p><h2><a name="t4"></a><span style="font-size:14px;">第三种：调试状态检查</span></h2><p><span style="font-size:14px;">这种方式是纯属借助Android中的api进行检验，有两种方法：</span></p><h3><a name="t5"></a><span style="font-size:14px;">第一：检查应用是否属于debug模式</span></h3><p><span style="font-size:14px;">直接调用Android中的flag属性：<strong><span style="color:#ff0000;">ApplicationInfo.FLAG_DEBUGGABLE</span></strong>，判断是否属于debug模式：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325110147683?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">这个其实就是为了防止现在破解者为了调试应用将应用反编译在AndroidManifest.xml中添加：<strong><span style="color:#ff0000;">android:debuggable</span></strong>属性值，将其设置true。然后就可以进行调试。</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325110258232?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""></span></p><p><span style="font-size:14px;">添加这个属性之后，我们可以用&nbsp;<strong><span style="color:#ff0000;">dumpsys package [packagename]&nbsp;</span></strong>命令查看debug状态：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325110442091?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">所以我们可以检查应用的AppliationInfo的flag字段是否为debuggable即可。不过这种方式也不是万能的，后面会介绍如何解决这种反调试问题。</span></p><p><span style="font-size:14px;"><br></span></p><h3><a name="t6"></a><span style="font-size:14px;">第二：检查应用是否处于调试状态</span></h3><p><span style="font-size:14px;">这个也是借助系统的一个api来进行判断：android.os.Debug.isDebuggerConnected()；这个就是判断当前应用有没有被调试，我们加上这段代码之后，按照之前的那篇文章：<a target="_blank" href="http://www.wjdiankong.cn/apk%E8%84%B1%E5%A3%B3%E5%9C%A3%E6%88%98%E4%B9%8B-%E8%84%B1%E6%8E%89360%E5%8A%A0%E5%9B%BA%E7%9A%84%E5%A3%B3/">脱掉360加固保护壳</a>，其中有一个步骤进行jdb连接操作：</span></p><p><span style="font-size:14px;"><strong><span style="color:#ff0000;">jdb -connect com.sun.jdi.SocketAttach:hostname=127.0.0.1,port=8700</span></strong>，当连接成功之后，这个方法就会返回true，那么我们可以利用这个api来进行判断当前应用是否处于调试状态来进行反调试操作。但是这种方式不是万能的，后面会介绍如何解决这种反调试问题。<br></span></p><p><span style="font-size:14px;"><br></span></p><h2><a name="t7"></a><span style="font-size:14px;">第四种：循环检查端口</span></h2><p><span style="font-size:14px;">我们在之前破解逆向的时候，需要借助一个强大利器，那就是IDA，在使用IDA的时候，我们知道需要在设备中启动android_server作为通信，那么这个启动就会默认占用端口23946：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325112644891?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">我们可以查看设备的tcp端口使用情况 <strong><span style="color:#ff0000;">cat /proc/net/tcp</span></strong>：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325112648461?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">其中5D8A转化成十进制就是23946，而看到uid是0，因为我们运行android_server是root身份的，uid肯定是0了。所以我们可以利用端口检查方式来进行反调试策略，当然这种方式不是万能的，后面会详细介绍如何解决这样的反调试方法。</span></p><p><span style="font-size:14px;"><br></span></p><h2><a name="t8"></a><span style="font-size:14px;">第五种：循环检查TracerPid值</span></h2><p><span style="font-size:14px;">在第一种方式中，我们简单的介绍了如果应用被调试了，那么他的TracerPid值就是调试进程的pid值，而在使用IDA进行调试的时候，需要在设备端启动android_server进行通信，那么被调试的进程就会被附加，这就是android_server进程的pid值了：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325130911158?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">查看一下android_server的pid值：</span></p><p><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170325130914486?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvamlhbmd3ZWkwOTEwNDEwMDAz/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt=""><br></span></p><p><span style="font-size:14px;">所以我们可以在自己的应用中的native层加上一个循环检查自己status中的TracerPid字段值，如果非0或者是非自己进程pid(如果采用了第一种方案的话，这里也是需要做一次过滤的)；那么就认为被附加调试了。当然这里还有一种方案，就是可以检查进程列表中有没有android_server进程，不过这种方式都不是万能的，后面会详细介绍如何解决这种反调试方案。</span></p><p><span style="font-size:14px;"><br></span></p><h1><a name="t9"></a><span style="font-size:18px;">三、方案策略总结</span></h1><p><span style="font-size:14px;">下面简单几句话总结这几种方案：</span></p><p><span style="font-size:14px;"><strong>第一、</strong>自己附加进程，先占坑，ptrace(PTRACE_TRACEME, 0, 0, 0)！</span></p><p><span style="font-size:14px;"><strong>第二、</strong>签名校验不可或缺的一个选择，本地校验和服务端校验双管齐下！</span></p><p><span style="font-size:14px;"><strong>第三、</strong>借助系统api判断应用调试状态和调试属性，最基础的防护！</span></p><p><span style="font-size:14px;"><strong>第四、</strong>轮训检查android_server调试端口信息和进程信息，防护IDA的一种有效方式！</span></p><p><span style="font-size:14px;"><strong>第五、</strong>轮训检查自身status中的TracerPid字段值，防止被其他进程附加调试的一种有效方式！</span></p><p><span style="font-size:14px;"><br></span></p><p><span style="font-size:14px;">上面就简单的介绍了现在流行的几种应用反调试策略方案，这几种方案可以全部使用，也可以采用几种使用，但是要记住一点，就是如果要做到更安全点，记得把反调试方案放到native层中，时机最早，一般在JNI_OnUnload函数里面，为了更安全点，native中的函数可以自己手动注册，函数名自己混淆一下也是可以的。具体可参见这篇文章：<a target="_blank" href="http://www.wjdiankong.cn/android%E9%80%86%E5%90%91%E4%B9%8B%E6%97%85-android%E5%BA%94%E7%94%A8%E7%9A%84%E5%AE%89%E5%85%A8%E7%9A%84%E6%94%BB%E9%98%B2%E4%B9%8B%E6%88%98/">Android安全逆向防护解析</a>。现在一些加固平台为了更有效的防护，启动的多进程之间的防护监听，多进程一起参与反调试方案，这种方式对于破解难度就会增大，但是也不是绝对安全的。文章中对于每种方式最后都说到了，都不是万能安全的，都有方法解决，而这内容放到下一篇来详细介绍了。</span></p><p><strong><span style="font-size:14px;"><br></span></strong></p><p><strong><span style="font-size:18px;"><span style="color: rgb(51, 102, 255);">反调试方案策略代码下载：</span><a target="_blank" href="https://github.com/fourbrother/android_anti_debug">https://github.com/fourbrother/android_anti_debug</a></span></strong></p><p><span style="font-size:14px;"><br></span></p><h1><a name="t10"></a><span style="font-size:18px;">四、总结</span></h1><p><span style="font-size:14px;">本文主要介绍了Android中应用在进行反调试反破解的几种方案，对于每种方案进行了详细原理分析，代码也给出了下载地址，可以自行运行看效果，而对于这几种反调试方案并非是绝对安全的，后面会再详细介绍如何解决这些反调试功能，但是为了应用安全，这几种方案也不可以不用，有总比没有好！最后读完文章，记得多多点赞分享扩散，要是有打赏就最好啦啦！</span></p><p><span style="font-size:24px;"><br></span></p><p></p><p style="margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="font-weight: bold;"><span style="color: rgb(255, 102, 102);"><span style="font-size:24px;">更多内容：<span style="color: rgb(12, 137, 207);"><a target="_blank" href="http://www.wjdiankong.cn/" style="text-decoration: none; color: rgb(12, 137, 207);">点击这里</a></span></span></span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px;"></p><p style="margin-top: 0px; margin-bottom: 0px; padding-top: 0px; padding-bottom: 0px; color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="color: rgb(51, 102, 255);"><strong><span style="font-size:24px;">关注<a target="_blank" href="http://lib.csdn.net/base/wechat" class="replace_word" title="微信开发知识库" style="text-decoration: none; color: rgb(223, 52, 52);">微信</a>公众号，最新技术干货实时推送</span></strong></span></p><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20160822091821005?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQv/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt="" style="border: none; max-width: 100%; max-height: 100%;"></span></div><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="font-size:14px;"><br></span></div><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="color: rgb(51, 102, 255);"><strong><span style="font-size:24px;">编码美丽技术圈</span></strong></span></div><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="color: rgb(51, 204, 0);"><strong><span style="font-size:24px;">微信扫一扫进入我的"技术圈"世界</span></strong></span></div><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20170312171601247" alt="" style="border: none; max-width: 100%; max-height: 100%;"><br></span></div><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><span style="font-size:14px;"><br></span></div><div style="color: rgb(85, 85, 85); font-family: 'microsoft yahei'; line-height: 35px; text-align: center;"><h1 style="margin: 0px; padding: 0px;"><a name="t11"></a><span style="font-size:14px;"><a target="_blank" name="t6" style="color: rgb(12, 137, 207);"></a><a target="_blank" name="t9" style="color: rgb(12, 137, 207);"></a><a target="_blank" name="t6" style="color: rgb(12, 137, 207);"></a></span><div><span style="font-size:18px;"><span style="color: rgb(255, 102, 85);">扫一扫加小编微信</span><br><span style="color: rgb(7, 136, 153);">添加时请注明：“编码美丽”非常感谢！</span></span></div><div><span style="font-size:14px;"><img src="http://img.blog.csdn.net/20161122092433577?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQv/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/Center" alt="" style="border: none; max-width: 100%; max-height: 100%;"></span></div></h1></div>   
</div>




<!-- Baidu Button BEGIN -->




<div class="bdsharebuttonbox tracking-ad bdshare-button-style0-16" style="float: right;" data-mod="popu_172" data-bd-bind="1491918416135">
<a href="#" class="bds_more" data-cmd="more" style="background-position:0 0 !important; background-image: url(http://bdimg.share.baidu.com/static/api/img/share/icons_0_16.png?v=d754dcc0.png) !important" target="_blank"></a>
<a href="#" class="bds_qzone" data-cmd="qzone" title="分享到QQ空间" style="background-position:0 -52px !important" target="_blank"></a>
<a href="#" class="bds_tsina" data-cmd="tsina" title="分享到新浪微博" style="background-position:0 -104px !important" target="_blank"></a>
<a href="#" class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博" style="background-position:0 -260px !important" target="_blank"></a>
<a href="#" class="bds_renren" data-cmd="renren" title="分享到人人网" style="background-position:0 -208px !important" target="_blank"></a>
<a href="#" class="bds_weixin" data-cmd="weixin" title="分享到微信" style="background-position:0 -1612px !important" target="_blank"></a>
</div>
<script>window._bd_share_config = { "common": { "bdSnsKey": {}, "bdText": "", "bdMini": "1", "bdMiniList": false, "bdPic": "", "bdStyle": "0", "bdSize": "16" }, "share": {} }; with (document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];</script>
<!-- Baidu Button END -->

   <link rel="stylesheet" href="http://static.blog.csdn.net/css/blog_detail.css">

    
<!--172.16.140.14-->

<!-- Baidu Button BEGIN -->
<script type="text/javascript" id="bdshare_js" data="type=tools&amp;uid=1536434" src="http://bdimg.share.baidu.com/static/js/bds_s_v2.js?cdnversion=414422"></script>

<script type="text/javascript">
    document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion=" + Math.ceil(new Date()/3600000)
</script>
<!-- Baidu Button END -->

<script type="text/javascript">
    var fromjs = $("#fromjs");
    if (fromjs.length > 0) {
            $("#fromjs .markdown_views pre").addClass("prettyprint");
            prettyPrint();

            $('pre.prettyprint code').each(function () {
                var lines = $(this).text().split('\n').length;
                var $numbering = $('<ul/>').addClass('pre-numbering').hide();
                $(this).addClass('has-numbering').parent().append($numbering);
                for (i = 1; i <= lines; i++) {
                    $numbering.append($('<li/>').text(i));
                };
                $numbering.fadeIn(1700);
            });

            $('.pre-numbering li').css("color", "#999");
        }

    

</script>

 


        <div id="digg" articleid="65935044">
            <dl id="btnDigg" class="digg digg_disable" onclick="btndigga();">
               
                 <dt>顶</dt>
                <dd>2</dd>
            </dl>
           
              
            <dl id="btnBury" class="digg digg_disable" onclick="btnburya();">
              
                  <dt>踩</dt>
                <dd>0</dd>               
            </dl>
            
        </div>
     <div class="tracking-ad" data-mod="popu_222"><a href="javascript:void(0);" target="_blank">&nbsp;</a>   </div>
    <div class="tracking-ad" data-mod="popu_223"> <a href="javascript:void(0);" target="_blank">&nbsp;</a></div>
    <script type="text/javascript">
                function btndigga() {
                    $(".tracking-ad[data-mod='popu_222'] a").click();
                }
                function btnburya() {
                    $(".tracking-ad[data-mod='popu_223'] a").click();
                }
            </script>

   <ul class="article_next_prev">
                <li class="prev_article"><span onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_shangyipian']);location.href='/jiangwei0910410003/article/details/61618945';">上一篇</span><a href="/jiangwei0910410003/article/details/61618945" onclick="_gaq.push(['_trackEvent','function', 'onclick', 'blog_articles_shangyipian'])">Android安全防护之旅---带你把Apk混淆成中文语言代码</a></li>
    </ul>

    <div style="clear:both; height:10px;"></div>


        <div class="similar_article" style="">
                <h4>我的同类文章</h4>
                <div class="similar_c" style="margin:20px 0px 0px 0px">
                    <div class="similar_c_t">
                                <label class="similar_cur">
                                    <span style="cursor:pointer" onclick="GetCategoryArticles('1808721','jiangwei0910410003','foot','65935044');">Android<em>（152）</em></span>
                                </label>
                                <label class="">
                                    <span style="cursor:pointer" onclick="GetCategoryArticles('5897865','jiangwei0910410003','foot','65935044');">逆向之旅<em>（26）</em></span>
                                </label>
                    </div>
                   
                    <div class="similar_wrap tracking-ad" data-mod="popu_141" style="max-height:195px;">
                        <a href="http://blog.csdn.net" style="display:none" target="_blank">http://blog.csdn.net</a>
                        <ul class="similar_list fl"><li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/61618945" id="foot_aritcle_61618945undefined04497370577867632" target="_blank" title="Android安全防护之旅---带你把Apk混淆成中文语言代码">Android安全防护之旅---带你把Apk混淆成中文语言代码</a><span>2017-04-05</span><label><i>阅读</i><b>11060</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54879836" id="foot_aritcle_54879836undefined25786486492229455" target="_blank" title="Android&quot;挂逼&quot;修炼之行---防自动抢红包外挂原理解析">Android"挂逼"修炼之行---防自动抢红包外挂原理解析</a><span>2017-03-06</span><label><i>阅读</i><b>11068</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54629728" id="foot_aritcle_54629728undefined4134273254102758" target="_blank" title="Android逆向之旅---带你爆破一款应用的签名验证问题">Android逆向之旅---带你爆破一款应用的签名验证问题</a><span>2017-02-20</span><label><i>阅读</i><b>11795</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54409957" id="foot_aritcle_54409957undefined1064792081920789" target="_blank" title="Apk脱壳圣战之---如何脱掉“梆梆加固”的保护壳">Apk脱壳圣战之---如何脱掉“梆梆加固”的保护壳</a><span>2017-02-06</span><label><i>阅读</i><b>7480</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/53954686" id="foot_aritcle_53954686undefined9919208332420413" target="_blank" title="Android逆向之旅---破解&quot;穿靴子的猫&quot;游戏的收费功能">Android逆向之旅---破解"穿靴子的猫"游戏的收费功能</a><span>2017-01-03</span><label><i>阅读</i><b>11608</b></label></li> </ul>

                        <ul class="similar_list fr"><li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54982476" id="foot_aritcle_54982476undefined5329400325000042" target="_blank" title="Android逆向之旅---获取加固后应用App的所有方法信息">Android逆向之旅---获取加固后应用App的所有方法信息</a><span>2017-03-20</span><label><i>阅读</i><b>7955</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54645085" id="foot_aritcle_54645085undefined5235668031812681" target="_blank" title="Android&quot;挂逼&quot;修炼之行---解析公众号文章消息和链接文章消息如何自动打开原理">Android"挂逼"修炼之行---解析公众号文章消息和链接文章消息如何自动打开原理</a><span>2017-02-27</span><label><i>阅读</i><b>10240</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54603082" id="foot_aritcle_54603082undefined06397958918825064" target="_blank" title="2016这一年，回顾我们一起走过的&quot;编码美丽&quot;之路！">2016这一年，回顾我们一起走过的"编码美丽"之路！</a><span>2017-01-19</span><label><i>阅读</i><b>3788</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/54092364" id="foot_aritcle_54092364undefined3264851773529307" target="_blank" title="Python脚本下载今日头条视频(附加Android版本辅助下载器)">Python脚本下载今日头条视频(附加Android版本辅助下载器)</a><span>2017-01-12</span><label><i>阅读</i><b>29654</b></label></li> <li><em>•</em><a href="http://blog.csdn.net/jiangwei0910410003/article/details/53705040" id="foot_aritcle_53705040undefined2587112688574287" target="_blank" title="Android中热修复框架Robust原理解析+并将框架代码从&quot;闭源&quot;变成&quot;开源&quot;(下篇)">Android中热修复框架Robust原理解析+并将框架代码从"闭源"变成"开源"(下篇)</a><span>2016-12-26</span><label><i>阅读</i><b>5154</b></label></li> </ul>
                    <a href="http://blog.csdn.net/jiangwei0910410003/article/category/1808721" class="MoreArticle">更多文章</a></div>
                </div>
            </div>    
    <script type="text/javascript">
        $(function () {
            GetCategoryArticles('1808721', 'jiangwei0910410003','foot','65935044');
        });
    </script>
      
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
								<a href="http://my.csdn.net/u010853261" target="_blank"> <img
									src="http://avatar.csdn.net/F/2/F/1_u010853261.jpg"
									title="访问我的空间" style="max-width: 90%" />
								</a> <br /> <span><a href="http://my.csdn.net/u010853261"
									class="user_name" target="_blank"
									style="color: #666; font: 16px/20px 'microsoft yahei'; text-decoration: none;">u010853261</a></span>
							</div>
							<ul id="blog_rank"
								style="padding: 4px; margin-bottom: 13px;">
								<li style="border-bottom: 1px dashed #ccc;">访问：<span>48427次</span></li>
								<li style="border-bottom: 1px dashed #ccc;">原创：<span>296篇</span></li>
								<li style="border-bottom: 1px dashed #ccc;">转载：<span>20篇</span></li>
								<li style="border-bottom: 1px dashed #ccc;">译文：<span>0篇</span></li>
								<li style="border-bottom: 1px dashed #ccc;">评论：<span>14条</span></li>
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
	<footer id="footer-wrapper">
	<div id="footer" class="container">
		<div class="row">

			<div class="span3">
				<section class="widget">
				<h3 class="title">How it works</h3>
				<div class="textwidget">
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit,
						sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna
						aliquam erat volutpat.</p>
					<p>Ut wisi enim ad minim veniam, quis nostrud exerci tation
						ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
						consequat.</p>
				</div>
				</section>
			</div>

			<div class="span3">
				<section class="widget">
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
				</section>
			</div>

			<div class="span3">
				<section class="widget">
				<h3 class="title">Latest Tweets</h3>
				<div id="twitter_update_list">
					<ul>
						<li>No Tweets loaded !</li>
					</ul>
				</div>
				<script
					src="http://twitterjs.googlecode.com/svn/trunk/src/twitter.min.js"
					type="text/javascript"></script> <script type="text/javascript">
						getTwitters("twitter_update_list", {
							id : "960development",
							count : 3,
							enableLinks : true,
							ignoreReplies : true,
							clearContents : true,
							template : "%text% <span>%time%</span>"
						});
					</script> </section>
			</div>

			<div class="span3">
				<section class="widget">
				<h3 class="title">Flickr Photos</h3>
				<div class="flickr-photos" id="basicuse"></div>
				</section>
			</div>

		</div>
	</div>
	<!-- end of #footer --> <!-- Footer Bottom -->
	<div id="footer-bottom-wrapper">
		<div id="footer-bottom" class="container">
			<div class="row">
				<div class="span6">
					<p class="copyright">
						Copyright © 2013. All Rights Reserved by KnowledgeBase.Collect
						from <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">网页模板</a>
					</p>
				</div>
				<div class="span6">
					<!-- Social Navigation -->
					<ul class="social-nav clearfix">
						<li class="linkedin"><a target="_blank" href="#"></a></li>
						<li class="stumble"><a target="_blank" href="#"></a></li>
						<li class="google"><a target="_blank" href="#"></a></li>
						<li class="deviantart"><a target="_blank" href="#"></a></li>
						<li class="flickr"><a target="_blank" href="#"></a></li>
						<li class="skype"><a target="_blank" href="skype:#?call"></a></li>
						<li class="rss"><a target="_blank" href="#"></a></li>
						<li class="twitter"><a target="_blank" href="#"></a></li>
						<li class="facebook"><a target="_blank" href="#"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Footer Bottom --> </footer>
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
