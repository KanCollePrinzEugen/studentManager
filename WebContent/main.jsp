<%@ page import="work.stu.po.Student" %>
<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/10/22
  Time: 2:49 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎使用</title>
</head>
<body>
  <%
    /*获取学生信息*/
    Student student = (Student)session.getAttribute("student");
    String stuName = student.getStuName();
  %>
  <div class="bigBox">
    <h1 align="center">欢迎您！<%= stuName%>!</h1>
    <%--发送servlet请求--%>
    <a href="ShowAllStuServlet?action=toServlet" >查看学生列表</a>
  </div>
</body>
</html>
