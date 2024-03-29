<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ page isErrorPage="true" %>--%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <title>告警信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <jsp:include page="/globalstatic/easyui/head.jsp"></jsp:include>
    <script>
        //        $.fn.datagrid.defaults.view = $.extend({}, $.fn.datagrid.defaults.view, {
        //            renderRow: function (target, fields, frozen, rowIndex, rowData) {
        //                var opts = $.data(target, 'datagrid').options;
        //                var cc = [];
        //                if (frozen && opts.rownumbers) {
        //                    var rownumber = rowIndex + 1;
        //                    if (opts.pagination) {
        //                        rownumber += (opts.pageNumber - 1) * opts.pageSize;
        //                    }
        //                    cc.push('<td class="datagrid-td-rownumber"><div class="datagrid-cell-rownumber">' + rownumber + '</div></td>');
        //                }
        //                for (var i = 0; i < fields.length; i++) {
        //                    var field = fields[i];
        //                    var col = $(target).datagrid('getColumnOption', field);
        //                    var fieldSp = field.split(".");
        //                    var dta = rowData[fieldSp[0]];
        //                    for (var j = 1; j < fieldSp.length; j++) {
        //                        dta = dta[fieldSp[j]];
        //                    }
        //                    if (col) {
        //                        // get the cell style attribute
        //                        var styleValue = col.styler ? (col.styler(dta, rowData, rowIndex) || '') : '';
        //                        var style = col.hidden ? 'style="display:none;' + styleValue + '"' : (styleValue ? 'style="' + styleValue + '"' : '');
        //
        //                        cc.push('<td field="' + field + '" ' + style + '>');
        //
        //                        var style = 'width:' + (col.boxWidth) + 'px;';
        //                        style += 'text-align:' + (col.align || 'left') + ';';
        //                        style += opts.nowrap == false ? 'white-space:normal;' : '';
        //
        //                        cc.push('<div style="' + style + '" ');
        //                        if (col.checkbox) {
        //                            cc.push('class="datagrid-cell-check ');
        //                        } else {
        //                            cc.push('class="datagrid-cell ');
        //                        }
        //                        cc.push('">');
        //
        //                        if (col.checkbox) {
        //                            cc.push('<input type="checkbox"/>');
        //                        } else if (col.formatter) {
        //                            cc.push(col.formatter(dta, rowData, rowIndex));
        //                        } else {
        //                            cc.push(dta);
        //                        }
        //
        //                        cc.push('</div>');
        //                        cc.push('</td>');
        //                    }
        //                }
        //                return cc.join('');
        //            }
        //        });
        //        (function($){
        //            var buttonDir = {north:'down',south:'up',east:'left',west:'right'};
        //            $.extend($.fn.layout.paneldefaults,{
        //                onBeforeCollapse:function(){
        //                    /**/
        //                    var popts = $(this).panel('options');
        //                    var dir = popts.region;
        //                    var btnDir = buttonDir[dir];
        //                    if(!btnDir) return false;
        //                    setTimeout(function(){
        //                        var pDiv = $('.layout-button-'+btnDir).closest('.layout-expand').css({
        //                            textAlign:'center',lineHeight:'18px',fontWeight:'bold'
        //                        });
        //                        if(popts.title){
        //                            var vTitle = popts.title;
        //                            if(dir == "east" || dir == "west"){
        //                                var vTitle = popts.title.split('').join('<br/>');
        //                                pDiv.find('.panel-body').html(vTitle);
        //                            }else{
        //                                $('.layout-button-'+btnDir).closest('.layout-expand').find('.panel-title')
        //                                        .css({textAlign:'left'})
        //                                        .html(vTitle)
        //                            }
        //
        //                        }
        //                    },100);
        //                }
        //            });
        //        })(jQuery);
    </script>
    <style>
        .btn {
            padding: 2px 5px;
            margin: 2px;
        }
    </style>
