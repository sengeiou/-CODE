<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="jbpm" uri="http://jbpm.idc.tag.cn/" %>
<%@ taglib prefix="jbpmSecurity" uri="http://jbpmSecurity.idc.tag.cn/" %>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <jsp:include page="/globalstatic/easyui/head.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/framework/jeasyui/jquery-easyui-1.5/themes/custom/uimaker/css/basic_info.css"/>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/framework/checkbox/skin/style/css/checkbox.css" />
    <script type="application/javascript" src="<%=request.getContextPath() %>/framework/checkbox/js/checkbox.js" ></script>
    <script type="application/javascript" src="<%=request.getContextPath() %>/js/jbpm/ticket/datagrid-detailview.js" ></script>

    <!-- 引用 -->
    <title>资源上架</title>
</head>
<style type="text/css">

    .fieldsetCls{
        border-color: #eee !important;
    }

    .fieldsetCls > *{
        /*增加border变色*/
        color: #1e1e1e !important;
    }
    .textbox .textbox-button, .textbox .textbox-button:hover{
        right: 0;
    }
    .forcePanel_HeightCls{
        height: 182px;
        margin-bottom: 8px;
        border-bottom: 1px solid #ddd;
    }
    .tip_float_right_info{
        position: absolute;
        right: 10px;
        top:1px;
        z-index: 999;
    }
</style>
<body style="background-color: #e9f6fa">
<div class="tip_float_right_info" style="height:23px;line-height:24px;width: 525px;">
    <marquee direction="left"onmouseover="this.stop();" onmouseout="this.start();" onstart="this.firstChild.innerHTML+=this.firstChild.innerHTML;" scrollamount="20" scrolldelay="500" behavior="SCROLL" hspace="0" vspace="0" loop="INFINITE">
        <span style="color: #006107">当前活动节点:<span style="color: blue;">${actName}</span>;工单号:<span style="color: blue;">${serialNumber}</span>;请先按照申请要求配置相应的资源信息...</span>
    </marquee>
