<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>jqGrid - Ace Admin</title>

    <meta name="description" content="Dynamic tables and grids using jqGrid plugin"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="../css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../font-awesome/4.5.0/css/font-awesome.min.css"/>

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="../css/jquery-ui.min.css"/>
    <link rel="stylesheet" href="../css/bootstrap-datepicker3.min.css"/>
    <link rel="stylesheet" href="../css/ui.jqgrid.min.css"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="../css/fonts.googleapis.com.css"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="../css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="../css/ace-part2.min.css"
          class="ace-main-stylesheet"/>
    <![endif]-->
    <link rel="stylesheet" href="../css/ace-skins.min.css"/>
    <link rel="stylesheet" href="../css/ace-rtl.min.css"/>

    <!--[if lte IE 9]>
    <link rel="stylesheet" href="../css/ace-ie.min.css"/>
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="../js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="../js/html5shiv.min.js"></script>
    <script src="../js/respond.min.js"></script>
    <![endif]-->


</head>

<body class="no-skin">

<div class="main-container ace-save-state" id="main-container">
    <script type="text/javascript">
        try {
            ace.settings.loadState('main-container')
        } catch (e) {
        }
    </script>

    <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
            try {
                ace.settings.loadState('sidebar')
            } catch (e) {
            }
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
            <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
                cct个人网页后台
            </div>

            <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
                cct个人网页后台
            </div>
        </div><!-- /.sidebar-shortcuts -->

        <ul class="nav nav-list">

            <li class="active open">
                <a href="#" class="dropdown-toggle">
                    <i class="menu-icon fa fa-list"></i>
                    <span class="menu-text"> 数据操作 </span>

                    <b class="arrow fa fa-angle-down"></b>
                </a>

                <b class="arrow"></b>

                <ul class="submenu">
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/FindByPageServlet?goTo=personPage.jsp&type=Person">
                            <i class="menu-icon fa fa-caret-right"></i>
                            个人信息
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/FindByPageServlet?goTo=viewPage.jsp&type=View">
                            <i class="menu-icon fa fa-caret-right"></i>
                            家乡风景
                        </a>

                        <b class="arrow"></b>
                    </li>

                    <li class="active">
                        <a href="${pageContext.request.contextPath}/FindByPageServlet?goTo=foodPage.jsp&type=Food">
                            <i class="menu-icon fa fa-caret-right"></i>
                            家乡美食
                        </a>

                        <b class="arrow"></b>
                    </li>
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/FindByPageServlet?goTo=culturePage.jsp&type=Culture">
                            <i class="menu-icon fa fa-caret-right"></i>
                            家乡文化
                        </a>

                        <b class="arrow"></b>
                    </li>
                </ul>
            </li>
        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state"
               data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>

    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs ace-save-state" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li>
                        <i class="ace-icon fa fa-home home-icon"></i>
                        <a href="#">cct个人网页后台</a>
                    </li>

                    <li>
                        <a href="#">数据操作</a>
                    </li>
                    <li class="active">家乡食物</li>
                </ul><!-- /.breadcrumb -->
            </div>

            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <form class="form-inline col-md-8" style="margin: 10px" action="${pageContext.request.contextPath}/FindByPageServlet?goTo=foodPage.jsp&type=Food" method="post">
                            <div class="form-group col-md-5">
                                <label for="id">编号</label>
                                <input type="text" class="form-control" id="id" placeholder="编号" name="id" value="${condition.id[0]}">
                            </div>
                            <div class="form-group col-md-5">
                                <label for="name">美食名</label>
                                <input type="text" class="form-control" id="name" placeholder="美食名" name="name" value="${condition.name[0]}">
                            </div>
                            <button type="submit" class="btn btn-default">查询</button>
                        </form>

                        <a class="btn btn-primary col-md-1 pull-right" style="margin-right: 5px"
                           href="${pageContext.request.contextPath}/back/foodForm.jsp">添加</a>
                        <a class="btn btn-primary col-md-1 pull-right" id="delSelected">删除选中</a>

                        <form id="form" action="${pageContext.request.contextPath}/DelSelectedServlet?type=Food"
                              method="post">
                            <table class="table table-hover col-xs-12 " id="grid-table"
                                   style="text-align: center;font-size: 15px; table-layout: fixed;">
                                <tr class="info">
                                    <td width="5%"><input type="checkbox" id="firstCb"></td>
                                    <td width="10%">操作</td>
                                    <td width="5%">编号</td>
                                    <td width="10%">美食名</td>
                                    <td width="10%">图像名</td>
                                    <td width="35%">简介</td>
                                    <td width="10%">价格</td>
                                    <td width="15%">地址</td>
                                </tr>
                                <c:forEach items="${pageBean.list}" var="view">
                                    <tr>
                                        <td><input type="checkbox" name="uid" value="${view.id}" class="tdcheck"></td>
                                        <td>
                                            <a class="ace-icon fa fa-pencil  light-blue bigger-110" title="修改" href="${pageContext.request.contextPath}/FindOnlyServlet?id=${view.id}&type=Food"></a>
                                            <a class="ace-icon fa fa-trash  light-blue bigger-110" title="删除" href="javascript:deleteOnly(${view.id});"></a>
                                        </td>
                                        <td>${view.id}</td>
                                        <td>${view.name}</td>
                                        <td style="overflow: hidden;text-overflow: ellipsis;
                                            white-space: nowrap;">${view.image}</td>
                                        <td style="overflow: hidden;text-overflow: ellipsis;
                                            white-space: nowrap;">${view.introduce}</td>
                                        <td>${view.price}</td>
                                        <td style="overflow: hidden;text-overflow: ellipsis;
                                            white-space: nowrap;">${view.address}</td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </form>
                        <div class="col-md-5"></div>
                        <nav class="col-md-5" aria-label="Page navigation">
                            <ul class="pagination">
                                <c:if test="${pageBean.currentPage == 1}">
                                    <li class="disabled">
                                        <a href="#"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${pageBean.currentPage != 1}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/FindByPageServlet?currentPage=${pageBean.currentPage-1}&rows=5&goTo=foodPage.jsp&type=Food&id=${condition.id[0]}&name=${condition.name[0]}"
                                           aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                </c:if>
                                <c:forEach begin="1" end="${pageBean.totalPage}" var="i">
                                    <c:if test="${pageBean.currentPage==i}">
                                        <li class="active"><a
                                                href="${pageContext.request.contextPath}/FindByPageServlet?currentPage=${i}&rows=5&goTo=foodPage.jsp&type=Food&id=${condition.id[0]}&name=${condition.name[0]}">${i}</a>
                                        </li>
                                    </c:if>
                                    <c:if test="${pageBean.currentPage!=i}">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/FindByPageServlet?currentPage=${i}&rows=5&goTo=foodPage.jsp&type=Food&id=${condition.id[0]}&name=${condition.name[0]}">${i}</a>
                                        </li>
                                    </c:if>
                                </c:forEach>


                                <c:if test="${pageBean.currentPage == pageBean.totalPage}">
                                    <li class="disabled">
                                        <a href="#"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>

                                <c:if test="${pageBean.currentPage != pageBean.totalPage}">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/FindByPageServlet?currentPage=${pageBean.currentPage+1}&rows=5&goTo=foodPage.jsp&type=Food&id=${condition.id[0]}&name=${condition.name[0]}"
                                           aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </c:if>

                                <span style="font-size: 20px; margin-left: 5px">
                                    共有${pageBean.totalCount}条记录,分为${pageBean.totalPage}页.
                                </span>
                            </ul>
                        </nav>

                        <!-- PAGE CONTENT ENDS -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->

    <div class="footer">
        <div class="footer-inner">
            <div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">cct的个人网页</span>
							基于java的web设计 &copy; 2020-5-27
						</span>

                &nbsp; &nbsp;
                <span class="action-buttons">
							<a href="#">
								<i class="ace-icon fa fa-qq light-blue bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-weibo text-primary bigger-150"></i>
							</a>

							<a href="#">
								<i class="ace-icon fa fa-weixin orange bigger-150"></i>
							</a>
						</span>
            </div>
        </div>
    </div>

    <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->

