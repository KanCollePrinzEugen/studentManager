<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/10/8
  Time: 3:30 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>修改学生信息</title>
    <style type="text/css">
        body {
            background-color: azure;
        }
        .bigBox{
            width: 500px;
            height: 400px;
            text-align: center;
            font-family: "PingFang SC", STHeiti, serif;
            margin: 10% auto 0;
            padding: 25px;
            background-color: cornsilk;
            -webkit-box-shadow: 4px 4px 5px #999;
            box-shadow: 4px 4px 5px #999;
        }
        form{
            width: 200px;
            height: 220px;
            margin: auto;
        }
        table{
            width: 200px;
            height: 220px;
        }
        .rightTD{
            width: 200px;
        }
        .leftTD{
            width: 80px;

        }
        tr{
            height: 50px;
        }
        .modifyButton{
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
            margin: 20px auto;
        }
        .inputText {
            width: 200px;
            height: 30px;
            margin: auto;
        }

    </style>

</head>
<body>
<div class="bigBox">
    <form action="ModifyServlet" method="post">
        <table>
            <tr>
                <td align="center" style="font-size:20px">
                    <h1 style="font-size: 20px">请输入您修改的信息</h1>
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
                        <input class="inputText" type="text" name="sname" placeholder="姓名"/>
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
                <td class="rightTD">
                    <label>
                        <input class="inputText" type="text" name="age" placeholder="年龄"/>
                    </label>
                </td>
            </tr>
            <tr>
                <td class="rightTD">
                    <label>
                        <input class="inputText" type="text" name="address" placeholder="地址"/>
                    </label>
                </td>
            </tr>
            <tr>
                <td class="leftTD" style="text-align: center;">
                    <input class="modifyButton" type="submit" value="修改">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
