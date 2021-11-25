<%@ page import="work.stu.po.Student" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/11/18
  Time: 5:16 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>学生列表</title>
    <style>
        table{
            border-collapse: collapse;
        }
        th, td{
            border: 1px solid black;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="bigBox">
    <h1 align="center">学生列表</h1>
    <div class="searchBox">
        请输入要查询的页号：
        <input type="number" maxlength="">
    </div>
    <table align="center">
        <tr>
            <th>姓名</th>
            <th>年龄</th>
            <th>地址</th>
        </tr>
    <%
        /*获取学生列表*/
        ArrayList<Student> allStu = (ArrayList<Student>) request.getSession().getAttribute("allStudent");
        /*提取学生信息*/
        for (Student stu: allStu) {
            String name = stu.getStuName();
            int age = stu.getStuAge();
            String address = stu.getStuAddress();
    %>
        <%--循环输出学生信息--%>
        <tr>
            <td><%= name%></td>
            <td><%= age%></td>
            <td><%= address%></td>
        </tr>
    <%
        }
    %>
    </table>
</div>
</body>
</html>
