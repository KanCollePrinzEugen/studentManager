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
    <link rel="stylesheet" href="css/modify.css">
</head>
<body>
<h1>修改学生信息</h1>
<div class="content">
    <a href="main.jsp" style="position: relative; left: -225px; text-decoration: none">返回</a>
    <form action="ModifyServlet" method="post">
        <table>
            <tr>
                <td align="center" style="font-size:20px">
                    <h2 style="font-size: 20px">请输入您修改的信息</h2>
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
