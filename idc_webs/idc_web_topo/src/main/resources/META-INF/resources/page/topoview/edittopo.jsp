
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="<%=request.getContextPath()%>/framework/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <jsp:include page="/globalstatic/easyui/head.jsp"></jsp:include>
    <script src="<%=request.getContextPath()%>/framework/vuejs/vue.min.js"></script>
    <script src="<%=request.getContextPath()%>/framework/jtopo/jtopo.min.js"></script>
    <link href="<%=request.getContextPath()%>/moudles/topo/css/topo.css" rel="stylesheet">
    <link href="<%=request.getContextPath()%>/moudles/topo/css/font-awesome.min.css" rel="stylesheet">
    <script src="<%=request.getContextPath()%>/framework/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/js/base/rtree.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath() %>/framework/ztree/js/jquery.ztree.exhide.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath() %>/framework/ztree/css/zTreeStyle/resource.css"/>
    <style>
        div.panel[name=topo_toolbar] {
            /*color: white;*/
            /*background-color: #337ab7;*/
            /*rgba(51, 122, 183, 0.5);*/
            position: absolute;
            float: right;right: 0px;
            padding: 0;
            border: 0;
        }

        div[name=topo_toolbar_body] {
            background: rgba(51, 122, 183, 0.5);
        }
        .jtopo_toolbar{
            padding-left:20px;
            background-color: rgb(216, 231, 242);
            width: 100%;
            height: 28px;
            /*padding-top: 7px;*/
        }
    </style>
</head>

<body>
<div class="easyui-layout" fit="true" id="main">
    <div data-options="region:'west'" style="width: 200px;padding: 0px" title="TOPO节点">
        <ul class="ztree" id="ztree1" style=""></ul>
    </div>
    <c:if test="${empty typeMode||typeMode !='edit'}">
        <div data-options="region:'west'" style="width: 200px;padding: 0px" title="TOPO视图">
                <%--<ul class="ztree" id="ztree1" style=""></ul>--%>
        </div>
    </c:if>
    <div data-options="region:'center'" id="canvasCenter"  title="编辑视图【${viewobj.viewname}】"
         style="position:relative;overflow:hidden;background:url('<%=request.getContextPath()%>/moudles/topo/img/grid.gif');cursor:default;">
        <%--<div style="color: white; font-size: 20px;height: 25px;background-color: #337ab7"><span id="topomodespan">编辑</span>当前视图:<span id="viewnamespan">${viewobj.viewname}</span>&nbsp;&nbsp;</div>--%>
        <%--<div name="topo_toolbar_template">--%>
        <%--<div name='topo_toolbar' class='panel panel-default'>--%>
        <%--<div class='panel-body' name="topo_toolbar_body">--%>
        <%--<div class='btn-group'>--%>
        <%--<div class='btn-group' data-toggle='buttons'>--%>
        <%--<label class='btn btn-sm btn-primary' name='topo_mode' data-toggle='tooltip' title='查看'--%>
        <%--data-placement='bottom'>--%>
        <%--<input type='radio' value='select'>--%>
        <%--<span class='glyphicon glyphicon-check'></span>--%>
        <%--</label>--%>
        <%--<label class='btn btn-sm btn-primary' name='topo_mode' data-toggle='tooltip' title='编辑'--%>
        <%--data-placement='bottom'>--%>
        <%--<input type='radio' value='edit'><span class='glyphicon glyphicon-edit'></span>--%>
        <%--</label>--%>
        <%--</div>--%>
        <%--<button name='center' type='button' class='btn btn-sm btn-primary' data-toggle='tooltip'--%>
        <%--title='居中缩放' data-placement='bottom'>--%>
        <%--<span class='glyphicon glyphicon-screenshot'></span>--%>
        <%--</button>--%>
        <%--<button name='eagle_eye' type='button' class='btn btn-sm btn-primary'--%>
        <%--data-toggle='button;tooltip'--%>
        <%--title='鹰眼' data-placement='bottom'>--%>
        <%--<span class='glyphicon glyphicon-eye-open'></span>--%>
        <%--</button>--%>
        <%--<button name='help' type='button' class='btn btn-sm btn-primary'--%>
        <%--data-toggle='button;tooltip'--%>
        <%--title='帮助' data-placement='bottom'>--%>
        <%--<span class='glyphicon glyphicon-question-sign'></span>--%>
        <%--</button>--%>

        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <%--</div>--%>
        <canvas id="canvas"></canvas>
    </div>
</div>
<ul name="topo_rightMenu" id="topo_rightMenu1" class="dropdown-menu" role="menu"
    :style="right_menu_style">
    <li v-for="(rightMenu,index) in rightMenus" v-if="rightMenu.show==true" v-on:click="menuclick(rightMenu)">
        <div class="buttonSquare bluelight">
            <i class="fa fa-info"></i>
            <span>{{rightMenu.name}}</span>
        </div>
    </li>
</ul>
<ul name="detailinfo" id="detailinfo" class="dropdown-menu" role="menu"
    :style="right_menu_style">
    <li v-for="(rightMenu,index) in rightMenus" v-if="rightMenu.show==true" v-on:click="menuclick(rightMenu)">
        <div class="buttonSquare bluelight">
            <i class="fa fa-info"></i>
            <span>{{rightMenu.name}}</span>
        </div>
    </li>