</div>
<!--  tabs布局  -->
<div id="jbpmApply_tabs" class="easyui-tabs" fit="true">
    <div title="客户信息" style="padding:10px;display:none;">
        <jbpm:jbpmTag module="TICKET_RECUSTOMER" item="${idcReCustomer}" ticketInstId="${ticketInstId}"></jbpm:jbpmTag>
    </div>
    <div title="客户需求" data-options="closable:false" style="overflow:auto;padding:10px;display:none;">
        <jbpm:jbpmTag  module="TICKET_PRODUCET_INFO" item="${idcReProduct}" ticketItem="${idcRunTicket}"   category="${category}"></jbpm:jbpmTag>
        <!-- 订单基本模块配置  -->
        <jbpm:jbpmTag module="TICKET_PRODUCET_MODULE" item="${serviceApplyImgStatus}"></jbpm:jbpmTag>
    </div>
    <div title="流程图" data-options="closable:false" style="overflow:auto;padding:10px;display:none;">
        <!-- 加载流程图 -->
        <jbpm:jbpmTag module="ACTIVITI_DIAGRAM" processInstanceId="${processInstanceId}" processDefinitionId="${processDefinitionId}" ></jbpm:jbpmTag>

    </div>

    <!-- 资源分配 start -->
    <jbpmSecurity:security module="TICKET_RESOURCE_MODULE" moreThan="1" item="${serviceApplyImgStatus}">
        <!-- 只有有资源申请就可以分配 -->
    <div title="资源分配" data-options="closable:false" style="overflow:auto;padding:10px;display:none;">
        <iframe id="downloadFile" src="" style="display: none"></iframe>
        <!-- 【附件列表信息】 -->
        <jbpm:jbpmTag module="TICKET_ATTACHMENT" count="${ticketAttachCount}" gridId="ticketAttachmentGridId" prodInstId="${prodInstId}" title="工单附件列表"  maxHeight="150" toolbar="ticketAttachmentBbar" ticketInstId="${ticketInstId}" isShowGridColumnHandlerFlag="${isShowGridColumnHandlerFlag}"></jbpm:jbpmTag>

        <!-- 机架机位 start -->
            <div style="padding: 5px;" id="requestParamSettins_ticket_rack_gridId">
                机架名称: <input class="easyui-textbox"  id="rackName_params" style="width:100px;text-align: left;" data-options="">
                <!-- 选择机架 -->
                <a href="javascript:void(0);" onclick="easyuiRefreshGridByChoice('rack')" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
                <%--测试流程用的--%>
                <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="preRackChoiceOperate('ticket_rack_gridId','${ticketInstId}','${prodInstId}')">选择机架</a>
            </div>
            <table class="easyui-datagrid" id="ticket_rack_gridId"></table>

            <div style="padding: 5px;" id="requestParamSettins_ticket_rackmcb_gridId">
                MCB: <input class="easyui-textbox"  id="rackmcbName_params" style="width:100px;text-align: left;" data-options="">
                <a href="javascript:void(0);" onclick="easyuiRefreshGridByChoice('mcb')" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
            </div>
            <table class="easyui-datagrid" id="ticket_rackmcb_gridId"></table>
        <!-- 机架机位 end -->
        <!-- 端口带宽 start -->
        <jbpmSecurity:security module="SIMPLE_MODULE" hasSecurity="${serviceApplyImgStatus.port}">
        <div style="padding: 5px;" id="requestParamSettins_ticket_port_gridId">
            名称: <input class="easyui-textbox"  id="portName_params" style="width:100px;text-align: left;" data-options="">
            <a href="javascript:void(0);" onclick="easyuiRefreshGridByChoice('port')" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="rackOrUnitOrMcbOrPortOrIpChoiceOperate('200','','port','')">选择带宽端口</a>
            <span style="color:red">申请带宽端口个数为: ${PORT_NUM} 个</span>
        </div>
        <table class="easyui-datagrid" id="ticket_port_gridId"></table>
        </jbpmSecurity:security>
        <!-- 端口带宽 end -->
        <!-- ip租用 start -->
        <jbpmSecurity:security module="SIMPLE_MODULE" hasSecurity="${serviceApplyImgStatus.ip}">
        <div style="padding: 5px;" id="requestParamSettins_ticket_ip_gridId">
            名称: <input class="easyui-textbox"  id="ipName_params" style="width:100px;text-align: left;" data-options="">
            <a href="javascript:void(0);" onclick="easyuiRefreshGridByChoice('ip')" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
            <%--测试流程用的--%>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="rackOrUnitOrMcbOrPortOrIpChoiceOperate('300','','ip','')">选择IP</a>
            <span style="color:red">申请IP个数为: ${IP_NUM} 个</span>
        </div>
        <table class="easyui-datagrid" id="ticket_ip_gridId"></table>
        </jbpmSecurity:security>
        <!-- ip租用 end -->
        <!-- 主机租赁 start -->
        <jbpmSecurity:security module="SIMPLE_MODULE" hasSecurity="${serviceApplyImgStatus.server}">
        <div style="padding: 5px;" id="requestParamSettins_ticket_server_gridId">
            主机名称: <input class="easyui-textbox"  id="serverName_params" style="width:100px;text-align: left;" data-options="">
            <a href="javascript:void(0);" onclick="easyuiRefreshGridByChoice('server')" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
            <%--测试流程用的--%>
            <a href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true" onclick="preServerChoiceOperate('ticket_server_gridId')">选择</a>
            <span style="color:red">申请主机数为: ${SERVER_NUM} 台</span>
        </div>
        <table class="easyui-datagrid" id="ticket_server_gridId"></table>
        </jbpmSecurity:security>

    </div>
    </jbpmSecurity:security>

    <!-- 资源分配 end -->
    <div title="审批" data-options="closable:false" style="overflow:auto;padding:10px;display:none;">
        <div id="apply_info_layout" class="easyui-layout"  fit="true">
            <div data-options="region:'north',title:'历史审批...'" style="height:200px;">
                <jbpm:jbpmTag module="HIS_TICKET_COMMENT" is_author_apply_show="true" prodInstId="${prodInstId}" ticketInstId="${ticketInstId}" ></jbpm:jbpmTag>
            </div>
            <div data-options="region:'center'" style="padding:2px;">
                <form method="post" id="singleForm" action="<%=request.getContextPath() %>/actJBPMController/procCmentFormSaveOrUpdate.do">
                    <table class="kv-table">
                        <tr style="display: none !important;">
                                <!-- 隐藏的属性 -->
                                <input name="id" id="idcRunProcCment_id" type="hidden" value="${idcRunProcCment.id}">
                                <!-- 工单实例 -->
                                <input name="ticketInstId" id="ticketInstId_param" type="hidden" value="${ticketInstId}"><input name="is_author_apply_show" id="is_author_apply_show" type="hidden" value="${is_author_apply_show}">
                                <!-- 订单实例 -->
                                <input name="prodInstId" id="prodInstId_param" type="hidden" value="${prodInstId}"><input  id="category_param" type="hidden" value="${category}">
                                <!-- 流程实例定义的KEY -->
                                <input name="processDefinitionKey" type="hidden" value="${processDefinitionKey}" id="processDefinitionKey">
                                <!-- 流程实例 -->
                                <input name="procInstId" type="hidden" value="${processInstanceId}">
                                <!-- formKey -->
                                <input name="formKey" type="hidden" value="${formKey}">
                                <!-- 执行实例 -->
                                <input name="executionid" type="hidden" value="${processInstanceId}">
                                <!-- 任务ID -->
                                <input name="taskId" type="hidden" value="${taskid}">
                                <!-- 申请人ID -->
                                <input name="authorId" type="hidden" value="${authorId}">
                                <!-- 控制操作列的显示与否 -->
                                <input id="isShowGridColumnHandlerFlag" type="hidden" value="true">
                                <input name="idcReRackModel_rackOrracunit" id="idcReRackModel_rackOrracunit" type="hidden" value="66002">
                                <input type="hidden" value="100" name="category" />
                        </tr>
                        <tr>
                            <td class="kv-label"style="width:100px">申请人名称</td>
                            <td class="kv-content">
                                <input class="easyui-textbox" data-options="required:true,width:420" readonly="readonly" value="${author}" name="author"/>
                                <input name="status" id="idcRunProcCment_status_stand" value="<c:if test="${empty idcRunProcCment.status}">1</c:if><c:if test="${not empty idcRunProcCment.status}">${idcRunProcCment.status}</c:if>" type="hidden"/>

                            </td>
                        </tr>

                        <tr>
                            <td class="kv-label"style="width:100px" >勘察描述<span style="color:red">&nbsp;*</span></td>
                            <td class="kv-content">
                                <input class="easyui-textbox" data-options="required:true,width:420,height:100,multiline:true" name="comment" value="${idcRunProcCment.comment}"  data-options="validType:'length[0,255]'"/>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
    <iframe id="downloadFile" src="" style="display: none"></iframe>
