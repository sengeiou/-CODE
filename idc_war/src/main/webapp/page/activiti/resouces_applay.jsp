<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/globalstatic/easyui/head.jsp"%>
<div class="easyui-layout" fit="true">
<div region="center" style="padding: 1px;">
<div>
	<!-- 资源申请 -->
	
</div>
<table id="processList" style="width: 700px; height: 300px">
	<thead>
		<tr>
			<th field="id" hidden="hidden">编号</th>
			<th field="processDefinitionId" width="50">ProcessDefinitionId</th>
			<th field="deploymentId" width="50">DeploymentId</th>
			<th field="name" width="50">流程名称</th>
			<th field="key" width="50">KEY</th>
			<th field="version" width="20">版本</th>
			<th field="xml" width="50">流程文件</th>
			<th field="image" width="50">流程图片</th>
			<th field="isSuspended" width="50">是否挂起</th>
			<th field="opt" width="50">操作</th>
		</tr>
	</thead>
</table>

<script type="text/javascript">
		//查看流程xml或流程图片
		function readProcessResouce(processDefinitionId,resourceType) {
			var url = "";
			var title = "";
			if(resourceType == "xml"){
				title = "查看流程文件";
				url = contextPath+"/activiti/resourceRead.do?processDefinitionId="+processDefinitionId+"&resourceType=xml&isIframe"
			}

			if(resourceType == "image"){
				title = "查看流程图片";
				url = contextPath+"/activiti/resourceRead.do?processDefinitionId="+processDefinitionId+"&resourceType=image&isIframe"
			}
			//弹出框形式
        	  layer.open({
				  type: 2,
				  title: title,
				  shadeClose: false,
				  shade: 0.8,
				  btn: ['关闭'],
                  maxmin : true,
				  area: ['600px', '500px'],
				  content: url ,//iframe的url
				  /*弹出框*/
				  cancel: function(index, layero){ 
				    //右上角关闭回调
				    layer.close(index);
				  },yes: function(index, layero){
				    layer.close(index)
				  },no: function(index, layero){
					  //按钮【按钮一】的回调
					  layer.close(index)
				  }
				}); 
		}
		
	    // 编辑初始化数据
		function getData(data){
			var rows = [];			
			var total = data.total;
			for(var i=0; i<data.rows.length; i++){
				rows.push({
					id: data.rows[i].id,
					processDefinitionId: data.rows[i].processDefinitionId,
					deploymentId: data.rows[i].deploymentId,
					name: data.rows[i].name,
					key: data.rows[i].key,
					version: data.rows[i].version,
					xml: "[<a href=\"#\" onclick=\"readProcessResouce('"+data.rows[i].processDefinitionId+"','xml')\">查看流程xml</a>]",
					image: "[<a href=\"#\" onclick=\"readProcessResouce('"+data.rows[i].processDefinitionId+"','image')\">查看流程图片</a>]",
					isSuspended: data.rows[i].isSuspended,
					opt: "[<a href=\"#\" onclick=\"delObj('activitiController.do?del&deploymentId="+data.rows[i].deploymentId+"','processList')\">删除流程</a>]"
				});
			}
			var newData={"total":total,"rows":rows};
			return newData;
		}
	    // 刷新
	    function reloadTable(){
	    	$('#processList').datagrid('reload');
	    }
	    
		// 设置datagrid属性
		$('#processList').datagrid({
			title: '流程定义及部署管理',
	        idField: 'id',
	        fit:true,
	        loadMsg: '数据加载中...',
	        pageSize: 10,
	        pagination:true,
	        sortOrder:'asc',
	        rownumbers:true,
	        singleSelect:true,
	        fitColumns:true,
	        showFooter:true,
	        url:contextPath+'/activiti/datagrid.do',  
	        loadFilter: function(data){
	        	return getData(data);
	    	}
	        
	    }); 
	    //设置分页控件  
	    $('#processList').datagrid('getPager').pagination({  
	        pageSize: 10,  
	        pageList: [10,20,30],  
	        beforePageText: '',  
	        afterPageText: '/{pages}',
	        displayMsg: '{from}-{to}共{total}条',
	        showPageList:true,
	        showRefresh:true,
	        onBeforeRefresh:function(pageNumber, pageSize){
	            $(this).pagination('loading');
	            $(this).pagination('loaded');
	        }
	    });
	</script></div>
</div>