<script>

    //单条删除的警示框单机事件
    function deleteOnly(id) {
        if (confirm("确定删除吗?")) {
            location.href = "${pageContext.request.contextPath}/DelSelectedServlet?uid=" + id + "&type=Food";
        }
    }

    window.onload = function () {
        //删除选中的弹出警示框单击事件
        document.getElementById("delSelected").onclick = function () {
            var cbs = document.getElementsByName("uid");
            var key = false;
            for (var i = 0; i < cbs.length; i++) {
                if (cbs[i].checked) {
                    key = true;
                    break;
                }
            }
            if (key) {
                if (confirm("确定删除选中数据吗?")) {
                    document.getElementById("form").submit();
                }
            } else {
                alert("选择为空,请选择");
            }
        }

        //全选复选框的单机事件
        document.getElementById("firstCb").onclick = function () {
            var cbs = document.getElementsByName("uid");
            for (var i = 0; i < cbs.length; i++) {
                cbs[i].checked = this.checked;
            }
        }

        //点击当行选中复选框
        $("tr").slice(1).on('click', function (event) { // slice(1) 去掉表头
            // 找到checkbox对象
            var chks = $("input[type='checkbox']", this);
            if (chks.prop("checked")) {
                chks.prop("checked", false);
            } else {
                chks.prop("checked", true);
            }
        });

        //阻止冒泡避免出现重复点击事件,导致失效
        var $input = $("input[type='checkbox']");
        for (let i = 0; i < $input.length; i++) {
            $($input[i]).click(function (event) {
                event.stopPropagation();
            });
        }

    }
</script>

<!--[if !IE]> -->
<script src="../js/jquery-2.1.4.min.js"></script>

<!-- <![endif]-->

<!--[if IE]>
<script src="../js/jquery-1.11.3.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if ('ontouchstart' in document.documentElement) document.write("<script src='../js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
</script>
<script src="../js/bootstrap.min.js"></script>

<!-- page specific plugin scripts -->
<script src="../js/bootstrap-datepicker.min.js"></script>
<script src="../js/jquery.jqGrid.min.js"></script>
<script src="../js/grid.locale-en.js"></script>

<!-- ace scripts -->
<script src="../js/ace-elements.min.js"></script>
<script src="../js/ace.min.js"></script>
</body>
</html>
