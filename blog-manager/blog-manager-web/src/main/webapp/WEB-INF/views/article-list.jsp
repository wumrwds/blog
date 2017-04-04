<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<table class="easyui-datagrid" id="articleList" title="文章列表" 
       data-options="singleSelect:false,collapsible:true,pagination:true,url:'/article/list',method:'get',pageSize:30,toolbar:toolbar">
    <thead>
        <tr>
        	<th data-options="field:'ck',checkbox:true"></th>
        	<th data-options="field:'id',width:100">文章ID</th>
            <th data-options="field:'title',width:245,align:'center'">文章标题</th>
            <th data-options="field:'loginName',width:90">创建用户</th>
            <th data-options="field:'categoryName',width:75">所属类目</th>
            <th data-options="field:'contentShort',width:300,align:'center'">文章内容</th>
            <th data-options="field:'created',width:125,align:'center',formatter:FWBLOG.formatDateTime">创建日期</th>
            <th data-options="field:'updated',width:125,align:'center',formatter:FWBLOG.formatDateTime">更新日期</th>
        </tr>
    </thead>
</table>
<div id="articleAddWindow" class="easyui-window" title="添加文章" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/article-add'" style="width:80%;height:80%;padding:10px;">
<div id="articleEditWindow" class="easyui-window" title="编辑文章" data-options="modal:true,closed:true,iconCls:'icon-save',href:'/article-edit'" style="width:80%;height:80%;padding:10px;">
</div>
<script>

    function getSelectionsIds(){
    	var articleList = $("#articleList");
    	var sels = articleList.datagrid("getSelections");
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
        	$("#articleAddWindow").window("open");
        }
    },{
        text:'编辑',
        iconCls:'icon-edit',
        handler:function(){
        	var ids = getSelectionsIds();
        	if(ids.length == 0){
        		$.messager.alert('提示','必须选择一篇文章才能编辑!');
        		return ;
        	}
        	if(ids.indexOf(',') > 0){
        		$.messager.alert('提示','只能选择一篇文章');
        		return ;
        	}
        	
        	$("#articleEditWindow").window({
        		onLoad :function(){
        			//回显数据
        			var data = $("#articleList").datagrid("getSelections")[0];
        			$("#articleEditForm").form("load",data);
        			
        			// 回显用户名及所属类别
        			$(".helpReview:first").text(data.loginName);
        			$(".helpReview:last").text(data.categoryName);
        			
        			// 加载商品描述
        			$.getJSON('/article/detail/'+data.id,function(_data){
        				if(_data.status == 200){
        					//UM.getEditor('itemeEditDescEditor').setContent(_data.data.itemDesc, false);
        					itemEditEditor.html(_data.data.content);
        				}
        			});
        			
        			FWBLOG.init({
        				"pics" : data.image,
        				"cid" : data.cid,
        				fun:function(node){
        					FWBLOG.changeItemParam(node, "articleEditForm");
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
                	$.post("/article/delete",params, function(data){
            			if(data.status == 200){
            				$.messager.alert('提示','删除成功!',undefined,function(){
            					$("#articleList").datagrid("reload");
            				});
            			}
            		});
        	    }
        	});
        }
    }];
</script>