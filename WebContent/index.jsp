<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <title>欢迎使用学生信息管理系统</title>

   <style>
      body {
         background-color: azure;
      }
      .bigBox{
         width: 500px;
         height: 300px;
         text-align: center;
         font-family: "PingFang SC", STHeiti;
         margin: 10% auto 0;
         padding: 25px;
         background-color: lavenderblush;
         -webkit-box-shadow: 4px 4px 5px #999;
         box-shadow: 4px 4px 5px #999;
      }
      a {
         text-decoration: none;
         line-height: 2.45;
      }
      button{
          width: 200px;
          min-height: 20px;
          display: block;
          background-color: #4a77d4;
          border: 1px solid #3762bc;
          color: #fff;
          padding: 9px 14px;
          font-size: 15px;
          line-height: normal;
          margin: 50px auto;
      }
   </style>

</head>

<body>
    <div class="bigBox">
       <h1 align="center">欢迎使用学生管理系统</h1>
        <a href="login.jsp">
            <button type="button">登录</button>
        </a>
        <a href="register.jsp">
            <button type="button">注册</button>
        </a> 
    </div>
</body>
</html>