<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/10/8
  Time: 2:50 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style type="text/css">
    .box{
        width: 500px;
        height: 220px;
        border: 1px black solid;
        margin: 10% auto 0;
        /*padding-left: 80px;*/
        /*padding-top: 30px;*/
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
<head>
    <title>修改学生信息</title>
</head>
<body>
    <div class="box">
        <form action="SearchServlet" method="post">
            <table>
                <tr>
                    <td colspan="2" align="center" style="font-size:20px">
                        请输入要修改的学生信息
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
                        <input type="submit" value="查找并修改">
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
