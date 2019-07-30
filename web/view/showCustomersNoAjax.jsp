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
            <button class="btn bg-danger">删除</button>
        </div>
    </div>
    <%--  表格数据显示--%>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-hover ">
                <tr>
                    <th>customerId</th>
                    <th>name</th>
                    <th>tel</th>
                    <th>company</th>
                    <th>操作
                    </th>
                </tr>
                <%--            表项--%>
                <c:forEach items="${pageInfo.list}" var="customer">
                    <tr>
                        <th>${customer.id}</th>
                        <th>${customer.name}</th>
                        <th>${customer.tel}</th>
                        <th>${customer.companyId}</th>
                        <th>
                            <button class="btn btn-primary btn-sm">
                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>编辑
                            </button>
                            <button class="btn btn-danger btn-sm">
                                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
                            </button>
                        </th>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>
    <%--  分页条--%>
    <div class="row">
        <%--    分页信息--%>
        <div class="col-md-6">
            当前第${pageInfo.pageNum}页，总${pageInfo.pages}页，总${pageInfo.total}条记录数
        </div>
        <%--  分页条本条--%>
        <div class="col-md-6">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <%--                    首页--%>
                    <c:if test="${!pageInfo.isFirstPage}">
                        <li><a href="${APP_PATH}/showCustomers?pageNum=1">首页</a></li>
                    </c:if>
                    <c:if test="${pageInfo.isFirstPage}">
                        <li class="disabled"><a href="#">首页</a></li>
                    </c:if>
                    <%--    上一页--%>
                    <c:if test="${!pageInfo.hasPreviousPage}">
                        <li class="disabled">
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${pageInfo.hasPreviousPage}">
                        <li>
                            <a href="${APP_PATH}/showCustomers?pageNum=${pageInfo.prePage}" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <%--    页码--%>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="navPageNum">
                        <c:if test="${navPageNum == pageInfo.pageNum}">
                            <li class="active"><a href="#">${navPageNum}</a></li>

                        </c:if>
                        <c:if test="${navPageNum != pageInfo.pageNum}">
                            <li><a href="${APP_PATH}/showCustomers?pageNum=${navPageNum}">${navPageNum}</a></li>
                        </c:if>

                    </c:forEach>
                    <%--    下一页--%>
                    <c:if test="${!pageInfo.hasNextPage}">
                        <li class="disabled">
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <c:if test="${pageInfo.hasNextPage}">
                        <li>
                            <a href="${APP_PATH}/showCustomers?pageNum=${pageInfo.nextPage}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </c:if>
                    <%--    尾页--%>
                    <c:if test="${pageInfo.isLastPage}">
                        <li class="disabled"><a href="#">尾页</a></li>
                    </c:if>
                    <c:if test="${!pageInfo.isLastPage}">
                        <li><a href="${APP_PATH}/showCustomers?pageNum=${pageInfo.pages}">尾页</a></li>
                    </c:if>
                </ul>
            </nav>
        </div>
    </div>
</div>
</body>
</html>