</head>
<body style="margin:0;padding:0;overflow:hidden;">
<div class="easyui-layout" fit="true">
    <%--<div data-options="region:'west',width:240,border:true" title="区域">--%>
    <%--<ul id="treeregoin" class="ztree" style="margin-top:0; width:240px;"></ul>--%>
    <%--</div>--%>
    <%--<div data-options="region:'east',collapsible:true,collapsed:true,width:350,border:true" title="告警阀值定义">--%>
        <%--<table id="kpitable" class="easyui-datagrid" data-options="fit:true,pagination:false,singleSelect:true,fitColumns:true,--%>
        <%--toolbar:'#toolbarkpi',onLoadSuccess:loadsuccess,striped:true,url:'<%=request.getContextPath() %>/alarm/alarmkpilist.do'">--%>
            <%--<thead>--%>
            <%--<tr>--%>
                <%--<th data-options="field:'kpiname',width:150">指标名称--%>
                <%--</th>--%>
                <%--<th data-options="field:'alarmlevel',width:50,formatter:function(value,row,index){--%>
                                       <%--if(value==0){--%>
                                          <%--return '轻微'--%>
                                       <%--}--%>
                                       <%--if(value==1){--%>
                                          <%--return '一般 '--%>
                                       <%--}--%>
                                       <%--if(value==3){--%>
                                          <%--return '关键'--%>
                                       <%--}--%>
                                       <%--if(value==2){--%>
                                          <%--return '严重'--%>
                                       <%--}--%>
                                    <%--}">告警等级--%>
                <%--</th>--%>
                <%--<th data-options="field:'thresholdlowlimit',width:50">阀值下限</th>--%>
                <%--<th data-options="field:'thresholdlimit',width:50">阀值上限</th>--%>
                <%--<th data-options="field:'description',width:100">说明</th>--%>
            <%--</tr>--%>
            <%--</thead>--%>
        <%--</table>--%>
    <%--</div>--%>
    <div data-options="region:'center',border:false" style="padding-left: 2px;">
        <div class="easyui-layout" fit="true">
            <div data-options="region:'north',height:32,border:true">
                <div style="float: left;padding-left: 10px" id="toolbar"><span>查询条件：</span>
                    <input type="hidden" id="regionid" name="regionid"/>
                    <input name="keyword" class="easyui-textbox" type="text" prompt="告警信息关键字"/>
                    <span>告警时间从：</span><input name="starttime" class="easyui-datetimebox" type="text" prompt="告警时间">
                    <span>至</span>
                    <input name="endtime" class="easyui-datetimebox" type="text" prompt="告警时间">
                    <a id="ok" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>
                    <%--<a id="kpi" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">告警阀值定义</a>--%>
                </div>
            </div>
            <div data-options="region:'center',border:false" style="padding-left: 2px;">
                <div class="easyui-tabs" data-options="fit:true">
                    <div title="当前告警">
                        <div class="easyui-layout" fit="true">
                            <div data-options="region:'center',border:false" style="padding-right: 1px;">
                                <div id="table_alarm_curr">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div title="历史告警">
                        <div class="easyui-layout" fit="true">
                            <div data-options="region:'center',border:false" style="padding-right: 1px;">
                                <div id="table_alarm_his"></div>
                            </div>
                            <%--<div data-options="region:'south',border:false" title="设备告警" style="height: 50%;">--%>
                            <%--<table id="table_his_device" class="easyui-datagrid"--%>
                            <%--data-options="fit:true,rownumbers:true,pagination:true,singleSelect:true,--%>
                            <%--onLoadSuccess:loadsuccess,pageSize:15,pageList:[10,15,20,50],striped:true,--%>
                            <%--url:'<%=request.getContextPath() %>/alarm/list.do?type=1&alarmtype=0',  ">--%>
                            <%--<thead data-options="frozen:true">--%>
                            <%--<tr>--%>
                            <%--<th data-options="field:'alarmlevel',width:$(this).width()*0.05,formatter:function(value,row,index){--%>
                            <%--if(value==0){--%>
                            <%--return '<img title=\'一般\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/small.png\' />'--%>
                            <%--}--%>
                            <%--if(value==1){--%>
                            <%--return '<img title=\'重要\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level1.png\' />'--%>
                            <%--}--%>
                            <%--if(value==2){--%>
                            <%--return '<img title=\'严重\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level2.png\' />'--%>
                            <%--}--%>
                            <%--}">告警等级</th>--%>
                            <%--<th data-options="field:'alarmtype',width:$(this).width()*0.1,formatter:function(value,row,index){--%>
                            <%--if(value==0){--%>
                            <%--return '采集器告警'--%>
                            <%--}--%>
                            <%--if(value==1){--%>
                            <%--return '机房用能突变告警'--%>
                            <%--}--%>
                            <%--if(value==2){--%>
                            <%--return '机房PUE告警'--%>
                            <%--}--%>
                            <%--if(value==3){--%>
                            <%--return '机楼用能突变告警'--%>
                            <%--}--%>
                            <%--}">告警类别</th>--%>
                            <%--<th data-options="field:'alarmobjstr',width:$(this).width()*0.15">告警对象</th>--%>
                            <%--</tr>--%>
                            <%--</thead>--%>
                            <%--<thead>--%>
                            <%--<tr>--%>
                            <%--<th data-options="field:'alarminfo',width:$(this).width()*0.2,formatter:function(value,row,index){--%>
                            <%--var newvalue = new Array();--%>
                            <%--var vs = value.replace(/(.)(?=[^$])/g,'$1,').split(',');--%>
                            <%--$.each(vs,function(i,iteam){--%>
                            <%--if(i%15==0){--%>
                            <%--newvalue.push('</br>')--%>
                            <%--}--%>
                            <%--newvalue.push(iteam)--%>
                            <%--})--%>
                            <%--return '<span tyle=\'width:100px\' trackMouse=\'true\' class=\'easyui-tooltip\'title=\''+newvalue.join('')+'\'>'+value+'</span>'--%>
                            <%--}">告警信息</th>--%>
                            <%--<th data-options="field:'alarmtime',width:$(this).width()*0.12,align:''">告警时间</th>--%>
                            <%--<th data-options="field:'alarmsendflag',width:$(this).width()*0.05,formatter:function(value,row,index){--%>
                            <%--if(value==0){--%>
                            <%--return '未发送'--%>
                            <%--}--%>
                            <%--if(value==1){--%>
                            <%--return '已经发送'--%>
                            <%--}--%>
                            <%--if(value==2){--%>
                            <%--return '发送失败'--%>
                            <%--}--%>
                            <%--}">发送状态</th>--%>
                            <%--<th data-options="field:'alarmsendtime',width:$(this).width()*0.1,align:''">发送时间</th>--%>
                            <%--<th data-options="field:'resumetime',width:$(this).width()*0.1,align:''">告警恢复时间</th>--%>
                            <%--<th data-options="field:'resumeuser',width:$(this).width()*0.1,align:''">告警恢复人</th>--%>
                            <%--</tr>--%>
                            <%--</thead>--%>
                            <%--</table>--%>
                            <%--</div>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="toolbarkpi" style="height: 28px">
    <div style="float: left">
        <select class="easyui-combobox" name="alarmType" data-options="onChange:function(newValue, oldValue){
                    var paramstmp = {kpiid:newValue};
                    $('#kpitable').datagrid('options').queryParams=paramstmp;
                       $('#kpitable').datagrid('reload'); }">
            <option value="">所有</option>
            <c:forEach items="${kpis}" var="kpi">
                <option value="${kpi.kpiid}">${kpi.kpiname}</option>
            </c:forEach>
        </select>
        <a id="addkpi" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-add'">添加</a>
        <%--<a id="editkpi" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-edit'">修改</a>--%>
        <%--<a id="delkpi" href="javascript:void(0)" class="easyui-linkbutton" data-options="iconCls:'icon-remove'">删除</a>--%>
    </div>
