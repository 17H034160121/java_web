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
                <label for="name" class="col-sm-3 control-label">名字</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="name" id="name"
                           placeholder="请输入名字" value="${requestScope.data.name}">
                </div>
            </div>
            <div class="form-group">
                <label for="school" class="col-sm-3 control-label">学校</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" name="school" id="school"
                           placeholder="请输入学校" value="${requestScope.data.school}">
                </div>
            </div>
            <div class="form-group">
                <label for="academy" class="col-sm-3 control-label">学院</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" id="academy" name="academy"
                           placeholder="请输入学院" value="${requestScope.data.academy}">
                </div>
            </div>
            <div class="form-group">
                <label for="major" class="col-sm-3 control-label">专业</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" id="major" name="major"
                           placeholder="请输入专业" value="${requestScope.data.major}">
                </div>
            </div>
            <div class="form-group">
                <label for="image" class="col-sm-3 control-label">照片文件名</label>
                <div class="col-sm-7">
                    <input type="text" class="form-control" id="image" name="image"
                           placeholder="请输入照片文件名" value="${requestScope.data.image}">
                </div>
            </div>
            <div class="form-group">
                <label for="interest" class="col-sm-3 control-label" style="margin-right: 17px">个人兴趣</label>
                <textarea class="form-control col-sm-offset-3" rows="4" id="interest" style="max-width: 720px"
                          placeholder="请输入兴趣爱好" name="interest">${requestScope.data.interest}</textarea>
            </div>
            <div class="form-group">
                <label for="honor" class="col-sm-3 control-label" style="margin-right: 17px">个人荣誉</label>
                <textarea class="form-control col-sm-offset-3" rows="4" id="honor" style="max-width: 720px"
                          placeholder="请输入个人荣誉" name="honor">${requestScope.data.honor}</textarea>
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