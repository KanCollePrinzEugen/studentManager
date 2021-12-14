<%--
  Created by IntelliJ IDEA.
  User: prinz
  Date: 2021/12/14
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>退出登录</title>
</head>
<body>
    <%
        session.invalidate();
//        response.setHeader("Refresh", "2,URL=index.jsp");
    %>
    <jsp:forward page="login.jsp"></jsp:forward>
</body>
</html>
