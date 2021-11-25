<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生登录</title>
<style type="text/css">
    .bigBox{
        width: 500px;
        height: 220px;
        border: 1px black solid;
        margin: 10% auto 0;
    }
    form{
        width: 250px;
        height: 220px;
        margin: auto;
    }
    table{
        width: 250px;
        height: 220px;
    }
    .rightTD{
        width: 170px;
    }
    .leftTD{
        width: 80px;
    }
</style>
</head>
<body>
   <div class="bigBox">
      <form action="LoginServlet" method="post">
        <table>
            <tr>
                <td colspan="2" align="center">
                                请输入您的登录信息
                </td>
            </tr>
            <tr>
                <td class="leftTD"> 学号：</td>
                <td class="rightTD">
                    <input type="text" name="sno"/>
                </td>
            </tr>
            <tr>
                <td class="leftTD"> 密码：</td>
                <td class="rightTD">
                    <input type="text" name="pwd"/>
                </td>
            </tr>
            <tr>
                <td class="leftTD" colspan="2" style="text-align: center;">
                    <input type="submit" value="登录">
                </td>
            </tr>
        </table>
      </form>
   </div>
</body>
</html>