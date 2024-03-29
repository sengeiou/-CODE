<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>test - jquery.pagination.js</title>
    <link href="<%=request.getContextPath() %>/framework/jqueryui/frame/JqueryPagination/jquery.pagination.css" rel="stylesheet" />
    <script src="<%=request.getContextPath() %>/framework/jqueryui/frame/JqueryPagination/jquery-1.11.2.min.js"></script>
    <script src="<%=request.getContextPath() %>/framework/jqueryui/frame/JqueryPagination/jquery.pagination-1.2.7.min.js"></script>
    <style>
        body {
            font-family: 'Microsoft YaHei';
        }
    </style>
</head>
<body>
    <div style="width:1000px; margin:0 auto;">
        <header>
            <h1> jquery pagination plugin</h1>
            <a href="http://mricle.com/JqueryPagination" target="_blank">mricle.com/JqueryPagination</a>
            <br />
            <a href="https://github.com/mricle/pagination" target="_blank">GitHub</a>
        </header>
        <section id="demo">
            <h4>demo</h4>
            <fieldset>
                <legend>form</legend>
                <form id="form">
                    name1:  <input id="name1" type="text" name="name1" /><br />
                    name2:   <input id="name2" type="text" name="name2" /><br />
                </form>
            </fieldset>
            <div>
                <button class="init" type="button">init page</button><br />
                <button class="remote" type="button">remote</button>
                <input class="pageIndex" type="text" style="width:70px;" placeholder="pageIndex" /><br />
                <button class="destroy" type="button">destroy</button><br />
            </div><br />

			<!-- 分页控件ID -->            
            <div id="page" class="m-pagination"></div>
            
            
            <div id="label"></div>
        </section>
    </div>
    <script>
        $("#demo .init").click(function () {
            $("#page").page({
                debug: true,
                showInfo: true,
                showJump: true,
                showPageSizes: true,
                remote: {
                    url: '<%=request.getContextPath() %>/json/data.json',
                    success: function (data) {
                        $("#eventLog").append(' remote callback : ' + JSON.stringify(data) + '<br />');
                    },
                    params: $('#form').serialize()
                }
            });
        })
        $("#demo .remote").click(function () {
            var pageIndex = $("#demo .pageIndex").val();
            var params = $('#form').serialize();
            var params2 = $('#form').serializeArray();
            if (pageIndex)
                $("#page").page('remote', pageIndex, params);
            else
                $("#page").page('remote', params);
        })
        $("#demo .destroy").click(function () {
            $("#page").page('destroy');
        })
    </script>
</body>
</html>
