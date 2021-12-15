<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册学生信息</title>
    <link rel="stylesheet" href="css/register.css">
</head>
<body>
    <h1>欢迎使用学生管理系统</h1>
   <div class="content">
       <a href="index.jsp" style="position: relative; left: -225px; text-decoration: none">返回</a>
      <form action="RegisterServlet" method="post">
        <table>
          <tr class="formTop">
            <td align="center" style="font-size:20px">
                            请输入您的注册信息
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
                    <input  class="inputText" type="text" name="sname" placeholder="姓名"/>
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
            <td class="leftTD" colspan="2" style="text-align: center;"> 
               <input class="submitButton" type="submit" value="注册">
            </td>
          </tr>
        </table>
      </form>
   </div>
</body>
</html>