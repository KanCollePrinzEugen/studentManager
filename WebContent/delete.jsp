<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/10/8
  Time: 2:40 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>删除学生信息</title>
    <link rel="stylesheet" href="css/delete.css">
</head>
<body>
<h1>删除学生信息</h1>
<div class="content">
    <a href="main.jsp" style="position: relative; left: -225px; text-decoration: none">返回</a>
    <form action="DeleteServlet" method="post">
        <table>
            <tr class="title">
                <td>
                    <h2 style="font-size: 20px">请输入要删除的学生信息</h2>
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
                    <input class="submitButton" type="submit" value="删除">
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
