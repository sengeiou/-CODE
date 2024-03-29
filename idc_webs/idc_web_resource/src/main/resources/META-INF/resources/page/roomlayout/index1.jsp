<%--
  Created by IntelliJ IDEA.
  User: mylove
  Date: 2017/5/24
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/globalstatic/easyui/head.jsp"></jsp:include>
    <link href="<%=request.getContextPath() %>/js/roomlayout/css/bootstrap.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/js/roomlayout/css/bootstrap-responsive.css" type="text/css" rel="stylesheet" />
    <link id="flowPath" href="<%=request.getContextPath() %>/js/roomlayout/css/editor.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/js/roomlayout/css/jquery.alerts.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/js/roomlayout/css/header.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/js/roomlayout/css/main_topology.css" type="text/css" rel="stylesheet" />
    <link href="<%=request.getContextPath() %>/js/roomlayout/css/jquery.ipinput.css" type="text/css" rel="stylesheet"/>
    <STYLE>
        .tp_table td{
            padding:10px 0;
        }
        v\:*{behavior:url(#default#VML);}
    </STYLE>
</head>

<body  class="easyui-layout bodySelectNone" id="body" onselectstart="return false">
<div id="title" region="north" split="false" border="false" class="titleTool" style="background: #f1f1f1;">
    <div id="header" class="navbar">
        <div class="navbar-inner">
            <!-- logo -->
            <a class="brand hidden-phone" style="float:left;" href="index.html">机房平面图</a>
            <div style="float:right; margin:7px 10px 0 0;">
                <!--<input id="queryText">-->
                <!--<img alt="合并" title="合并" width="24" height="24" src="images/topology/merge.fw.png" onClick="editor.utils.toMerge()" class="buttonStyle" />-->
                <!--<img alt="拆分" title="拆分" width="24" height="24" src="images/topology/split.fw.png" onClick="editor.utils.toSplit()" class="buttonStyle"/>-->
                <!--<img alt="全屏查看"	title="全屏查看" width="24" height="24" src="images/topology/fullScreenView.png" onClick="editor.utils.showInFullScreen(editor.stage.canvas,'RequestFullScreen');" class="buttonStyle"/>-->
                <!--<img alt="居中显示"	title="居中显示" width="24" height="24" src="images/topology/toMiddleWidth.fw.png" onClick="editor.utils.showInCenter()" class="buttonStyle"/>-->
                <img alt="预览"	title="预览" width="24" height="24" src="images/topology/preview.fw.png" onClick="editor.utils.showPic();" class="buttonStyle"/>
                <!--<img alt="保存"	title="保存" width="24" height="24" src="images/topology/save.fw.png" onClick="editor.saveToplogy(true)" class="buttonStyle"/>-->
                <!--<img alt="复制"	title="复制" width="24" height="24" src="images/topology/copy.fw.png" onClick="editor.utils.cloneSelectedNodes()" class="buttonStyle"/>-->
                <img alt="删除"	title="删除" width="24" height="24" src="images/topology/delete.fw.png" onClick="editor.utils.deleteSelectedNodes();" class="buttonStyle"/>
                <img alt="清空"	title="清空" width="24" height="24" src="images/topology/trash.fw.png" onClick="editor.utils.clear();" class="buttonStyle"/>
                <img alt="放大"	title="放大" width="24" height="24" src="images/topology/zoomBig.png" onclick="editor.utils.scalingBig()" class="buttonStyle"/>
                <img alt="缩小"   title="缩小" width="24" height="24" src="images/topology/zoomSmall.png"  onclick="editor.utils.scalingSmall()" class="buttonStyle"/>
                <img alt="重做"	title="重做" width="24" height="24" src="images/topology/next.fw.png" onClick="editor.utils.reMakeNodeAction()" class="buttonStyle"/>
            </div>

        </div>
    </div>


</div>
<%--<div id="leftContent" region="west" split="true" title="模型区" class="leftContent">--%>

    <%--<div class="easyui-accordion overflowHidden" fit="true" border="false">--%>

        <%--<!--<div title="连线" style="background-color:#FFFFFF;" id="basicGraph">-->--%>

        <%--<!--<table class="tp_table" width="100%">-->--%>
        <%--<!--<tr><td width="100%" align="center" >-->--%>
        <%--<!--<div id="baseLine1" divType="baseMode" gtype="L" datatype="line" draggable="false" onclick="editor.lineType='line'">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img  id="simpleLine" name="backGroundImg" src="images/jijia.png" class="nodeStyle" />-->--%>
        <%--<!--<br><span></span>-->--%>
        <%--<!--</div>-->--%>
        <%--<!--</td></tr>-->--%>

        <%--<!--<tr><td width="100%" align="center" >-->--%>
        <%--<!--<div id="baseLine2" divType="baseMode" gtype="L" datatype="foldLine" draggable="false" onclick="editor.lineType='foldLine';editor.config.direction='horizontal';">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img id="foldLineH" name="backGroundImg" src="images/3t.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>折线(横向)</span>-->--%>
        <%--<!--</div>-->--%>
        <%--<!--</td></tr>-->--%>

        <%--<!--<tr><td width="100%" align="center" >-->--%>
        <%--<!--<div id="baseLine5" divType="baseMode" gtype="L" datatype="foldLine" draggable="false" onclick="editor.lineType='foldLine';editor.config.direction='vertical';">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img id="foldLineV" name="backGroundImg" src="images/3th.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>折线(纵向)</span>-->--%>
        <%--<!--</div>-->--%>
        <%--<!--</td></tr>-->--%>

        <%--<!--<tr><td width="100%" align="center" >-->--%>
        <%--<!--<div id="baseLine3" divType="baseMode" gtype="L" datatype="foldLine" draggable="false" onclick="editor.lineType='flexLine';editor.config.direction='horizontal';">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img id="flexLineH" name="backGroundImg" src="images/1th.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>二次折线(横向)</span>-->--%>
        <%--<!--</div>-->--%>
        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center" >-->--%>
        <%--<!--<div id="baseLine4" divType="baseMode" gtype="L" datatype="foldLine" draggable="false" onclick="editor.lineType='flexLine';editor.config.direction='vertical';">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img id="flexLineV" name="backGroundImg" src="images/1t.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>二次折线(纵向)</span>-->--%>
        <%--<!--</div>-->--%>
        <%--<!--</td></tr>-->--%>
        <%--<!--</table>-->--%>
        <%--<!--</div>-->--%>
        <%--<div title="虚拟网络设备" class="flowImag" style="background-color:#FFFFFF;">--%>
            <%--<table class="tp_table" width="100%" >--%>
                <%--<tr><td width="100%" align="center">--%>
                    <%--<div id="ExtChange" divType="mode" datatype="EC" draggable="true">--%>
                        <%--<div class="title">&nbsp;</div>--%>
                        <%--<img name="backGroundImg" src="icon/jijia.png" class="nodeStyle"/>--%>
                        <%--<br><span>机架</span>--%>
                    <%--</div>--%>

                <%--</td></tr>--%>
                <%--<tr><td width="100%" align="center">--%>
                    <%--<div id="Router" divType="mode" datatype="VR" draggable="true" title="使用基于CloudStack提供VR功能">--%>
                        <%--<div class="title">&nbsp;</div>--%>
                        <%--<img name="backGroundImg" src="icon/tpIcon_9.png" class="nodeStyle"/>--%>
                        <%--<br><span>通风口</span>--%>
                    <%--</div>--%>

                <%--</td></tr>--%>
                <%--<tr><td width="100%" align="center">--%>
                    <%--<div id="SelfExtChange" divType="mode" datatype="ECVR" draggable="true" title="使用一台VM主机安装多个网卡进行子网的互通，充当路由控制器">--%>
                        <%--<div class="title">&nbsp;</div>--%>
                        <%--<img name="backGroundImg" src="icon/vr-selfdefined.png" class="nodeStyle"/>--%>
                        <%--<br><span>门</span>--%>
                    <%--</div>--%>

                <%--</td></tr>--%>
                <%--<tr><td width="100%" align="center">--%>
                    <%--<div id="Firewall" divType="mode" datatype="FW" draggable="true">--%>
                        <%--<div class="title">&nbsp;</div>--%>
                        <%--<img name="backGroundImg" src="icon/tpIcon_4.png" class="nodeStyle"/>--%>
                        <%--<br><span>房柱</span>--%>
                    <%--</div>--%>

                <%--</td></tr>--%>
                <%--<!--<tr><td width="100%" align="center">-->--%>
                <%--<!--<div id="f5" divType="mode" datatype="f5" draggable="true">-->--%>
                <%--<!--<div class="title">&nbsp;</div>-->--%>
                <%--<!--<img name="backGroundImg" src="icon/f5.png" class="nodeStyle"/>-->--%>
                <%--<!--<br><span>负载均衡</span>-->--%>
                <%--<!--</div>-->--%>

                <%--<!--</td></tr>-->--%>
            <%--</table>--%>
        <%--</div>--%>
        <%--<!--<div title="虚拟主机" class="flowImag" style="background-color:#FFFFFF;">-->--%>
        <%--<!--<table class="tp_table" width="100%" >-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="ClientVM" divType="mode" datatype="VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/mypc.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>虚拟主机</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="PCVM" divType="mode"  datatype="VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/tpIcon_2.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>客户机</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="ServerVM" divType="mode" datatype="VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/tpIcon_6.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>服务器</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="WebServerVM" divType="mode" datatype="VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/webserver.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>Web服务器</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="MailServerVM" divType="mode" datatype="VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/mailserver.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>邮件服务器</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="FileServerVM" divType="mode" datatype="VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/fileserver.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>文件服务器</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--</table>-->--%>

        <%--<!--</div>-->--%>
        <%--<!--<div title="物理网络设备" class="flowImag" style="background-color:#FFFFFF;">-->--%>
        <%--<!--<table class="tp_table" width="100%" >-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="Py_VM" divType="mode" datatype="Py_VM" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/py_VM.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>物理主机</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="Py_ExtChange" divType="mode" datatype="Py_EC" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/py_EC.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>物理交换机</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="Py_Firewall" divType="mode" datatype="Py_FW" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/tpIcon_4.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>物理防火墙</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="Py_Router" divType="mode" datatype="Py_VR" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/py_VR.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>物理路由器</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--</table>-->--%>
        <%--<!--</div>-->--%>
        <%--<!--<div title="位置图形" class="flowImag" style="background-color:#FFFFFF;">-->--%>
        <%--<!--<table class="tp_table" width="100%" >-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="Cloud" divType="mode" datatype="CL" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/tpIcon_3.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>云</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--<tr><td width="100%" align="center">-->--%>
        <%--<!--<div id="House" divType="mode" datatype="HO" draggable="true">-->--%>
        <%--<!--<div class="title">&nbsp;</div>-->--%>
        <%--<!--<img name="backGroundImg" src="icon/tpIcon_1.png" class="nodeStyle"/>-->--%>
        <%--<!--<br><span>房屋</span>-->--%>
        <%--<!--</div>-->--%>

        <%--<!--</td></tr>-->--%>
        <%--<!--</table>-->--%>

        <%--<!--</div>-->--%>


    <%--</div>--%>

<%--</div>--%>

<div region="center" title='当前机房：${roomname}' id="contextBody" class="mapContext">
    <textarea onkeydown="if(event.keyCode==13)this.blur();" style="display:none;width: 60px;position: absolute;z-index: 9" id="deviceText"></textarea>
    <div id="nodeMainMenu" class="modeRight2" style="z-index: 9">
        <!--<div class="applicationLayout"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">应用布局</span></div>-->
        <!--<div id="changeNodeText" class="nodeText"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">节点文字</span></div>-->
        <div class="zoomBig"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">放大(Shift+)</span></div>
        <div class="zoomSmall"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">缩小(Shift-)</span></div>
        <div class="modeRightShunShi"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">顺时针旋转(Shift+U)</span></div>
        <div class="modeRightNiShi"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">逆时针旋转(Shift+I)</span></div>
        <div class="modeRightDelete"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">删除节点(Delete)</span></div>
        <div class="modeRightCopy" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">复制节点(Shift+C)</span></div>
        <div class="modeRightCancel"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">撤销(Shift+Z)</span></div>
        <div class="modeRightRedo"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">重做(Shift+R)</span></div>
    </div>

    <div id="lineMenu" class="modeRight2" style="z-index: 9">
        <div class="modeRightEdit"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">添加描述</span></div>
        <div class="modeRightDelete" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">删除连线</span></div>
    </div>

    <div id="nodeTextMenu" class="modeRight2" style="z-index: 9">
        <div class="modeRightEdit"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">修改节点文字</span></div>
        <div id="justfyNodeText" class="nodeRightEdit" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">调整节点文字位置</span></div>
    </div>

    <div id="nodeTextPosMenu" class="modeRight2" style="z-index: 9">
        <div class="theTopLeft"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">顶部居左</span></div>
        <div class="theTopCenter" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">顶部居中</span></div>
        <div class="theTopRight" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">顶部居右</span></div>
        <div class="theMiddleLeft"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">中间居左</span></div>
        <div class="center" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">居中</span></div>
        <div class="theMiddleRight" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">中间居右</span></div>
        <div class="theBottomLeft"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">底部居左</span></div>
        <div class="theBottomCenter" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">底部居中</span></div>
        <div class="theBottomRight" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">底部居右</span></div>
    </div>

    <div id="mainMenu" class="modeRight2" style="z-index: 9">
        <div class="zoomBig"  onClick="editor.utils.scalingBig()" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">放大(Shift+)</span></div>
        <div class="zoomSmall"  onClick="editor.utils.scalingSmall()" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">缩小(Shift-)</span></div>
        <div class="modeRightClear"  onClick="editor.utils.clear();" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">清空(Shift+Y)</span></div>
        <div class="modeRightPrint"  onClick="editor.utils.showPic();" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">预览(Shift+P)</span></div>
        <div class="modeRightFullScreen"  onClick="editor.utils.showInFullScreen(editor.stage.canvas,'RequestFullScreen')" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">全屏查看(Shift+F)</span></div>
        <div class="modeRightCenter"  onClick="editor.utils.showInCenter()" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">居中显示(Shift+G)</span></div>
        <div class="modeRightSave"  onClick="editor.saveToplogy(true)" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">保存(Shift+S)</span></div>
        <div class="modeRightSetRule" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan" id="ruleLineSpan">隐藏参考线(Shift+L)</span></div>
        <div class="viewHelp" onclick="editor.showHelpWindow()" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan" id="showHelp">查看帮助(Shift+H)</span></div>
        <div class="viewJSON" onclick="window.open('jsonView.html', '当前拓扑结构JSON展示', '').document.write(editor.stage.toJson())" onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan" id="showJSON">查看拓扑JSON结构</span></div>
    </div>

    <div id="groupMangeMenu" class="modeRight2" style="z-index: 9">
        <div id="newGroup" class="modeRightEdit"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">新建分组</span></div>
        <div id="alignGroup" class="modeRightEdit"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">对齐方式</span></div>
    </div>
    <div id="groupAlignMenu" class="modeRight2" style="z-index: 9">
        <div class="modeRightMiddle"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">水平对齐</span></div>
        <div class="modeTopMiddle"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">垂直对齐</span></div>
    </div>

    <div id="containerMangeMenu" class="modeRight2" style="z-index: 9">
        <div class="modeRightDel"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">拆分</span></div>
    </div>

    <div id="layoutMenu" class="modeRight2" style="z-index: 9">
        <div class="cancelTheLayout"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">取消布局</span></div>
        <div class="packetLayout"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">分组布局</span></div>
        <div class="theTreeLayout"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">树形布局</span></div>
        <div class="circularLayout"  onMouseMove="this.style.backgroundColor='#c5e7f6'" onMouseOut="this.style.backgroundColor=''"><span class="menuSpan">圆形布局</span></div>
    </div>
    <canvas id="drawCanvas"  class="mapContext">
        您的浏览器不支持HTML5!
    </canvas>
</div>

<div region="east" split="true"  title="" class="history" style="width: 350px">
    <div class="easyui-layout" fit="true">
        <div data-options="region:'south'" style="height:250px">
            <div id="piediv"></div>
        </div>
        <div data-options="region:'center',title:'',iconCls:'icon-ok'">
            <div class="panel-title" style="font-size: 18px;">
                <span class="fa fa-tasks"></span>状态说明：
            </div>
            <table style="width:100%">
                <style>
                    table{
                        margin-top: 20px;
                    }
                    tr{
                        margin: 20px;
                    }
                    td{
                        font-size: 16px;
                    }
                    .tdtitle{
                        width: 120px;
                        text-align: right
                    }
                    .tdleged div{
                        width:100px;
                        border-radius: 10px
                        /*text-align: right*/
                    }
                </style>
                <tbody>
                <tr>
                    <td style="width: 120px;text-align: right" class="tdtitle">空闲：</td>
                    <td class="tdleged">
                        <div style="background-color: rgb(231,231,231);">&nbsp;</div>
                    </td>
                </tr>
                <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                <tr>
                    <td style="width: 120px;text-align: right" class="tdtitle">占用：</td>
                    <td class="tdleged">
                        <div style="background-color: #b99d7f;">&nbsp;</div>
                    </td>
                </tr>
                <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                <tr>
                    <td style="width: 120px;text-align: right" class="tdtitle">预留：</td>
                    <td class="tdleged">
                        <div style="background-color: #0e90d2;">&nbsp;</div>
                    </td>
                </tr>
                <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                <tr>
                    <td style="width: 120px;text-align: right" class="tdtitle">预占：</td>
                    <td class="tdleged">
                        <div style="background-color: #da4f49;">&nbsp;</div>
                    </td>
                </tr>

                <tr><td>&nbsp;</td><td>&nbsp;</td></tr>
                <tr>
                    <td style="width: 120px;text-align: right" class="tdtitle"> 不可用：</td>
                    <td class="tdleged">
                        <div style="background-color: #a2a2a2;">&nbsp;</div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>

    </div>

    <div  id="mainControl" class="easyui-accordion overflowHidden" fit="true" border="false" style="display: none">

    </div>
</div>

<div id="settings">系统设置</div>
</body>

<div id="loading">正在处理...</div>

<div id="help">帮助信息...</div>
<!-- 隐藏域用于获取moduleId和envTemplateId -->
<input type="hidden" id="nodeModuleIdHidden" >
<input type="hidden" id="nodeEnvTemplateIdHidden">
<!--保存当前编辑层的父层-->
<input type="hidden" id="parentLevel" value="0">

</body>

<script src="<%=request.getContextPath() %>/js/roomlayout/js/util.js" type="text/javascript" ></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/jquery.alerts.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/jtopo-0.4.8-dev.js" type="text/javascript" ></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/editor.js" type="text/javascript" ></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/network.js" type="text/javascript" ></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/jquery.ipinput.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/topologyProperties.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/roomlayout/js/echar.min.js" type="text/javascript"></script>
<script type="text/javascript">

    var roomid = "${roomid}";
    function navLevel(ele){
        var selectEle = $("#selectLevel");
        var self = $(ele);
        var value = selectEle.find("option:selected").eq(0).val();
        var options = selectEle.find("option");
        var maxLevel = options.size() -1;
        if(self.attr("id") == "pre"){
            //到第一层
            if(value == 1)
                return;
            else
                editor.replaceStage(editor.templateId,editor.topologyId,false,editor.stage.parentLevel);
            for(var o = 0 ; o< options.length ; o++){
                if(editor.stage.parentLevel == options[o].value){
                    $(options[o]).attr("selected","selected");
                }
            }
        }
        if(self.attr("id") == "next"){
            //到第一层
            if(value == maxLevel)
                return;
            else
                editor.replaceStage(editor.templateId,editor.topologyId,false,parseInt(value) + 1);
            for(var o = 0 ; o< options.length ; o++){
                if(parseInt(value) + 1 == options[o].value){
                    $(options[o]).attr("selected","selected");
                }
            }
        }
    }
    //节点名字加载器
    var nodeNamesloader = function(param,success,error){
        //获取输入的值
        var q = param.q || "";
        //此处q的length代表输入多少个字符后开始查询
        if(q.length <= 0) return false;
        var nodes =  editor.stage.find('node[elementType="node"]');
        var items = $.map(nodes, function (item, index) {
            if(item.text && item.text.indexOf(q) != -1){
                return {
                    "nodeId": index,
                    "nodeName": item.text
                };
            }
        });
        success(items);
    }
    var initPie  = function () {
        var width = $("#piediv").parent().width();
        var height =  $("#piediv").parent().height();
        var pieChar = echarts.init(document.getElementById("piediv"));
        var option = {
            title : {
                text: '机房状态分布',
                x:'center'
            },
            tooltip : {
                trigger: 'item',
                formatter: "{a} <br/>{b} : {c} ({d}%)"
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: ['空闲','占用','预留','预占','不可用']
            },
            series : [
                {
                    name: '状态分布',
                    type: 'pie',
                    radius : '55%',
                    center: ['50%', '60%'],
                    data:[{name:'空闲',value:30,itemStyle:{normal:{color:"rgb(231,231,231)"}}},
                        {name:'占用',value:24,itemStyle:{normal:{color:"rgb(185,157,127)"}}},
                        {name:'预留',value:10,itemStyle:{normal:{color:"rgb(14,144,210)"}}},
                        {name:'预占',value:40,itemStyle:{normal:{color:"rgb(218,79,73)"}}},
                        {name:'不可用',value:20,itemStyle:{normal:{color:"rgb(162,162,162)"}}}],
                    itemStyle: {
                        emphasis: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        pieChar.setOption(option);
        pieChar.resize({width:width-20,height:height});
    }
    jQuery(document).ready(function () {
        //jAlert($.i18n.prop('editor.ui.selectLanguage'));
        $(document).on("contextmenu",function(e){
            return false;
        });

        $("#simpleLine").click(function(){
            $(this).css("background-color","darkgray");
            $("#foldLineH").css("background-color","white");
            $("#foldLineV").css("background-color","white");
            $("#flexLineH").css("background-color","white");
            $("#flexLineV").css("background-color","white");
        });
        $("#foldLineH").click(function(){
            $(this).css("background-color","darkgray");
            $("#simpleLine").css("background-color","white");
            $("#foldLineV").css("background-color","white");
            $("#flexLineH").css("background-color","white");
            $("#flexLineV").css("background-color","white");
        });
        $("#foldLineV").click(function(){
            $(this).css("background-color","darkgray");
            $("#simpleLine").css("background-color","white");
            $("#foldLineH").css("background-color","white");
            $("#flexLineH").css("background-color","white");
            $("#flexLineV").css("background-color","white");
        });
        $("#flexLineH").click(function(){
            $(this).css("background-color","darkgray");
            $("#simpleLine").css("background-color","white");
            $("#foldLineH").css("background-color","white");
            $("#foldLineV").css("background-color","white");
            $("#flexLineV").css("background-color","white");
        });
        $("#flexLineV").click(function(){
            $(this).css("background-color","darkgray");
            $("#simpleLine").css("background-color","white");
            $("#foldLineH").css("background-color","white");
            $("#foldLineV").css("background-color","white");
            $("#flexLineH").css("background-color","white");
        });

        $('#mainControl').accordion({
            onSelect: function (title) {
                //editor.selectPanel(title,editor.currentNode.templateId,editor.currDeviceId,editor.currDataType);
            }
        });

        var modes = jQuery("[divType='mode']");
        var modeLength = modes.length;

        for (var i = 0; i < modeLength; i++) {
            modes[i].gtype=modes[i].getAttribute("gtype");
            modes[i].datatype=modes[i].getAttribute("datatype");
            var text = $(modes[i]).find("span").eq(0).text();
            editor.drag(modes[i],document.getElementById('drawCanvas'),text);

        }
        editor.loadTopology("images/backimg.png",'${templateId}','${topologyId}',"");

//        var container = new JTopo.Container();
//        editor.addNode(container);
//        container.zIndex= 2 ;
//        var flowLayout = JTopo.layout.FlowLayout(0, 0);
//        container.layout = flowLayout;
//        container.borderColor = '255,0,0';
//        container.setBound(100, 100, 100, 200);
//        for(var i=0; i<6; i++){
//            var node = new JTopo.Node("A_"+i);
//            //node.textPosition = "Middle_Center";
//            node.setLocation(0, 30);
//            node.zindex = 2;
//            editor.addNode(node);
//            container.add(node);
//        }
        var node = editor.addMNode({
            "id": "N172.19.105.520151008115120004",
            "elementType": "node",
            "x": 212,
            "y": 135,
            "width": 60,
            "height": 60,
            "rotate": "0",
            "scaleX": "2",
            "scaleY": "1",
            "text": "",
            "textPosition": "Bottom_Center",
            "deviceId": "809054608657.865",
            "dataType": "FW",
            "nodeImage": "jijia.png",
            "templateId": "undefined",
            "topoLevel": "1",
            "parentLevel": "0",
            "nextLevel": "0",
            "zindex": "3"
        },3,0);
        //加载网络拓扑图

        $("#selectLevel").parent().css({ "height": "22px","line-height":"22px"});
        //拓扑层跳转
        $("#selectLevel").on("change",function () {
            if(this.value == -1) return false;
            editor.replaceStage(editor.templateId,editor.topologyId,false,this.value);
//            $('#queryText').combobox("clear");
//            $('#queryText').combobox("reload");
        });
        //搜索设备节点候选框
//        $('#queryText').combobox({
//            loader: nodeNamesloader,
//            mode: 'remote',
//            valueField:'nodeId',
//            textField:'nodeName',
//            onSelect : function(record){
//                //查该选中的设备节点
//                editor.utils.findNodeAndFlash(record.nodeName);
//            }
//        });
        //$("input[class='combo-text validatebox-text']").attr("placeholder","输入节点名称搜素...");


        initPie();
    });

</script>
<script>
</script>
</html>