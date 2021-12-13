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
            margin:100px auto;
            width: auto;
            text-align: center;
        }
        .tabContent{
            height: 250px;
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
            margin:20px auto;
            text-align: center;
            width: 410px;
            height: 100px;
        }
        .changePageButton{
            width: 100px;
            min-height: 20px;
            display: inline-block;
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
        .submitButton{
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
        .pageAdjust{
            margin: 30px auto 10px auto;
            width: 415px;
            height: 50px;
            text-align: center;
        }
        .searchLabel{
            float: left;
            margin: auto 10px;
            position: relative;
        }
        .inputText{
            width: 100px;
            height: 30px;
        }
        .pageButton{
            height: 35px;
            width: 35px;
            display: inline-block;
            background-color: #4ad471;
            border: 1px solid #37bc49;
            color: #fff;
            /*padding: 9px 9px;*/
            text-align: center;
            font-size: 15px;
            line-height: normal;
            border-radius: 5px;
            margin: 0 5px auto;
            float: left;
        }
        .currentPageButton{
            height: 35px;
            width: 35px;
            display: inline-block;
            background-color: #298945;
            border: 1px solid #166621;
            color: #fff;
            /*padding: 9px 9px;*/
            text-align: center;
            font-size: 15px;
            line-height: normal;
            border-radius: 5px;
            margin: 0 5px auto;
            float: left;
        }
        .pageAdjustContent{
            margin: auto;
            width: 300px;
            height: 50px;
            display: inline;
        }
        .pageInfo{
            margin: auto;
            width: 192px;
            height: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="bigBox">
    <div class="topBox">
        <h1 style=" margin-left: 30px; color: white">全体学生列表</h1>
    </div>
    <div class="content">
        <div class="tabContent">
            <table>
                <tr>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>地址</th>
                </tr>
                <%
                    /*获取学生列表*/
//                ArrayList<Student> allStu = (ArrayList<Student>) request.getSession().getAttribute("allStudent");
                    ArrayList<Student> stuList = (ArrayList<Student>) request.getSession().getAttribute("stuList");
                    int totalPages = (Integer) request.getSession().getAttribute("totalPages");
                    int currentPage = (Integer) request.getSession().getAttribute("currentPageNum");
                    /*提取学生信息*/
                    for (Student stu : stuList) {
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
        </div>
        <form action="ShowStuByPageServlet">
            <div class="pageAdjust">
                    <button class="changePageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>"
                           style="text-decoration:none; color: #FFFFFF">上一页</a>
                    </button>
                <div class="pageAdjustContent">

                    <%
                        if (1 == currentPage) {
                    %>
                    <button class="currentPageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=1" style="color: #fff; text-decoration:none">1</a>
                        <%
                        } else {
                        %>
                    </button>
                    <button class="pageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=1" style="color: #fff; text-decoration:none">1</a>
                    </button>
                    <%
                        }
                    %>

                    <%
                        for (int i = 2; i < totalPages; i++) {
                            if (i == currentPage) {
                    %>
                    <button class="currentPageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=<%=i%>" style="color: #fff; text-decoration:none"><%=i%>
                        </a>
                        <%
                        } else {
                        %>
                    </button>
                    <button class="pageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=<%=i%>" style="color: #fff; text-decoration:none"><%=i%>
                        </a>
                    </button>
                    <%
                            }
                        }
                    %>

                    <%
                        if (totalPages == currentPage) {
                    %>
                    <button class="currentPageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=<%=totalPages%>"
                           style="color: #fff; text-decoration:none"><%=totalPages%>
                        </a>
                        <%
                        } else {
                        %>
                    </button>
                    <button class="pageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=<%=totalPages%>"
                           style="color: #fff; text-decoration:none"><%=totalPages%>
                        </a>
                    </button>
                    <%
                        }
                    %>

                </div>
                    <button class="changePageButton" type="button" href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>">
                        <a href="ShowStuByPageServlet?pageNum=<%=currentPage+1%>"
                           style="text-decoration:none; color: #FFFFFF">下一页</a>
                    </button>
            </div>
            <div class="pageInfo">
                <p style="float: left; text-align: center; margin: auto">当前是第<%=currentPage%>页
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    总共有<%=totalPages%>页 </p>
            </div>
            <div class="searchBox">
                <label class="searchLabel">
                    请输入要查询的页号：
                    <input class="inputText" type="number" min="1" max="<%= totalPages%>" name="pageNum">
                </label>
                <input class="submitButton" type="submit" value="查询">
            </div>
        </form>
    </div>
</div>
</body>
</html>
