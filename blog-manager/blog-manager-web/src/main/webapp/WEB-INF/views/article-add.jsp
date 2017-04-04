<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="articleAddForm" class="itemForm" method="post">
	    <table cellpadding="5">
	        <tr>
	            <td>文章所属用户:</td>
	            <td>
	            	<a href="javascript:void(0)" class="easyui-linkbutton selectUser">选择用户</a>
	            	<input type="hidden" name="userId" style="width: 280px;"></input>
	            </td>
	        </tr>
	        <tr>
	            <td>文章所属类目:</td>
	            <td>
	            	<a href="javascript:void(0)" class="easyui-linkbutton selectCat">选择类目</a>
	            	<input type="hidden" name="categoryId" style="width: 280px;"></input>
	            </td>
	        </tr>
	        <tr>
	            <td>文章标题:</td>
	            <td><input class="easyui-textbox" type="text" name="title" data-options="required:true" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>文章内容:</td>
	            <td>
	                <textarea style="width:800px;height:400px;visibility:hidden;" name="content"></textarea>
	            </td>
	        </tr>
        </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	var articleAddEditor ;
	//页面初始化完毕后执行此方法
	$(function(){
		//创建富文本编辑器
		articleAddEditor = FWBLOG.createEditor("#articleAddForm [name=content]");
		//初始化类目选择和图片上传器
		FWBLOG.init({fun:function(node){
			//根据商品的分类id取商品 的规格模板，生成规格信息。第四天内容。
			FWBLOG.changeItemParam(node, "articleAddForm");
		}});
	});
	//提交表单
	function submitForm(){
		//有效性验证
		if(!$('#articleAddForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}

		//同步文本框中的商品描述
		articleAddEditor.sync();
		
		//ajax的post方式提交表单
		//$("#articleAddForm").serialize()将表单序列号为key-value形式的字符串
// 		alert($("#articleAddForm").serialize());
		$.post("/article/save",$("#articleAddForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示','新增文章成功!','info',function(){
					$("#articleAddWindow").window('close');
					$("#articleList").datagrid("reload");
				});
				clearForm();
			}
		});
	}
	
	function clearForm(){
		$('#articleAddForm').form('reset');
		articleAddEditor.html('');
	}
</script>
