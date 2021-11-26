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
  <style>
    body{
      background-color: beige;
    }
    .bigBox{
      font-family: "PingFang SC", STHeiti, serif;
    }
    .topBox{
      height: 60px;
      background-color: dimgray;
      border-radius: 2px;
    }
    .panelSelectBox{
      height: 40px;
      background-color: #999999;
      border-radius: 2px;
    }
  </style>
</head>
<body>
  <%
    /*获取学生信息*/
    Student student = (Student)session.getAttribute("student");
    String stuName = student.getStuName();
  %>
  <div class="bigBox">
    <div class="topBox">
      <h1 style=" margin-left: 30px; color: white">欢迎使用学生管理系统！<%= stuName%>!</h1>
    </div>
    <div class="panelSelectBox">
      <h2>功能面板</h2>
    </div>
    <%--发送servlet请求--%>
    <a href="ShowAllStuServlet?action=toServlet" >查看学生列表</a>
  </div>
</body>
</html>