</div>
</body>
<script type="text/javascript">
    try {
        var rack = "true" || null;
        var port = "true"||null;
        var ip = "true"||null;
        var server = "true"||null;
        //var add = "${serviceApplyImgStatus.add}"||null;

        if(rack && rack == "true"){
            //被选中
            $("#rack_check").addClass("on_check_disabled");
        }else{
            $("#rack_check").addClass("disabled_not_check");
        }

        if(port && port == "true"){
            $("#port_check").addClass("on_check_disabled");
        }else{
            $("#port_check").addClass("disabled_not_check");
        }
        if(ip && ip == "true"){
            $("#ip_check").addClass("on_check_disabled");
        }else{
            $("#ip_check").addClass("disabled_not_check");
        }
        if(server && server == "true"){
            $("#server_check").addClass("on_check_disabled");
        }else{
            $("#server_check").addClass("disabled_not_check");
        }
        if(add && add == "true"){
            $("#add_check").addClass("on_check_disabled");
        }else{
            $("#add_check").addClass("disabled_not_check");
        }
    }catch(err) {
        console.log(err)
    }finally {

    }
    function downLoadAttach(id){
        $("#downloadFile").attr("src",contextPath+"/assetAttachmentinfoController/downLoadFile/"+id);
    }

    $(function(){
        //针对于审批提交状态设置
        var status_res = '${idcRunProcCment.status}';
        $("input[name='idcRunProcCment_status']").each(function(){
            var val = this.value;
            if(val == status_res){
                $(this).parents(".checkbackgrd").removeClass("on_not_check").addClass("on_check");
            }
        })
    });

    /**
     * 类别
     * @param category
     */
    function serviceApplyImgStatusOnclick(category){
        alert("设置300被选中");
        $("#serviceApplyImgStatus300")
    }
    /*提交表单情况*/
    function form_sbmt(grid,jbpmFunFlag){
        $("#idcRunProcCment_status_stand").val(1);
        if(jbpmFunFlag && jbpmFunFlag == 'rejectJbpm'){
            $("#idcRunProcCment_status_stand").val(0);//驳回情况
        }else{
            if("${rackOrracunit}" == '66002'){
                //按照机位选择
                var isHaveUnitNotSettingRack= findRackIsHaveUnit();
                if(isHaveUnitNotSettingRack)return false;
            }
        }
        $("#singleForm").form('submit', {
            url:contextPath+"/actJBPMController/procCmentFormSaveOrUpdate.do",
            onSubmit: function(){
                if(!$("#singleForm").form("validate")){
                    //验证未通过
                    top.layer.msg('验证未通过', {
                        icon: 2,
                        time: 3000 //（默认是3秒）
                    });
                    $("#jbpmApply_tabs").tabs("select","审批");
                    return false;
                }
                /*如果服务都没有  则不需要提交流程 */
                if(!(rack && rack=='true' ||
                    port && port == 'true'||
                    ip && ip == 'true'||
                    server && server == 'true')){
                    top.layer.msg('至少需要一个服务项', {
                        icon: 2,
                        time: 3000 //（默认是3秒）
                    });
                    return false;
                }

            },
            success:function(data){
                //然后修改下一个form
                var obj = jQuery.parseJSON(data);
                top.layer.msg(obj.msg, {
                    icon: 1,
                    time: 3000 //3秒关闭（如果不配置，默认是3秒）
                });
                var parentIndex = parent.layer.getFrameIndex("jbpmApplyWinId");//获取了父窗口的索引
                parent.layer.close(parentIndex);  // 关闭layer
                grid.datagrid("reload");
            }
        });
    }
    function getRackORRacunitOrMCBSetting(){
        var obj = {};
        obj['rackOrracunit'] = '${rackOrracunit}';
        obj['ticketInstId'] = '${ticketInstId}';
        obj['prodInstId'] = '${prodInstId}';
        obj['category'] = '${category}';
        return obj;
    }
    /* 具有的有关资源类型组合 */
    function getTicketResourceCategory(){
        var obj = {};
        obj['rack'] = rack;
        obj['port'] = port;
        obj['ip'] = ip;
        obj['server'] = server;
        obj['add'] = add;
        return obj;
    }
</script>
<script src="<%=request.getContextPath() %>/js/jbpm/ticket/ticketRackResourceGrid.js"></script>
<%--<script src="<%=request.getContextPath() %>/js/jbpm/ticket/ticketHisCommentQuery.js"></script>--%>
<script src="<%=request.getContextPath() %>/js/jbpm/ticket/runCommon.js"></script>
<script src="<%=request.getContextPath() %>/js/jbpm/attachment/resourceAttachment.js"></script>
</html>