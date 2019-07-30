<%--
  Created by IntelliJ IDEA.
  User: 23095
  Date: 2019/7/30
  Time: 11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <%
    pageContext.setAttribute("APP_PATH", request.getContextPath());
  %>
  <script type="text/javascript" src="${APP_PATH}/static/js/jquery-3.4.1.js"></script>
  <link rel="stylesheet" href="${APP_PATH}/static/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <script src="${APP_PATH}/static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
  <title>首页</title>
</head>
<body>
<div class="container">
  <div class="row"><h1>首页</h1></div>
  <div class="row">
    <a href="/showCustomers">
      <button class="btn btn-primary">
        客户查询
      </button>
    </a>
  </div>
</div>
</body>
</html>
