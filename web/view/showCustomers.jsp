<%--
  Created by IntelliJ IDEA.
  User: 23095
  Date: 2019/7/22
  Time: 17:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>客户查询</title>
    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>
    <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.4.1.js"></script>
    <link rel="stylesheet" href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
</head>

<body>

<div class="container">
    <%--      标题栏--%>
    <div class="row">
        <div class="col-md-12">
            <h1>
                首页
            </h1>
        </div>
    </div>
    <%--  添加删除--%>
    <div class="row">
        <div class="col-md-4 col-md-offset-12">
            <button class="btn btn-primary">新增</button>
            <button class="btn btn-danger">删除</button>
        </div>
    </div>
    <%--  表格数据显示--%>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover" id="customers_table">
                <thead>
                <tr>
                    <th>customerId</th>
                    <th>name</th>
                    <th>tel</th>
                    <th>company</th>
                    <th>操作
                    </th>
                </tr>
                </thead>
                <%--            表项--%>
                <tbody>

                </tbody>
            </table>
        </div>
    </div>
    <%--  分页条--%>
    <div class="row">
        <%--    分页信息--%>
        <div class="col-md-6" id="page_info_area">

        </div>
        <%--  分页条本条--%>
        <div class="col-md-6" id="page_nav_area">
        </div>
    </div>

    <script type="text/javascript">
        $(function () {
            $.ajax({
                url: "${APP_PATH}/getCustomers",
                data: "pn=1",
                type: "GET",
                success: function (result) {
                    build_customers_table(result);
                    build_page_info(result);
                    build_page_nav(result);
                }
            });
        });

        function build_customers_table(result) {
            var customers = result.attributes.pageInfo.list;
            $.each(customers, function (index, item) {
                var idTd = $("<td></td>").append(item.id);
                var nameTd = $("<td></td>").append(item.name);
                var telTd = $("<td></td>").append(item.tel);
                var companyIdTd = $("<td></td>").append(item.companyId);

                var editBtn = $("<button></button>").addClass("btn btn-primary btn-sm")
                    .append($("<span></span>").addClass("glyphicon glyphicon-pencil")).append("编辑");
                var delBtn = $("<button></button>").addClass("btn btn-danger btn-sm")
                    .append($("<span></span>").addClass("glyphicon glyphicon-remove")).append("删除");
                var btnTd = $("<td></td>").append(editBtn).append(" ").append(delBtn);
                $("<tr></tr>").append(idTd)
                    .append(nameTd)
                    .append(telTd)
                    .append(companyIdTd)
                    .append(btnTd)
                    .appendTo("#customers_table tbody");
            });
        }

        // 解析分页信息
        function build_page_info(result) {
            $("#page_info_area").append("当前第" +
                result.attributes.pageInfo.pageNum +
             "页，总" + result.attributes.pageInfo.pages +
            "页，总" + result.attributes.pageInfo.total +
                "条记录数");
        }
        
        // 导航条信息
        function build_page_nav(result) {
            var firstPageLi = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
            var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
            var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
            var lastPageLi = $("<li></li>").append($("<a></a>").append("尾页").attr("href", "#"));
            var ul = $("<ul></ul>").addClass("pagination");

            ul.append(firstPageLi).append(prePageLi);
            $.each(result.attributes.pageInfo.navigatepageNums, function (index, item) {
               var numLi =  $("<li></li>").append($("<a></a>").append(item));
               ul.append(numLi);
            });
            ul.append(nextPageLi).append(lastPageLi);
            var navEle = $("<nav></nav>").append(ul);
            navEle.appendTo("#page_nav_area");
        }
    </script>
</div>
</body>
</html>
