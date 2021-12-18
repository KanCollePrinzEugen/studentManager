<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/10/8
  Time: 2:40 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<style>
    body {
        background-color: azure;
    }
    .box{
        width: 500px;
        height: 350px;
        text-align: center;
        font-family: "PingFang SC", STHeiti, serif;
        margin: 10% auto 0;
        padding: 25px;
        background-color: cornsilk;
        -webkit-box-shadow: 4px 4px 5px #999;
        box-shadow: 4px 4px 5px #565656;
        background-color:rgba(255,240,245,0.6);
    }
    form{
        width: 230px;
        height: 220px;
        margin: auto;
    }
    table{
        width: 230px;
        height: 220px;
        margin: auto;
    }
    .rightTD{
        width: 200px;
        margin: auto;
    }
    .leftTD{
        width: 80px;
    }
    .inputText {
        width: 230px;
        height: 35px;
        margin: auto;
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
        margin: 20px auto;
    }
    tr{
        height: 60px;
        margin-bottom: 10px;
    }
    .verifyCodeInput{
        width: 130px;
        height: 35px;
    }
    .verifyCode{
        position: relative;
        top: 10px;
    }
</style>
<head>
    <title>删除学生信息</title>
</head>
<body style="background: url('./img/WinterRoofs_ZH-CN5091303265_1920x1080.jpg') ">
<div class="box">
    <%
        String msg = (String)request.getAttribute("msg");
        if(msg != null){
    %>
    <script type="text/javascript"> alert("<%=msg%>");</script>
    <%
        }
    %>
    <a href="main.jsp" style="position: relative; left: -225px; text-decoration: none">返回</a>
    <form action="DeleteServlet" method="post">
        <table>
            <tr class="title">
                <td align="center" style="font-size:20px">
                    <h1 style="font-size: 20px">请输入要删除的学生信息</h1>
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
                <td class="rightTD">
                    <label>
                        <input class="verifyCodeInput" type="text" name="verifyCode" placeholder="验证码"/>
                        <img src="VerifyCodeServlet" class="verifyCode"  alt="verifyCode"/>
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
