<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="/js/kindeditor-4.1.10/themes/default/default.css" type="text/css" rel="stylesheet">
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/kindeditor-all-min.js"></script>
<script type="text/javascript" charset="utf-8" src="/js/kindeditor-4.1.10/lang/zh_CN.js"></script>
<div style="padding:10px 10px 10px 10px">
	<form id="userEditForm" class="itemForm" method="post">
	    <table cellpadding="5">
	    	<tr>
	            <td><input type="hidden" name="id"/></td>
	        </tr>
	        <tr>
	            <td>用户名:</td>
	            <td><input class="easyui-textbox" type="text" name="loginname" data-options="required:true,validType:'length[4,20]'" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>密码:</td>
	            <td><input class="easyui-textbox" type="text" name="password" data-options="required:true,validType:'length[4,20]'" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>昵称:</td>
	            <td><input class="easyui-textbox" type="text" name="nickname" data-options="required:true,validType:'length[1,20]'" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>电话:</td>
	            <td><input class="easyui-textbox" type="text" name="phone" data-options="validType:'length[0,20]'" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>邮箱:</td>
	            <td><input class="easyui-textbox" type="text" name="email" data-options="validType:'length[0,20]'" style="width: 280px;"></input></td>
	        </tr>
	        <tr>
	            <td>头像:</td>
	            <td>
	                 <input type="hidden" name="pic"/>
	                 <img alt="" src="#" style="display:none;width:125px;height:150px">
	            	 <a href="javascript:void(0)" class="easyui-linkbutton picFileUpload">上传图片</a>
	            </td>
	        </tr>
	        <tr>
	            <td>个人简介:</td>
	            <td><input class="easyui-textbox" name="description" data-options="multiline:true,validType:'length[0,150]'" style="height:60px;width: 280px;"></input></td>
	        </tr>
	    </table>
	</form>
	<div style="padding:5px">
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">提交</a>
	    <a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">重置</a>
	</div>
</div>
<script type="text/javascript">
	function submitForm(){
		if(!$('#userEditForm').form('validate')){
			$.messager.alert('提示','表单还未填写完成!');
			return ;
		}
		
		$.post("/user/update",$("#userEditForm").serialize(), function(data){
			if(data.status == 200){
				$.messager.alert('提示','修改用户成功!','info',function(){
					$("#userEditWindow").window('close');
					$("#userList").datagrid("reload");
				});
			}
		});
	}
</script>
