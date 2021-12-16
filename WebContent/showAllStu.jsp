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
    <link rel="stylesheet" href="css/showAllStu.css">
</head>
<body>
    <h1 style=" margin-left: 30px; color: white">全体学生列表</h1>
    <div class="navBox">
        <a href="main.jsp">
            <svg t="1639619928226" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="12313" width="35" height="35"><path d="M511.213557 65.37494c-245.875761 0-445.212719 199.317535-445.212719 445.184245s199.336958 445.184245 445.212719 445.184245c245.898275 0 445.222953-199.316511 445.222953-445.184245S757.111832 65.37494 511.213557 65.37494zM511.236071 911.129326c-220.774055 0-400.391095-180.345438-400.391095-400.919089 0-220.570581 179.61704-400.004253 400.391095-400.004253 220.776102 0 400.391095 179.433672 400.391095 400.004253C911.627165 730.783889 732.012172 911.129326 511.236071 911.129326zM711.648568 488.437351 348.187037 488.437351l132.332216-141.90494c8.681062-8.691963 8.681062-22.772656 0-31.465642-8.703576-8.692986-22.786893-8.692986-31.467955 0L267.533901 511.168052l178.72468 197.47149c4.356393 4.347005 10.049279 6.541997 15.733977 6.541997 5.692886 0 11.387818-2.194992 15.733977-6.541997 8.694366-8.67252 8.694366-22.750143 0-31.469736l-130.961953-144.224776 364.885008 0c12.290411 0 22.254752-9.954723 22.254752-22.255887C733.90332 498.410494 723.937956 488.437351 711.648568 488.437351z" p-id="12314" fill="#ffffff"></path></svg>
        </a>
        <a href="main.jsp"><h2 style="color: white">功能面板</h2></a>
    </div>
    <div class="content">
        <%
                    /*获取学生列表*/
//                ArrayList<Student> allStu = (ArrayList<Student>) request.getSession().getAttribute("allStudent");
                    ArrayList<Student> stuList = (ArrayList<Student>) request.getSession().getAttribute("stuList");
                    int totalPages = (Integer) request.getSession().getAttribute("totalPages");
                    int currentPage = (Integer) request.getSession().getAttribute("currentPageNum");
        %>
            <div class="searchBox">
                <label class="searchLabel">
                    请输入要查询的页号：
                    <input class="inputText" type="number" min="1" max="<%= totalPages%>" name="pageNum">
                </label>
                <input class="submitButton" type="submit" value="查询">
            </div>
        <div class="tabContent">
            <table>
                <tr>
                    <th>姓名</th>
                    <th>年龄</th>
                    <th>地址</th>
                </tr>
                <%
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
                    <button class="changePageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=currentPage-1%>'">
                        <a href="ShowStuByPageServlet?pageNum=<%=currentPage-1%>"
                           style="text-decoration:none; color: #FFFFFF">上一页</a>
                    </button>
                <div class="pageAdjustContent">

                    <%
                        if (1 == currentPage) {
                    %>
                    <button class="currentPageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=1%>'">
                        <a href="ShowStuByPageServlet?pageNum=1" style="color: #fff; text-decoration:none">1</a>
                        <%
                        } else {
                        %>
                    </button>
                    <button class="pageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=1%>'">
                        <a href="ShowStuByPageServlet?pageNum=1" style="color: #fff; text-decoration:none">1</a>
                    </button>
                    <%
                        }
                    %>

                    <%
                        for (int i = 2; i < totalPages; i++) {
                            if (i == currentPage) {
                    %>
                    <button class="currentPageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=i%>'">
                        <a href="ShowStuByPageServlet?pageNum=<%=i%>" style="color: #fff; text-decoration:none"><%=i%>
                        </a>
                        <%
                        } else {
                        %>
                    </button>
                    <button class="pageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=i%>'">
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
                    <button class="currentPageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=totalPages%>'">
                        <a href="ShowStuByPageServlet?pageNum=<%=totalPages%>"
                           style="color: #fff; text-decoration:none"><%=totalPages%>
                        </a>
                        <%
                        } else {
                        %>
                    </button>
                    <button class="pageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=totalPages%>'">
                        <a href="ShowStuByPageServlet?pageNum=<%=totalPages%>"
                           style="color: #fff; text-decoration:none"><%=totalPages%>
                        </a>
                    </button>
                    <%
                        }
                    %>

                </div>
                    <button class="changePageButton" type="button" onclick="location.href='ShowStuByPageServlet?pageNum=<%=currentPage+1%>'">
                        <a href="ShowStuByPageServlet?pageNum=<%=currentPage+1%>"
                           style="text-decoration:none; color: #FFFFFF">下一页</a>
                    </button>
            </div>
            <div class="pageInfo">
                <p style="float: left; text-align: center; margin: auto">当前是第<%=currentPage%>页
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    总共有<%=totalPages%>页 </p>
            </div>
        </form>
    </div>
</body>
</html>