</div>
<%--<script src="<%=request.getContextPath() %>/framework/bootstrap/js/jquery.ztree.all-3.5.min.js"></script>--%>
<%--<link href="<%=request.getContextPath() %>/framework/bootstrap/css/ztree/zTreeStyle.css" rel="stylesheet">--%>
<%--<script type="text/javascript" src="<%=request.getContextPath() %>/assets/js/global/plugins/tree.js"></script>--%>
<script type="text/javascript" language="JavaScript">
    var queryParams = {};
    <c:if test="${not empty objid}">
    queryParams.objid = ${objid};
    </c:if>
    function loadsuccess(data) {
//        $(".datagrid-cell").find('.easyui-linkbutton').each(function () {
//            $(this).linkbutton();
//        });
//        $(".datagrid-cell").find('.easyui-tooltip').each(function () {
//            $(this).tooltip();
//        });
//        $('#table').datagrid('fixRowHeight')
    }
    var $table_alarm_curr = $('#table_alarm_curr'), $table_alarm_his = $('#table_alarm_his'),
            $ok = $('#ok');
    function queryByPid(event, treeId, treeNode) {
        if (treeNode.children && treeNode.children.length > 0) {
            $("input[name='groupname']").val('');
            $("input[name='groupPid']").val(treeNode.id);
            refreshTable();
        }
    }
    function refreshTable() {
        var paramstmp = {};
        $('#toolbar').find('input[name]').each(function () {
            paramstmp[$(this).attr('name')] = $(this).val();
        });
        $table_alarm_curr.datagrid('options').queryParams = paramstmp;
        $table_alarm_curr.datagrid('reload');

        $table_alarm_his.datagrid('options').queryParams = paramstmp;
        $table_alarm_his.datagrid('reload');

    }
    function refreshKpiTable() {
        $("#kpitable").datagrid('reload');
    }
    $(function () {
        $ok.on('click', function () {
            refreshTable();
        });
        $(".sys_usergroup_add").on('click', function () {
            editRow(0, 0);
        });

        $("#addkpi").on("click", function () {
            editkpi(0);
        })
        $("#editkpi").on("click", function () {
            var row = $("#kpitable").datagrid("getSelected");
            if (!row) {
                top.layer.msg("没有选择要修改的指标");
                return;
            }
            editkpi(row.id);
        });
        $("#table_alarm_curr").datagrid({
            fit: true,
            rownumbers: true,
            pagination: true,
            singleSelect: true,
            onLoadSuccess: loadsuccess,
            pageSize: 15,
            queryParams: queryParams,
            pageList: [10, 15, 20, 50],
            striped: true,
            url: '<%=request.getContextPath() %>/alarm/list.do',
            frozenColumns: [[
                {
                    title: '告警等级',
                    field: 'alarmlevel',
                    width: 80,
                    formatter: function (value, row, index) {
                        if (value == 0) {
                            return '<img title=\'轻微\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/small.png\' />'
                        }
                        if (value == 1) {
                            return '<img title=\'一般\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level0.png\' />'
                        }
                        if (value == 2) {
                            return '<img title=\'严重\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level1.png\' />'
                        }else{
                            return '<img title=\'关键\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level2.png\' />'
                        }
                    }
                },
                {
                    title: '告警类别',
                    field: 'netKpibase',
                    width: 100,
                    formatter: function (value, row, index) {
                        return row.netKpibase.kpiname;
                    }
                },
                {
                    title: '告警对象',
                    field: 'objName',
                    width: 250,
                    formatter: function (value, row, index) {
                        if(row.objName.indexOf(":")>-1){
                            var infos = row.objName.split(":");
                            return infos[0]+"<span style='font-weight: bold'>["+infos[1]+"]</span>"
                        }else{
                            return value;
                        }
//                        if (row.portname) {
//                            return row.objName+":"+row.portname
//                        } else {
//                            return value;
//                        }
                    }
                }
            ]],
            columns: [[
                {
                    title: '告警信息',
                    field: 'alarminfo',
                    width: 300,
                    formatter: function (value, row, index) {
                        var newvalue = new Array();
                        var vs = value.replace(/(.)(?=[^$])/g, '$1,').split(',');
                        $.each(vs, function (i, iteam) {
                            if (i % 15 == 0) {
                                newvalue.push('</br>')
                            }
                            newvalue.push(iteam)
                        })
                        return '<span tyle=\'width:100px\' trackMouse=\'true\' class=\'easyui-tooltip\'title=\'' + newvalue.join('') + '\'>' + value + '</span>'
                    }
                },
                {
                    title: '告警时间', field: 'alarmtime', width: 200
                },
                {
                    title: '告警状态',
                    field: 'alarmsendflag',
                    width: $(this).width() * 0.05,
                    formatter: function (value, row, index) {
                        if (value == 0) {
                            return '未发送'
                        }
                        if (value == 1) {
                            return '已经发送'
                        }
                        if (value == 2) {
                            return '发送失败'
                        }
                    }
                }, {
                    title: '发送时间', field: 'alarmsendtime', width: 200
                },
                {
                    title: '操作', field: 'action', width: 200,    formatter: function (value, row, index) {
                        return '<a href="javascript:void(0)" onclick="deleteRow('+row.id+')" >确认</a>'
                }
                }
            ]]
        });
        $("#table_alarm_his").datagrid({
            fit: true,
            rownumbers: true,
            pagination: true,
            singleSelect: true,
            onLoadSuccess: loadsuccess,
            queryParams: queryParams,
            pageSize: 15,
            pageList: [10, 15, 20, 50],
            striped: true,
            url: '<%=request.getContextPath() %>/alarm/list.do?type=1',
            frozenColumns: [[
                {
                    title: '告警等级',
                    field: 'alarmlevel',
                    width: 80,
                    formatter: function (value, row, index) {
                        if (value == 0) {
                            return '<img title=\'轻微\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/small.png\' />'
                        }
                        if (value == 1) {
                            return '<img title=\'一般\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level0.png\' />'
                        }
                        if (value == 2) {
                            return '<img title=\'严重\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level1.png\' />'
                        }else{
                            return '<img title=\'关键\' style=\'height:20px;width:25px\' src=\'<%=request.getContextPath() %>/assets/images/alarmicon/level2.png\' />'
                        }
                    }
                },
                {
                    title: '告警类别',
                    field: 'netKpibase',
                    width: 100,
                    formatter: function (value, row, index) {
                        return row.netKpibase.kpiname;
                    }
                },
                {
                    title: '告警对象',
                    field: 'objName',
                    width: 200,
                    formatter: function (value, row, index) {
                        if(row.objName.indexOf(":")>-1){
                            var infos = row.objName.split(":");
                            return infos[0]+"<span style='font-weight: bold'>["+infos[1]+"]</span>"
                        }else{
                            return value;
                        }
                    }
                }
            ]],
            columns: [[
                {
                    title: '告警信息',
                    field: 'alarminfo',
                    width: 200,
                    formatter: function (value, row, index) {
                        var newvalue = new Array();
                        var vs = value.replace(/(.)(?=[^$])/g, '$1,').split(',');
                        $.each(vs, function (i, iteam) {
                            if (i % 15 == 0) {
                                newvalue.push('</br>')
                            }
                            newvalue.push(iteam)
                        })
                        return '<span tyle=\'width:100px\' trackMouse=\'true\' class=\'easyui-tooltip\'title=\'' + newvalue.join('') + '\'>' + value + '</span>'
                    }
                },
                {
                    title: '告警时间', field: 'alarmtime', width: 200
                },
                {
                    title: '告警状态',
                    field: 'alarmsendflag',
                    width: $(this).width() * 0.05,
                    formatter: function (value, row, index) {
                        if (value == 0) {
                            return '未发送'
                        }
                        if (value == 1) {
                            return '已经发送'
                        }
                        if (value == 2) {
                            return '发送失败'
                        }
                    }
                }, {
                    title: '发送时间', field: 'alarmsendtime', width: 200
                }, {
                    title: '告警恢复时间', field: 'resumetime', width: 200
                }, {
                    title: '告警恢复人', field: 'resumeuser', width: 200
                }
            ]]
        })
    });
    function editkpi(id) {
        var url = contextPath + "/alarm/editkpi.do?id=" + id;
        top.layer.open({
            type: 2,
            area: ["500px", "350px"],
            title: "指标信息编辑",
            maxmin: true, //开启最大化最小化按钮
            content: url,
            btn: ['确定', '关闭'],
            success: function (layero, index) {
                var name = layero.find('iframe')[0].name;
                top.winref[name] = window.name;
            },
            yes: function (index, layero) {
                var body = top.layer.getChildFrame('body', index);
                var iframeWin = layero.find('iframe')[0]; // 得到iframe页的窗口对象，执行 iframe 页的方法：iframeWin.method();
                iframeWin.contentWindow.doSubmit(function (data) {
                    $("#kpitable").datagrid("reload");
                    top.layer.msg("保存成功")
                    top.layer.close(index);
                })
            }
        });
    }
    function editRow(groupid, pid) {
        var url = contextPath + "/usergroup/form.do";
        if (groupid != 0) {//修改
            url += "?groupid=" + groupid;

        } else {//添加
            if (pid != 0)
                url += "?pid=" + pid;
        }
        top.layer.open({
            type: 2,
            title: '用户组信息',
            maxmin: true,
            id: 'groupwin', //设定一个id，防止重复弹出
            closeBtn: 1,
            area: ['500px', '300px'],
            content: url
        });
    }
    function refTree() {
        var treeObj = $.fn.zTree.getZTreeObj("treegroup");
        treeObj.reAsyncChildNodes(null, "refresh");
    }
    function deleteRow(id) {
        top.layer.msg('确认处理该告警？', {
            time: 0, //不自动关闭
            btn: ['确认', '取消'],
            yes: function (index) {
                $.getJSON(contextPath + "/alarm/delete.do?id=" + id, function (data) {
                    if (data.state) {
                        top.layer.msg('确认成功');
                        refreshTable();
                    } else {
                        top.layer.msg(data.msg);
                    }
                });
            },
            no: function (index) {
                layer.close(index);
            }
        });
    }

    /***
     *角色绑定
     * @param id
     */
    function bindRole(id) {
        top.layer.open({
            type: 2,
            title: '组-角色分配',
            maxmin: true,
            id: 'bindwin', //设定一个id，防止重复弹出
            closeBtn: 1,
            area: ['600px', '450px'],
            content: contextPath + "/bindlink.do?type=g_r&id=" + id
        })
    }
    function formmataction(value, row, index) {
        var insert = new Array();
        <sec:authorize access="hasAnyRole('ROLE_sys_alarm_del','ROLE_admin')">
        insert.push('<a class="easyui-linkbutton " data-options="plain:true,iconCls:\'icon-edit\'" onclick="deleteRow(' + row.id + ')">确认告警</a> ');
        </sec:authorize>
        return insert.join('');
    }
</script>
</body>

</html>