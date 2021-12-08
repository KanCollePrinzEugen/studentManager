<%@ page import="work.stu.po.Student" %>
<%@ page import="java.util.ArrayList" %>
<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/11/18
  Time: 5:16 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>学生列表</title>
    <style>
        .content{
            position: relative;
            top: 100px;
            margin: auto;
            width: 500px;
        }
        table{
            margin:10px auto;
            border-collapse: collapse;
        }
        th, td{
            text-align: center;
            width: 110px;
            height: 35px;
            border:2px inset #ffffff;
        }
        th{
            background-color:#00A5FF;
            color:#FFFFFF;
            font-weight: bold;
        }
        .topBox{
            background-color: #4a77d4;
            color: white;
            top: 0;
            left: 0;
            width: 100%;
            position: absolute;
        }
        .searchBox{
            margin: auto;
            text-align: center;
            width: 410px;
            height: 100px;
        }
        .page_button{
            width: 100px;
            min-height: 20px;
            display: block;
            background-color: #4ad471;
            border: 1px solid #37bc49;
            color: #fff;
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            /*border-radius: 5px;*/
            margin: 0 20px auto;
            float: left;
        }
        .submit_button{
            width: 100px;
            min-height: 20px;
            display: block;
            background-color: #4a77d4;
            border: 1px solid #3762bc;
            color: #fff;
            padding: 9px 14px;
            font-size: 15px;
            line-height: normal;
            margin: auto;
        }
        .page_adjust{
            margin: auto;
            width: 280px;
            height: 50px;
        }
        .search_label{
            float: left;
            margin: auto 10px;
            position: relative;
            top: 5px;
        }
        .input_txt{
            width: 100px;
            height: 30px;
        }
    </style>
</head>
<body>
<div class="bigBox">
    <div class="topBox">
        <h1 style=" margin-left: 30px; color: white">全体学生列表</h1>
    </div>
    <div class="content">
        <table>
            <tr>
                <th>姓名</th>
                <th>年龄</th>
                <th>地址</th>
            </tr>
            <%
                /*获取学生列表*/
                ArrayList<Student> allStu = (ArrayList<Student>) request.getSession().getAttribute("allStudent");
                /*提取学生信息*/
                for (Student stu : allStu) {
                    String name = stu.getStuName();
                    int age = stu.getStuAge();
                    String address = stu.getStuAddress();
            %>
            <%--循环输出学生信息--%>
            <tr>
                <td><%= name%>
                </td>
                <td><%= age%>
                </td>
                <td><%= address%>
                </td>
            </tr>
            <%
                }
            %>
        </table>
        <form>
            <div class="page_adjust">
                <button class="page_button" type="button">上一页</button>
                <button class="page_button" type="button">下一页</button>
            </div>
            <div class="searchBox">
                <label class="search_label">
                    请输入要查询的页号：
                    <input class="input_txt" type="number" maxlength="">
                </label>
                <input class="submit_button" type="submit" value="查询">
            </div>
        </form>
    </div>
</div>
</body>
</html>
