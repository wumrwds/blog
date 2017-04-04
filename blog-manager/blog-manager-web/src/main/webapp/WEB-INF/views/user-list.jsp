<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table class="easyui-datagrid" id="userList" title="用户列表" 
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/user/list',method:'get',pageSize:30,toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'id',width:30">用户ID</th>
            <th data-options="field:'loginname',width:120,align:'center'">用户名</th>
            <th data-options="field:'nickname',width:120,align:'center'">昵称</th>
            <th data-options="field:'pic',width:0,hidden:true"></th>
            <th data-options="field:'phone',width:110,align:'center'">电话</th>
            <th data-options="field:'email',width:130,align:'center'">邮箱</th>
            <th data-options="field:'description',width:300,align:'center'">个人描述</th>
            <th data-options="field:'created',width:125,align:'center',formatter:FWBLOG.formatDateTime">创建日期</th>
            <th data-options="field:'updated',width:125,align:'center',formatter:FWBLOG.formatDateTime">更新日期</th>
        </tr>
    </thead>
</table>
<div id="userAddWindow" class="easyui-window" title="添加用户" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/user-add'" style="width:80%;height:80%;padding:10px;">
<div id="userEditWindow" class="easyui-window" title="编辑用户" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/user-edit'" style="width:80%;height:80%;padding:10px;">
</div>
<script>

    function getSelectionsIds(){
    	var userList = $("#userList");
    	var sels = userList.datagrid("getSelections");
    	var ids = [];
    	for(var i in sels){
    		ids.push(sels[i].id);
    	}
    	ids = ids.join(",");
    	return ids;
    }
    
    var toolbar = [{
        text:'新增',
        iconCls:'icon-add',
        handler:function(){
        	$("#userAddWindow").window("open");
        }
    },{
        text:'编辑',
        iconCls:'icon-edit',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		$.messager.alert('提示','必须选择一个项目才能编辑!');
        		return ;
        	}
        	if(ids.indexOf(',') > 0){
        		$.messager.alert('提示','只能选择一个项目');
        		return ;
        	}
        	
        	$("#userEditWindow").window({
        		onLoad :function(){
        			//回显数据
        			var data = $("#userList").datagrid("getSelections")[0];
        			$("#userEditForm").form("load",data);
        			        			
        			FWBLOG.init({
        				"pic" : data.pic,
        				fun:function(node){
        					FWBLOG.changeItemParam(node, "userEditForm");
        				}
        			});
        		}
        	}).window("open");
        }
    },{
        text:'删除',
        iconCls:'icon-cancel',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		$.messager.alert('提示','未选中项目');
        		return ;
        	}
        	$.messager.confirm('确认','确定删除ID为 '+ids+' 的项目吗？',function(r){
        	    if (r){
        	    	var params = {"ids":ids};
                	$.post("/user/delete",params, function(data){
            			if(data.status == 200){
            				$.messager.alert('提示','删除成功!',undefined,function(){
            					$("#userList").datagrid("reload");
            				});
            			}
            		});
        	    }
        	});
        }
    }];
</script>