</ul>
</body>
<div id="addnode" style="">
</div>
<script id='code'>
    var userid = "${userInfo.id}";
    var _viewid= "${viewid}";
    var srcbase = contextPath + "/moudles/topo/topoimg/";
    var imgs = {
        "src_1_1": srcbase + "topo_202.png",
        "src_1_2": srcbase + "topo_203.png",
        "src_1_3": srcbase + "topo_185.png",
        "src_1_4": srcbase + "topo_182.png",
        "src_1_91": srcbase + "topo_214.png",
        "src_2_10": srcbase + "topo_459.png",
        "src_2_11": srcbase + "topo_217.png",
        "src_2_92": srcbase + "topo_217.png",
        "src_3_93": srcbase + "topo_2356.png"
    }
    /***
     *
     * 工作对象
     **/
    function TopoEditor() {
        this.viewId = 0;
        this.selectView = null;
        this.eagleEye = false;
        this.isSelectedMode = false;
        this.helpText = '';
        this.viewTree = null;
        this.deviceTree = null;
        this.state = null
        this.scene = null;
        this.selectNode = null;
        this.isDragMode = false;
        this.isDragAdd = false;
        this.dragAddNode = null;
        this.dragNode = null;
        this.canvas = document.getElementById('canvas');
        this.rightMenu = null;
        this.tempNodeA = null;
        this.tempNodeZ = null;
        this.link = null;
        this.beginNode = null;
        this.editMode = true;
        this.isChildTopo =false;
    }
    /***
     * 初始化
     * **/
    TopoEditor.prototype.init = function () {
        var _self = this;
        this.initTree();
        this.initMenu();
        this.initCanvas();//窗口自适应
        this.updateLister();

        $("#canvasCenter").panel({
            onResize: function () {
                $("#canvas").attr("width", $("#canvas").parent().width())
                $("#canvas").attr("height", $("#canvas").parent().height()-30);
                _self.stage.width = $("#canvas").parent().width();
                _self.stage.height = $("#canvas").parent().height()-30;
                _self.stage.paint()
            }
        })
    }
    TopoEditor.prototype.updateLister =function(){
        var self = this;
        $("#addview").click(function () {
            var index = top.layer.open({
                type: 2,
                area: ['500px', '300px'],
                title: '创建视图',
                maxmin: false, //开启最大化最小化按钮
                content: contextPath + '/topoview/toViewForm',
                btn: ['确定', '关闭'],
                success: function (layero, index) {
                    var name = layero.find('iframe')[0].name;
                    top.winref[name] = window.name;
                },
                yes: function (index, layero) {
                    var body = top.layer.getChildFrame('body', index);
                    var iframeWin = layero.find('iframe')[0];
                    var result = iframeWin.contentWindow.doSubmit(function (id, name) {
                        self.initTree();
                        self.initCanvas()
                        self.loadData(id)
                        setTimeout(function(){
                            var nodes = self.viewTree.getNodesByParam("id", id+"", null);
                            console.log($("#"+nodes[0]['parentTId']).find("#"+nodes[0]['tId']+'_a'))
                            self.viewTree.selectNode(nodes);
                            $("#"+nodes[0]['parentTId']).find("#"+nodes[0]['tId']+'_a').dblclick();
                        },300)
                        $("label[name='topo_mode']").eq(1).click()
                    });
                }
            });
        });
        $("button[name='eagle_eye']").click(function () {
            var aria_pressed = $(this).attr("aria-pressed");
            if (aria_pressed) {
                self.eagleEye = true
                self.stage.eagleEye.visible = true;
            } else {
                self.eagleEye = false
                self.stage.eagleEye.visible = false
            }
        });
        $("button[name='help']").click(function () {
            top.layer.open({
                title: '在线帮助'
                ,
                content: "<p>1、如何选择查看或编辑的视图</p><p>&nbsp; &nbsp; :双击左侧视图导航树内需要查看的视图</p><p>2、如何添加节点</p><p>&nbsp; &nbsp; :从左侧导航树拖动节点到图中</p><p>3、如何连线</p><p>&nbsp; &nbsp; :在连线开始节点单击，并在结束节点单击<br></p><p>&nbsp; &nbsp;如需取消，请在空白处单击</p><p>4、如何删除节点</p><p>&nbsp; &nbsp; :在要删除的节点上面右击，选择删除对象</p><p><strong>&nbsp;提示：操作后记得保存TOPO信息</strong></p>"
            });
        })
        $("label[name='topo_mode']").click(function () {
            var mode = $(this).find('input').val();
            if(mode =='edit'){
                self.editMode = true
                $("#topomodespan").text("编辑")
                location=contextPath+"/topoview/edit/"+self.viewId;
            }else{
                $("#topomodespan").text("查看")
                self.editMode = false;
                location=contextPath+"/topoview/view/"+self.viewId;
            }
        });
        $("button[name='center']").click(function () {
            self.stage.centerAndZoom(); //缩放并居中显示
        });
    }
    //加载视图数据
    TopoEditor.prototype.loadData = function (viewId) {
        this.viewId = viewId;
        var self = this;
        $.getJSON(contextPath + "/topoview/viewinfo/" + viewId, function (data) {
            var idMap = {};
            $.each(data.viewObjs, function (index, iteam) {
                var xy = iteam.viewposition.split("_");
                var newNode = {
                    x: parseInt(xy[0]),//减去左侧模型导航宽度
                    y: parseInt(xy[1])
                };
                newNode.id = iteam.objpid;
                newNode.icon = iteam.icon;
                newNode.name = iteam.name;
                newNode.objtype = iteam.objtype;
                newNode.objfid = iteam.objfid;
                newNode.devicetype = iteam.deviceType;
                var nodeResoutle = self.addNode(newNode)
                if (nodeResoutle) {
                    idMap[iteam.objpid] = nodeResoutle;
                }

            });
            function createLink(NodeA,NodeZ,lineWidth,text){
                var link=null;
                if(text){
                    link = new JTopo.Link(NodeA, NodeZ,text);
                }else{
                    link = new JTopo.Link(NodeA, NodeZ);
                }
                link.bundleGap = 20; // 线条之间的间隔
                link.arrowsRadius = 10;
                link.fontColor = "#fff";//JTopo.util.randomColor();
                link.strokeColor = "#fff"//JTopo.util.randomColor(); // 线条颜色随机
                link.lineWidth = lineWidth>5?5:2;
                link.textOffsetY = 3; // 文本偏移量（向下3个像素）
                self.scene.add(link);
                return link;
            }
            $.each(data.links, function (index, iteam) {
                var NodeA = idMap[iteam.srcid];
                var NodeZ = idMap[iteam.desid];
                if (NodeA && NodeZ) {
                    if(NodeA.objtype==0&&NodeZ.objtype==0){
                        self.addMLink(NodeA,NodeZ,iteam.childLinks,"","",iteam.topoLinkID,false);
//                        var linka = createLink(NodeA,NodeZ,iteam.childLinks,(iteam.outflow/1024/1024).toFixed(2)+'Mbps')
//                        var linkb =createLink(NodeZ,NodeA,iteam.childLinks,(iteam.inflow/1024/1024).toFixed(2)+'Mbps')
//                        linka.textOffsetY = 10; // 文本偏移量（向下3个像素）
//                        linka.textOffsetX = 10; // 文本偏移量（向下3个像素）
//                        linkb.textOffsetY = -10; // 文本偏移量（向下3个像素）
//                        linkb.textOffsetX = -10; // 文本偏移量（向下3个像素）
//                        linka.id = iteam.topoLinkID;
//                        linkb.id = iteam.topoLinkID;
//                        linka.bundleGap = 0;
//                        linkb.bundleGap = 0; // 线条之间的间隔
                    }else{
                        self.addMLink(NodeA,NodeZ,2,"","",iteam.topoLinkID,false);
//                        createLink(NodeA,NodeZ,2)
                    }
//                    var outlink = new JTopo.Link(NodeA, NodeZ,(iteam.outflow*8/1024/1024).toFixed(2)+'Mbps');
//                    outlink.bundleGap = 20; // 线条之间的间隔
//                    outlink.arrowsRadius = 10;
//                    var lineWidth = 2;
//                    if(iteam.childLinks>2){
//                        lineWidth = 5;
//                    }
//                    outlink.lineWidth = lineWidth; // 线宽
//                    outlink.textOffsetY = 3; // 文本偏移量（向下3个像素）
//                    var inlink = new JTopo.Link(NodeZ, NodeA,(iteam.inflow*8/1024/1024).toFixed(2)+'Mbps');
//                    inlink.bundleGap = -20; // 线条之间的间隔
//                    inlink.arrowsRadius = 10;
//                    inlink.lineWidth = lineWidth; // 线宽
//                    inlink.textOffsetY = 3; // 文本偏移量（向下3个像素）
//                    self.scene.add(outlink);
//                    self.scene.add(inlink);
//                    if(NodeA.objtype!=0||NodeZ.objtype!=0){
//                        outlink.text=''
//                        inlink.text=''
//                    }
                }
            });
            self.stage.centerAndZoom();
        })
    }
    //    TopoEditor.prototype.addLink = function(link){
    //
    //    }
    TopoEditor.prototype.addNode = function(node){
        var self = this ;
        var newNode = new JTopo.Node(node.name);
        newNode.id = node.id;
        newNode.objpid = node.id;
        newNode.objfid = node.objfid;
        newNode.name = node.name;
        newNode.objtype = node.objtype;
        newNode.setLocation(node.x||100, node.y||100);
        if (newNode.objtype == 0) {
            newNode.setSize(48, 48);
            var img = imgs["src_" + node.devicetype];
            if (typeof img != 'undefined') {
                newNode.setImage(img)
            } else {
                if (node.icon) {
                    newNode.setImage(contextPath + "/moudles/topo/topoimg/" + node.icon)
                } else {
                    newNode.setImage(contextPath + "/moudles/topo/img/mo/site_4.png")
                }
            }
        } else {
            newNode.setSize(100, 80);
            newNode.font="24px Consolas";
            newNode.textPosition = 'Middle_Center';
            newNode.setImage(contextPath + "/moudles/topo/topoimg/topo_626.png")
            newNode.dbclick(function(e){
                self.showChildTopo(e.target);
            })
        }
        newNode.mousedrag(function (e) {
            //e.target.objpid
            self.isDragMode = true;
            self.dragNode = e.target;
            //self.updateNodeLocation(e.target.objpid,e.target.x, e.target.objpid.y);
        });
        newNode.fontColor  = "#fff";//JTopo.util.randomColor(); // 线条颜色随机
        self.scene.add(newNode)
        return newNode;
    };
    /***
     * 子图
     * */
    TopoEditor.prototype.showChildTopo = function (node) {
        openDialogView('子图【'+node.name+'】',contextPath+"/topoview/showChildTopo/"+node.objfid,"1000px","500px");
    }
    TopoEditor.prototype.showAlarm = function (node) {
        openDialogView('查看告警信息',contextPath+"/alarm/index.do?objid="+node.objfid,"1000px","500px");
    }
    TopoEditor.prototype.showLine = function (selectNode) {
        var src= selectNode.nodeA.objpid
        var des = selectNode.nodeZ.objpid
        openDialogView('查看链路信息',contextPath+"/topoview/showlink/"+src+"/"+des,"800px","500px")
    }
    TopoEditor.prototype.showFlow = function (selectNode) {
        openDialogView('查看设备信息',contextPath+"/devicecap/"+selectNode.objfid,"1000px","500px")

    }
    TopoEditor.prototype.initMenu = function () {
        var self = this ;
        var eventHandle = function(event, e){
            self.rightMenu.hide();
            if (event.eventName == 'addNode') {
//                var node = self.selectView
//                if(node.viewmode!=3&&userid!=node.userid){
//                    top.layer.msg("当前用户没有权限操作")
//                    return;
//                }
//                if(!self.editMode){//添加节点必须在编辑模式下
//                    top.layer.msg("当前为查看模式，如需添加节点，请点击右上角编辑按钮");
//                    return;
//                }
                var x = self.layerx;
                var y = self.layery;
                var index = top.layer.open({
                    type: 2,
                    area: ['600px', '400px'],
                    title: '创建视图对象',
                    maxmin: false, //开启最大化最小化按钮
                    content: contextPath + '/topoview/addViewObj/'+self.viewId+'/'+x+"/"+y,
                    btn: ['确定', '关闭'],
                    success: function (layero, index) {
                        var name = layero.find('iframe')[0].name;
                        top.winref[name] = window.name;
                    },
                    yes: function (index, layero) {
                        var body = top.layer.getChildFrame('body', index);
                        var iframeWin = layero.find('iframe')[0];
                        iframeWin.contentWindow.doSubmit(function (node) {
                            node.x = x;
                            node.y = y;
                            self.addNode(node)
                        })
                    }
                });
            }
            if (event.eventName == 'showLine') {
                self.showLine(self.selectNode);
            }
            if (event.eventName == 'showAlarm') {
                self.showAlarm(self.selectNode);
            }
            if (event.eventName == 'showFlow') {
                self.showFlow(self.selectNode);
            }
            if (event.eventName == 'delNode') {
                var url = "";
                if(!self.editMode){
                    top.layer.msg("当前为查看模式")
                    return ;
                }
                if(event.type=="node"){
                    url= contextPath+"/topoview/deleteobj/"+self.selectNode.objpid
                }else if(event.type=="link"){
                    url= contextPath+"/topoview/deletelink/"+self.selectNode.id
                }
                var btn = ['删除', '取消'];
                top.layer.msg('确定删除该对象？', {
                    time: 0 //不自动关闭
                    ,btn: btn
                    ,yes: function(index){
                        $.post(url,function(data){
                            top.layer.close(index)
                            if(data.state){
                                if(event.type=="node"){
                                    self.removeNode(data.msg)
                                }else if(event.type=="link"){
                                    self.removeLink(data.msg)
                                }
                            }else{
                                top.layer.msg(data.msg)
                            }
                        })
                    }
                });
                console.log(self.selectNode)
            }
            self.selectNode  =null;
        };
        var topo_rightMenu = new Vue({
            el: '#topo_rightMenu1',
            computed: {
                right_menu_style: function () {
                    return {
                        'z-index': 5555,
                        left: this.x,
                        top: this.y,
                        display: this.isShow ? 'block' : 'none'
                    }
                }
            },
            data: {
                isShow: false,
                x: 0,
                y: 0,
                rightMenus: [
                    {name: '添加节点', show: true, eventName: 'addNode', type: 'scene'},
                    {name: '查看链路信息', show: false, eventName: 'showLine', type: 'link'},
                    {name: '查看设备信息', show: false, eventName: 'showFlow', type: 'node'},
                    {name: '查看告警', show: false, eventName: 'showAlarm', type: 'node'},
                    {name: '删除节点', show: true, eventName: 'delNode', type: 'node'},
                    {name: '删除链接', show: true, eventName: 'delNode', type: 'link'}
                ]
            },
            methods: {
                show: function () {
                    this.isShow = true;
                },
                hide: function () {
                    this.isShow = false;
                },
                menuclick: function (event, e) {
                    this.isShow = false;
                    eventHandle(event, e)
                }
            }
        });
        this.rightMenu = topo_rightMenu;
    }
    TopoEditor.prototype.initTree = function () {
        var _self = this;
        var defaults = {
            callback: {
//                onDblClick: function (event, treeId, treeNode) {
//                    if(treeNode.viewmode=="1"&&userid!=treeNode.userid){
//                            top.layer.msg("当前用户没有权限查看")
//                            return false;
//                    }else{
//                        _self.selectView = treeNode;
//                        $("#viewnamespan").text(treeNode.name)
//                        _self.initCanvas();
//                        _self.loadData(treeNode.id);
//                    }

//                },
                beforeDrag: function (treeId, treeNodes) {
                    var dragNode = treeNodes[0];
                    if (dragNode) {
                        if (dragNode.isParent)return false;
                        if (dragNode.dataType == 2 && dragNode.id == _self.viewId)return false;//拖动视图 并且该试图是正在编辑的视图 禁止拖动
                        if (_self.scene) {
                            var disNodes = _self.scene.getDisplayedElements();
                            var flag = true;
                            $.each(disNodes, function (i, iteam) {
                                if (iteam.name == dragNode.name) {
                                    flag = false;
                                    return false;
                                }
                            })
                            if (!flag) {//存在的节点不在添加
                                top.layer.msg("该节点已经存在");
                                return false;
                            }
                        } else return false;
                    }
                },
                onDrag: function (event, treeId, treeNodes) {
                    _self.isDragMode = false;
                    _self.isDragAdd = true;
                    _self.dragAddNode = treeNodes[0];
                }
            },
            edit: {
                enable: true,
                showRemoveBtn: false,
                showRenameBtn: false,
                drag: {}
            },
            data: {
                key: {
                    name: 'name',
                    idKey: 'id'
                },
                simpleData: {
                    enable: true
                }
            }
        };
        _self.viewTree = $.fn.zTree.init($("#ztree1"), defaults, []);
        $.getJSON(contextPath + "/topoview/list", function (data) {
            var nodes = [];
            $.each(data, function (index, iteam) {
                if(iteam.viewid!=_viewid){
                    var node ={};
                    node.name = iteam.viewname;
                    node.userid = iteam.userid;
                    node.viewmode = iteam.viewmode;
                    node.id = iteam.viewid;
                    node.dataType = 2;
                    nodes.push(node);
                }
            });
            var root = {
                id: '-1',
                open: true,
                name: '视图列表',
                children: nodes
            }
            _self.viewTree.addNodes(null, root);
        });
        $.getJSON(contextPath + "/device/list.do", function (data) {
            var nodes = [];
            $.each(data.rows, function (index, iteam) {
                var node ={};
                node.name = iteam.NAME;
                node.id = iteam.DEVICEID;
                node.dataType = 0;
                nodes.push(node);
            });
            var root = {
                id: '-2',
                open: true,
                name: '设备列表',
                children: nodes
            }
            _self.viewTree.addNodes(null, root);
        });
    };
    TopoEditor.prototype.addMLink = function (NodeA,NodeZ,lineWidth,atext,btext,linkid,isMuti) {
        var _self = this;
        var linka = createLink(NodeA,NodeZ,lineWidth,atext);
        linka.textOffsetY = 10; // 文本偏移量（向下3个像素）
        linka.textOffsetX = 10; // 文本偏移量（向下3个像素）
        linka.id = linkid;
        linka.bundleGap = 5;
        if(typeof(isMuti)!='undefined'&&isMuti){
            var linkb = createLink(NodeZ,NodeA,lineWidth,btext);
            linkb.textOffsetY = -10; // 文本偏移量（向下3个像素）
            linkb.textOffsetX = -10; // 文本偏移量（向下3个像素）
            linkb.id = linkid;
            linkb.bundleGap = 5; // 线条之间的间隔
        }
        function createLink(NodeA,NodeZ,lineWidth,text){
            var link=null;
            if(text){
                link = new JTopo.Link(NodeA, NodeZ,text);
            }else{
                link = new JTopo.Link(NodeA, NodeZ);
            }
            link.bundleGap = 20; // 线条之间的间隔
//            link.arrowsRadius = 10;
            link.fontColor = "#fff";//JTopo.util.randomColor();
            link.strokeColor = "#6482b9";//JTopo.util.randomColor(); // 线条颜色随机
            link.lineWidth = 1;
            link.textOffsetY = 3; // 文本偏移量（向下3个像素）
            link.dbclick(function(node){
                if(node.target.nodeA.objtype==0&&node.target.nodeZ.objtype==0){
                    _self.showLine(node.target)
                }
            })
            _self.scene.add(link);
            return link;
        }
    }
    TopoEditor.prototype.addLink = function (endNode) {
        var self = this;
        if(self.beginNode.objtype==1&&endNode.objtype==1){
            var sendData = {
                viewid:self.viewId,
                srcid:self.beginNode.objpid,
                desid:endNode.objpid
            }
            $.post(contextPath+"/topoview/addLink",sendData,function(data){
                if (data.state) {
                    top.layer.msg("添加链接成功")
                    self.addMLink(self.beginNode,endNode,1,"","",data.msg,false);
                    self.beginNode = null;
                    self.link = null;
                } else {
                    top.layer.msg(data.msg)
                }
            })
        }
        else if(self.beginNode.objtype!=0||endNode.objtype!=0){
            var sendData = {
                viewid:self.viewId,
                srcid:self.beginNode.objpid,
                desid:endNode.objpid
            }
            $.post(contextPath+"/topoview/addLink",sendData,function(data){
                if (data.state) {
                    top.layer.msg("添加链接成功")
                    self.addMLink(self.beginNode,endNode,1,"","",data.msg,false);
                    self.beginNode = null;
                    self.link = null;
                } else {
                    top.layer.msg(data.msg)
                }
            })
        }else{
            var index = top.layer.open({
                type: 2,
                area: ['800px', '500px'],
                title: '创建链接',
                maxmin: false, //开启最大化最小化按钮
                content: contextPath + '/topoview/addLink/'+self.viewId+"/"+self.beginNode.id+"/"+endNode.id,
                btn: ['确定', '关闭'],
                success: function (layero, index) {
                    var name = layero.find('iframe')[0].name;
                    top.winref[name] = window.name;
                },
                yes: function (index, layero) {
                    var body = top.layer.getChildFrame('body', index);
                    var iframeWin = layero.find('iframe')[0];
                    var result = iframeWin.contentWindow.doSubmit(function (id) {
                        self.addMLink(self.beginNode,endNode,1,"","",id,true);
//                    var l = new JTopo.Link(self.beginNode,endNode );
//                    l.id = id;
//                    l.lineWidth = 3;
//                    self.scene.add(l);
                        self.beginNode = null;
                        self.link = null;
                    })

                }
            });
        }

    }
    /***
     * 拖动后更新节点位置信息
     * **/
    TopoEditor.prototype.updateNodeLocation = function(id,x,y){
        if(this.editMode){
            $.post(contextPath+"/topoview/updateNodeLocation/"+id,{
                pos: x+"_"+y
            })
//            $.getJSON(contextPath+"/topoview/updateNodeLocation/"+id+"/"+x+"_"+y,function(data){
////                console.log(data)
//            })
        }

    }
    TopoEditor.prototype.removeLink = function (id) {
        var self = this;
        var eles = self.scene.getDisplayedElements();
        $.each(eles,function(i,iteam){
            if ( iteam instanceof JTopo.Link) {
                if(iteam.id ==id){
                    self.scene.remove(iteam)
                }
            }
        })
    }
    TopoEditor.prototype.removeNode = function (id) {
        var self = this;
        var eles = self.scene.getDisplayedElements();
        $.each(eles,function(i,iteam){
            if ( iteam instanceof JTopo.Node) {
                if(iteam.id ==id){
                    self.scene.remove(iteam)
                }
            }
        })
    }
    TopoEditor.prototype.initCanvas = function () {
        var self = this;
        if (this.stage && this.scene) {
            this.scene.clear();
            return;
        }
        $(this.canvas).attr("width", $(this.canvas).parent().width())
        $(this.canvas).attr("height", $(this.canvas).parent().height()-30);
        this.stage = new JTopo.Stage(this.canvas);
        this.scene = new JTopo.Scene(this.stage);
        showJTopoToobar(this.stage);
        this.stage.wheelZoom = 1.2;
        this.stage.eagleEye.visible = this.eagleEye;
        this.tempNodeA = new JTopo.Node('tempA');
        this.tempNodeA.setSize(1, 1);
        this.tempNodeZ = new JTopo.Node('tempZ');
        this.tempNodeZ.setSize(1, 1);
        //清除起始节点不完整的拖放线
        this.scene.mousedown(function (e) {
            if (self.link && (e.target == null || e.target === self.beginNode || e.target === self.link)) {
                this.remove(self.link);
            }
        });
        //画布上单击事件

        //处理右键菜单，左键连线
        this.scene.mouseup(function (e) {
            self.rightMenu.hide();//隐藏所有菜单
            if (e.target)
                self.selectNode = e.target;
            if (e.button == 2) {//右键菜单
                self.dragNode = null;
                self.isDragMode = false;
                var isShowMenu = false;
                if(e.target){
                    if (e.target instanceof JTopo.Node) {
                        for (var i = 0; i < self.rightMenu.rightMenus.length; i++) {
                            if (self.rightMenu.rightMenus[i].type.indexOf('node')>-1) {
                                self.rightMenu.rightMenus[i].show = true;
                                isShowMenu =true;
                            } else {
                                self.rightMenu.rightMenus[i].show = false;
                            }
                        }
                    }
                    else if (e.target instanceof JTopo.Link) {// 链路
                        for (var i = 0; i < self.rightMenu.rightMenus.length; i++) {
                            if (self.rightMenu.rightMenus[i].type.indexOf('link')>-1) {
                                isShowMenu =true;
                                self.rightMenu.rightMenus[i].show = true
                            } else {
                                self.rightMenu.rightMenus[i].show = false;
                            }
                        }
                    }
                }else{
                    for (var i = 0; i < self.rightMenu.rightMenus.length; i++) {
                        if (self.rightMenu.rightMenus[i].type.indexOf('scene')>-1) {
                            isShowMenu =true;
                            self.rightMenu.rightMenus[i].show = true
                        } else {
                            self.rightMenu.rightMenus[i].show = false;
                        }
                    }
                }
                //如果一个显示的条目都没有 不显示
                if(!isShowMenu){
                    return ;
                }
                var height = $("#canvas").height();
                var width = $("#canvas").width();
                var menuy = e.pageY;
                var menux = e.pageX;
                if (menuy >= height - 100) {
                    menuy = menuy - 100;
                }
                if (menux >= width - 100) {
                    menux = menux - 100;
                }
                self.layerx = e.x;
                self.layery = e.y;
                self.rightMenu.x = menux;
                self.rightMenu.y = menuy;
                self.rightMenu.show();
            } else if (e.button == 1) {//中键

            } else if (e.button == 0) {//左键
                if(self.isDragAdd){//标示通过拖动Tree 添加节点
                    var dragNode  = self.dragAddNode;
                    $.post(contextPath+"/topoview/addObj",{
                        viewid:_viewid,
                        viewposition: e.x+'_'+e.y,
                        objfid:dragNode.id,
                        objtype:dragNode.dataType,
                        icon: 'topo_155.png'
                    },function(data){
                        if (data.state) {
                            var node = {
                                id: data.msg,
                                name: dragNode.name,
                                objfid: dragNode.id,
                                objpid: data.msg,
                                objtype: dragNode.dataType,
                                icon: 'topo_155.png',
                                x:e.x,
                                y:e.y,
                            }
                            self.addNode(node)
                        }
                    });
                    self.isDragAdd=false;
                    return false;
                }
                if (self.isDragMode) {//表示拖动图层上的节点
                    self.updateNodeLocation(self.dragNode.objpid,self.dragNode.x, self.dragNode.y);
//                    if(!self.editMode){
//                        top.layer.msg("当前查看模式,不会更新数据")
//                    }else{
//                        self.updateNodeLocation(self.dragNode.objpid,e.x, e.y);
//                    }
                    self.isDragMode = false;
                    self.dragNode = null;
                } else {

                    if (self.dragNode) {//有拖动节点没拖动状态 表示拖动图上图元 所以不走上面的添加对象，并且不连线
                        self.dragNode = null;
                    } else {
                        if (e.target != null && e.target instanceof JTopo.Node) {
                            if (self.beginNode == null) {
                                self.beginNode = e.target;
                                self.link = new JTopo.Link(self.tempNodeA, self.tempNodeZ);
                                self.tempNodeA.setLocation(e.x, e.y);
                                self.tempNodeZ.setLocation(e.x, e.y);
                                this.add(self.link);
                            } else if (e.target && e.target instanceof JTopo.Node && self.beginNode !== e.target) {//结束连线
                                if(self.editMode){
                                    var endNode = e.target;
                                    if(self.link){
                                        if(self.selectView.viewmode!=3&&userid!=self.selectView.userid){
                                            top.layer.msg("当前用户没有权限操作")
                                        }else{
                                            self.addLink(endNode);//添加链接
                                            this.remove(self.link), self.link = null;
                                        }
                                    }else{
                                        self.beginNode = null;
                                    }
                                }else{
                                    top.layer.msg("当前查看模式,无法更新数据");
                                    this.remove(self.link);
                                    self.link = null;
                                    self.beginNode = null;
                                }

                            } else {
                                self.beginNode = null;
                            }
                        } else {
                            if (self.link)
                                this.remove(self.link);
                            self.beginNode = null;
                        }
                    }
                }
            }
        });
//          编辑模式
        //动态更新连线坐标
        this.scene.mousemove(function (e) {
            if (!self.isSelectedMode && self.beginNode)
                self.tempNodeZ.setLocation(e.x, e.y);
        });
//        this.scene.mousedrag(function (e) {
//            $("#info").text("x:"+ e.x.toFixed(2)+",y:"+ e.y.toFixed(2));
//            if(e.target&& e.target instanceof JTopo.Node){//如果有节点表示为拖动节点
//                self.dragNode = e.target;//防止拖动后有连线
//                self.isDragMode = true;
//            }
//            if (!self.isSelectedMode && self.beginNode)
//                self.tempNodeZ.setLocation(e.x, e.y);
//        });


        //单击编辑器隐藏菜单
//        this.stage.click(function(event){
//            editor.utils.hideRuleLines();
//            if(event.button == 0){
//                // 关闭弹出菜单（div）
//                $("div[id$='Menu']").hide();
//            }
//        });
//
//        this.stage.mouseout(function(e){
//            //清空标尺线
//            editor.utils.hideRuleLines();
//            //删掉节点带出来的连线
//            if (self.link && !self.isSelectedMode && (e.target == null || e.target === self.beginNode || e.target === self.link)) {
//                self.scene.remove(self.link);
//            }
//        });
//
//        //画布尺寸自适应
//        this.stage.mouseover(function(e){
//            if(editor.stage){
//                var w = $("#contextBody").width(),wc = editor.stage.canvas.width,
//                        h = $("#contextBody").height(),hc = editor.stage.canvas.height;
//                if(w > wc){
//                    editor.stage.canvas.width = $("#contextBody").width();
//                }
//                if(h > hc){
//                    editor.stage.canvas.height = $("#contextBody").height();
//                }
//                editor.stage.paint();
//            }
//        });
    }

    //    var topo_rightMenu = new Vue({
    //        el: '#topo_rightMenu1',
    //        computed: {
    //            right_menu_style: function () {
    //                return {
    //                    'z-index': 5555,
    //                    left: this.x,
    //                    top: this.y,
    //                    display: this.isSshow ? 'block' : 'none'
    //                }
    //            }
    //        },
    //        data: {
    //            isSshow: false,
    //            x: 0,
    //            y: 0,
    ////            isShow:false,
    //            rightMenus: [
    //                {name: '添加节点', show: true, eventName: 'addNode', type: 'node'},
    ////                {name: '创建拓扑对象', show: true, eventName: 'show', type: 'node'},
    //                {name: '删除对象', show: true, eventName: 'delete', type: 'node'}
    //            ]
    //        },
    //        methods: {
    //            show: function () {
    //                this.isSshow = true;
    //            },
    //            hide: function () {
    //                this.isSshow = false;
    //            },
    //            menuclick: function (event, e) {
    //                this.isSshow = false;
    //                eventHandle(event, e, currentNode)
    //            }
    //        }
    //    });

    /****
     * 事件分发
     */
