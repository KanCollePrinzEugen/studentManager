<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生登录</title>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
    <h1>欢迎使用学生管理系统</h1>
   <div class="content">
       <a href="index.jsp" style="position: relative; left: -225px; text-decoration: none">返回</a>
      <form action="LoginServlet" method="post">
        <table>
            <tr>
                <td align="center">
                    <h2 style="font-size: 20px">请输入您的登录信息</h2>
                </td>
            </tr>
            <tr>
                <td class="rightTD">
                    <label>
                        <input class="inputText" type="text" name="sno" placeholder="学号"/>
                    </label>
                </td>
            </tr>
            <tr>
                <td class="rightTD">
                    <label>
                        <input class="inputText" type="text" name="pwd" placeholder="密码"/>
                    </label>
                </td>
            </tr>
            <tr>
                <td class="leftTD" style="text-align: center;">
                    <input class="submitButton" type="submit" value="登录">
                </td>
            </tr>
        </table>
      </form>
   </div>
</body>
</html>