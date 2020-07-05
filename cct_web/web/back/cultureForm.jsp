<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" href="../css/style.css"/>
    <link rel="stylesheet" href="../css/daohang.css"/>
    <link rel="stylesheet" href="../css/bootstrap.css"/>
    <link rel="stylesheet" href="../css/footer&cbl.css"/>
    <script defer="defer" type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
    <script defer="defer" type="text/javascript" src="../js/bootstrap.js"></script>
    <script defer="defer" type="text/javascript" src="../js/hp.js"></script>

    <title>CCT的个人主页</title>
    <style type="text/css">
    </style>
</head>

<body>
<div id="main">

    <!-- 	导航窗部分开始 -->
    <%@ include file="../backHead.txt" %>
    <!-- 导航窗部分结束 -->

    <!-- 内容部分开始 -->
    <div style="margin-top: 30px">
        <h3 style="margin-left: 430px;margin-bottom: 30px;">请在下面填写需要添加的风景数据</h3>
        <form class="form-horizontal" role="form"
              action="${pageContext.request.contextPath}/AddOrUpdateServlet" method="post">

            <%--这是一个隐藏域,用来放更新时的id--%>
            <input type="hidden" name="id" value="${requestScope.data.id}">

            <div class="form-group">
                <label for="name" class="col-sm-3 control-label">文化名</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="name" id="name"
                           placeholder="请输入文化名称" value="${requestScope.data.name}">
                </div>
            </div>
            <div class="form-group">
                <label for="introduce" class="col-sm-3 control-label" style="margin-right: 17px">文化介绍</label>
                <textarea class="form-control col-sm-offset-3" rows="4" id="introduce" style="max-width: 720px"
                          placeholder="请输入文化介绍" name="introduce">${requestScope.data.introduce}</textarea>
            </div>
            <div class="form-group">
                <label for="time" class="col-sm-3 control-label">文化时间</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" id="time" name="time"
                           placeholder="请输入文化时间"  value="${requestScope.data.time}">
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-offset-5">
                    <input type="submit" class="btn btn-default" style="margin-right: 20px">
                    <input class="btn btn-default" type="reset" value="重置" style="margin-right: 20px">
                    <input type="button" class="btn btn-default" value="返回"
                            onclick="window.location.href='${pageContext.request.contextPath}/FindByPageServlet?goTo=personPage.jsp&type=Person';">
                </div>
            </div>
        </form>
    </div>

    <%@ include file="../footer.txt" %>
</div>
</body>


</html>