//    function eventHandle(event, obj) {
//        topo_rightMenu.hide();
//        if (event.eventName == 'addNode') {
////            var x = $("#topo_rightMenu").css("left");
////            var y = $("#topo_rightMenu").css("top");
//            var index = top.layer.open({
//                type: 2,
//                area: ['500px', '300px'],
//                title: '创建试图对象',
//                maxmin: false, //开启最大化最小化按钮
//                content: contextPath + '/topoview/addViewObj/0/0',
//                btn: ['确定', '关闭'],
//                success: function (layero, index) {
//                    var name = layero.find('iframe')[0].name;
//                    top.winref[name] = window.name;
//                },
//                yes: function (index, layero) {
//                    var body = top.layer.getChildFrame('body', index);
//                    var iframeWin = layero.find('iframe')[0];
//                }
//            });
//        }
//        if (event.eventName == 'delete') {
//            scene.remove(currentNode);
//        }
//    }

        //    var currentNode = null;
        //    var stage = null;
        //    var scene = null;
        // var topoEditor = null;
    $(function () {
        topoEditor = new TopoEditor();
        topoEditor.init();
        if(_viewid){
            topoEditor.isChildTopo = true ;
            topoEditor.loadData(_viewid);
            var iteam = {};
            iteam.name = "${viewobj.viewname}";
            iteam.userid = "${viewobj.userid}";
            iteam.viewmode = ${viewobj.viewmode};
            iteam.id = ${viewobj.viewid};
            iteam.dataType = 2;
            topoEditor.selectView = iteam;
            <c:if test="${empty typeMode||typeMode !='edit'}">
            $("#main").layout("collapse","west");
            </c:if>
        }
        try{
            top.hideLeft();
        }catch(e){

        }
    })
    function qq(value, name) {
        var zTree = $.fn.zTree.getZTreeObj("ztree"), nodes = zTree.getNodesByParam("getNodes");
        zTree.showNodes(nodes);
        if (value != '') {
            nodes = nodes.filter(function (e) {
                if (e.isParent)return false;
                if (e.NAME == null) return true;
                return e.NAME.indexOf(value) < 0;
            });
            zTree.hideNodes(nodes);
        }
    }
    function getElementPos(el) {
        var ua = navigator.userAgent.toLowerCase();
        var isOpera = (ua.indexOf('opera') != -1);
        var isIE = (ua.indexOf('msie') != -1 && !isOpera); // not opera spoof
//        var el = document.getElementById(elementId);
        if (el.parentNode === null || el.style.display == 'none') {
            return false;
        }
        var parent = null;
        var pos = [];
        var box;
        if (el.getBoundingClientRect) // IE
        {
            box = el.getBoundingClientRect();
            var scrollTop = Math.max(document.documentElement.scrollTop, document.body.scrollTop);
            var scrollLeft = Math.max(document.documentElement.scrollLeft, document.body.scrollLeft);
            return {
                x: box.left + scrollLeft,
                y: box.top + scrollTop
            };
        }
        else if (document.getBoxObjectFor) // gecko
        {
            box = document.getBoxObjectFor(el);
            var borderLeft = (el.style.borderLeftWidth) ? parseInt(el.style.borderLeftWidth) : 0;
            var borderTop = (el.style.borderTopWidth) ? parseInt(el.style.borderTopWidth) : 0;
            pos = [box.x - borderLeft, box.y - borderTop];
        }
        else // safari & opera
        {
            pos = [el.offsetLeft, el.offsetTop];
            parent = el.offsetParent;
            if (parent != el) {
                while (parent) {
                    pos[0] += parent.offsetLeft;
                    pos[1] += parent.offsetTop;
                    parent = parent.offsetParent;
                }
            }
            if (ua.indexOf('opera') != -1 ||
                    (ua.indexOf('safari') != -1 && el.style.position == 'absolute')) {
                pos[0] -= document.body.offsetLeft;
                pos[1] -= document.body.offsetTop;
            }
        }
        if (el.parentNode) {
            parent = el.parentNode;
        }
        else {
            parent = null;
        }
        while (parent && parent.tagName != 'BODY' && parent.tagName != 'HTML') { // account for any scrolled ancestors
            pos[0] -= parent.scrollLeft;
            pos[1] -= parent.scrollTop;
            if (parent.parentNode) {
                parent = parent.parentNode;
            }
            else {
                parent = null;
            }
        }
        return {
            x: pos[0],
            y: pos[1]
        };
    }
    function deleteLink(id){
        topoEditor.removeLink(id)
    }

    // 页面工具栏
    function showJTopoToobar(stage){
        var toobarDiv = $('<div class="jtopo_toolbar">').html(''

                +'<input type="radio" name="modeRadio" value="normal" checked id="r1"/>'
                +'<label for="r1"> 默认</label>'
                +'&nbsp;<input type="radio" name="modeRadio" value="select" id="r2"/><label for="r2"> 框选</label>'
                +'&nbsp;<input type="radio" name="modeRadio" value="edit" id="r4"/><label for="r4"> 加线</label>'
                +'&nbsp;&nbsp;<input type="button" id="viewtype" value="查看"/>'
                +'&nbsp;&nbsp;<input type="button" id="centerButton" value="居中显示"/>'
                +'<input type="button" id="zoomOutButton" value=" 放 大 " />'
                +'<input type="button" id="zoomInButton" value=" 缩 小 " />'
                +'&nbsp;&nbsp;<input type="checkbox" id="zoomCheckbox"/><label for="zoomCheckbox">鼠标缩放</label>'
                +'&nbsp;&nbsp;<input type="text" id="findText" style="width: 100px;" value="" onkeydown="enterPressHandler(event)">'
                + '<input type="button" id="findButton" value=" 查 询 ">');

        $('#canvas').before(toobarDiv);

        // 工具栏按钮处理
        $("input[name='modeRadio']").click(function(){
            stage.mode = $("input[name='modeRadio']:checked").val();
        });
        $('#centerButton').click(function(){
            stage.centerAndZoom(); //缩放并居中显示
        });
        $('#zoomOutButton').click(function(){
            stage.zoomOut();
        });
        $('#zoomInButton').click(function(){
            stage.zoomIn();
        });
        $('#cloneButton').click(function(){
            stage.saveImageInfo();
        });
        $('#exportButton').click(function() {
            stage.saveImageInfo();
        });
        $('#printButton').click(function() {
            stage.saveImageInfo();
        });
        $('#zoomCheckbox').click(function(){
            if($('#zoomCheckbox').is(':checked')){
                stage.wheelZoom = 1.2; // 设置鼠标缩放比例
            }else{
                stage.wheelZoom = null; // 取消鼠标缩放比例
            }
        });
        $('#fullScreenButton').click(function(){
            runPrefixMethod(stage.canvas, "RequestFullScreen")
        });
        $('#viewtype').click(function(){
            location=contextPath+"/topoview/view/"+_viewid;
        });
        window.enterPressHandler = function (event){
            if(event.keyCode == 13 || event.which == 13){
                $('#findButton').click();
            }
        };

        // 查询
        $('#findButton').click(function(){
            var text = $('#findText').val().trim();
            //var nodes = stage.find('node[text="'+text+'"]');
            var scene = stage.childs[0];
            var nodes = scene.childs.filter(function(e){
                return e instanceof JTopo.Node;
            });
            nodes = nodes.filter(function(e){
                if(e.text == null) return false;
                return e.text.indexOf(text) != -1;
            });

            if(nodes.length > 0){
                var node = nodes[0];
                node.selected = true;
                var location = node.getCenterLocation();
                // 查询到的节点居中显示
                stage.setCenter(location.x, location.y);

                function nodeFlash(node, n){
                    if(n == 0) {
                        node.selected = false;
                        return;
                    };
                    node.selected = !node.selected;
                    setTimeout(function(){
                        nodeFlash(node, n-1);
                    }, 300);
                }

                // 闪烁几下
                nodeFlash(node, 6);
            }
        });
    }
</script>

</html>