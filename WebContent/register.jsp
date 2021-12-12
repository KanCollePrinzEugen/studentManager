<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>注册学生信息</title>
<style type="text/css">
    body {
        background-color: azure;
    }
    .bigBox{
        width: 500px;
        height: 350px;
        text-align: center;
        font-family: "PingFang SC", STHeiti, serif;
        margin: 10% auto 0;
        padding: 25px;
        background-color: linen;
        -webkit-box-shadow: 4px 4px 5px #999;
        box-shadow: 4px 4px 5px #999;
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
    .inputText{
        width: 200px;
        height: 20px;
    }
    tr{
        height: 40px;
    }
    .form_top{
        height: 50px;
        font-weight: bold;
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
</style>
</head>
<body>
   <div class="bigBox">
      <form action="RegisterServlet" method="post">
        <table>
          <tr class="form_top">
            <td align="center" style="font-size:20px">
                            请输入您的注册信息
            </td>
          </tr>
          <tr>
            <td class="rightTD">
                <label>
                    <input class="input_txt" type="text" name="sno" placeholder="学号"/>
                </label>
            </td>
          </tr>
          <tr>
            <td class="rightTD">
                <label>
                    <input  class="input_txt" type="text" name="sname" placeholder="姓名"/>
                </label>
            </td>
          </tr>
          <tr>
            <td class="rightTD">
                <label>
                    <input class="input_txt" type="text" name="pwd" placeholder="密码"/>
                </label>
            </td>
          </tr>
          <tr>
            <td class="rightTD">
                <label>
                    <input class="input_txt" type="text" name="age" placeholder="年龄"/>
                </label>
            </td>
          </tr>
          <tr>
            <td class="rightTD">
                <label>
                    <input class="input_txt" type="text" name="address" placeholder="地址"/>
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