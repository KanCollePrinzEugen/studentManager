<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生登录</title>
<style type="text/css">
    body {
        background-color: azure;
    }
    .bigBox{
        width: 500px;
        height: 300px;
        text-align: center;
        font-family: "PingFang SC", STHeiti, serif;
        margin: 10% auto 0;
        padding: 25px;
        background-color: cornsilk;
        -webkit-box-shadow: 4px 4px 5px #999;
        box-shadow: 4px 4px 5px #999;
    }
    h1{
        margin-bottom: 30px;
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
    .inputText {
        width: 200px;
        height: 30px;
    }
    tr{
        height: 50px;
    }
    .submitButton{
        width: 200px;
        min-height: 20px;
        display: block;
        background-color: #4a77d4;
        border: 1px solid #3762bc;
        color: #fff;
        padding: 9px 14px;
        font-size: 15px;
        line-height: normal;
        /*border-radius: 5px;*/
        margin: 40px auto;
    }
</style>
</head>
<body>
   <div class="bigBox">
      <form action="LoginServlet" method="post">
        <table>
            <tr>
                <td align="center" style="">
                    <h1 style="font-size: 20px">请输入您的登录信息</h1>
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