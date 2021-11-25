<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <title>欢迎使用学生信息管理系统</title>

   <style>
      .bigBox{
         width: 500px;
         height: 325px;
         text-align: center;
         font-family: "PingFang SC", STHeiti;
         margin: 10% auto 0;
         padding: 25px;
         background-color: lavenderblush;
         -webkit-box-shadow: 4px 4px 5px #999;
         box-shadow: 4px 4px 5px #999;
      }
      body {
         background-color: azure;
         background-image: url("img/IMG_0627.jpg");
      }
      a {
         text-decoration: none;
         line-height: 2.45;
      }
   </style>

</head>

<body>
<div class="bigBox">
   <h1 align="center">欢迎使用学生管理系统</h1>
   <a style="font-size: medium" href="login.jsp">登录</a> <p>
   <a style="font-size: medium" href="register.jsp">注册</a> <p>
   <a style="font-size: medium" href="modify.jsp">修改学生信息</a> <p>
   <a style="font-size: medium" href="delete.jsp">删除学生信息</a> <p>
</div>
</body>
</html>