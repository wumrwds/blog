<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="articleEditForm" class="itemForm" method="post">
	    <table cellpadding="5">
	    	<tr>
	        	<td>
	        		<input type="hidden" name="id" />
	        	</td>
        	</tr>
	        <tr>
	            <td>文章所属用户:</td>
	            <td>
	            	<a href="javascript:void(0)" class="easyui-linkbutton selectUser">选择用户</a>
	            	<span class="helpReview" style="margin-left:10px;"></span>
	            	<input type="hidden" name="userId" style="width: 280px;"></input>
	            </td>
	        </tr>
	        <tr>
	            <td>文章所属类目:</td>
	            <td>
	            	<a href="javascript:void(0)" class="easyui-linkbutton selectCat">选择类目</a>
	            	<span class="helpReview" style="margin-left:10px;"></span>
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
	var itemEditEditor ;
	$(function(){
		//实例化编辑器
		itemEditEditor = FWBLOG.createEditor("#articleEditForm [name=content]");
	});
	
	function submitForm(){
		if(!$('#articleEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		itemEditEditor.sync();
		
		$.post("/article/update",$("#articleEditForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示','修改文章成功!','info',function(){
					$("#articleEditWindow").window('close');
					$("#articleList").datagrid("reload");
				});
			}
		});
	}
</script>
