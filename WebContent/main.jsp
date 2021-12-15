<%@ page import="work.stu.po.Student" %>
<%--
  Created by IntelliJ IDEA.
  User: prinzeugen
  Date: 2021/10/22
  Time: 2:49 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>学生管理系统</title>
  <style>
    body{
      /*background-color: beige;*/
    }
    .bigBox{
      font-family: "PingFang SC", STHeiti, serif;
    }
    .topBox{
      /*height: 60px;*/
      background-color: #4a77d4;
      color: white;
      top: 0;
      left: 0;
      width: 100%;
      position: absolute;
      /*border-radius: 2px;*/
    }
    .divideBox{
      /*height: 40px;*/
      background-color: steelblue;
      color: white;
      border-radius: 2px;
      height: 5px;
      width: 100%;
      top: 125px;
      left: 0;
      position: absolute;
    }
    .content{
      top: 200px;
      left: 50px;
      /*height: 50px;*/
      position: relative;
    }
    .ico_button{
      width: 100px;
      height: 100px;
      border: 1px solid;
      left: auto;
      margin: auto;
      color: lightgray;
    }
    .main_func{
      width: 100px;
      height: 110px;
      float: left;
      margin-left: 50px;
      text-align: center;
    }
    .txt_link{
      margin: auto;
      color: black;
      text-decoration: none;
    }
  </style>
</head>
<body>
  <%
    /*获取学生信息*/
    Student student = (Student)session.getAttribute("student");
    String stuName = student.getStuName();
  %>
  <div class="bigBox">
    <div class="topBox">
      <h1 style=" margin-left: 30px; color: white">欢迎使用学生管理系统！<%= stuName%>!</h1>
    </div>
    <h2 style="top: 70px; left: 50px; position: absolute">功能面板</h2>
    <div class="divideBox"></div>
    <div class="content">
      <div class="main_func">
        <button class="ico_button" onclick="location.href='ShowStuByPageServlet?pageNum=1'">
          <svg t="1638191289988" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1964" width="50" height="50"><path d="M508.850761 941.456782a42.100356 42.100356 0 0 0-31.160894-13.259955H169.395921a17.237941 17.237941 0 0 1-16.574943-17.900938v-795.597281a17.237941 17.237941 0 0 1 17.237941-17.237941h596.69796a17.237941 17.237941 0 0 1 17.56944 16.906442V397.79864a25.193914 25.193914 0 0 0 20.884429 25.525413l59.669796 11.60246a14.58595 14.58595 0 0 0 17.56944-10.939462 12.265458 12.265458 0 0 0 0-3.646488V22.873422a22.873422 22.873422 0 0 0-22.210424-22.873422H76.244739A22.873422 22.873422 0 0 0 53.371318 22.873422V1001.126578a22.873422 22.873422 0 0 0 22.873421 22.873422H550.619618a13.922952 13.922952 0 0 0 13.922952-13.922952 14.917449 14.917449 0 0 0-3.314988-8.95047z" p-id="1965"></path><path d="M217.131758 192.600842m17.56944 0l459.457429 0q17.56944 0 17.56944 17.56944l0 61.658789q0 17.56944-17.56944 17.56944l-459.457429 0q-17.56944 0-17.56944-17.56944l0-61.658789q0-17.56944 17.56944-17.56944Z" p-id="1966"></path><path d="M217.131758 382.218194m17.56944 0l393.157656 0q17.56944 0 17.56944 17.56944l0 61.658789q0 17.56944-17.56944 17.56944l-393.157656 0q-17.56944 0-17.56944-17.56944l0-61.658789q0-17.56944 17.56944-17.56944Z" p-id="1967"></path><path d="M217.131758 579.128521m17.56944 0l227.408223 0q17.56944 0 17.569439 17.56944l0 61.658789q0 17.56944-17.569439 17.56944l-227.408223 0q-17.56944 0-17.56944-17.56944l0-61.658789q0-17.56944 17.56944-17.56944Z" p-id="1968"></path><path d="M632.168339 814.161217l119.008094 119.339592a22.873422 22.873422 0 0 0 30.829394 0l54.034315-54.697313a21.878925 21.878925 0 0 0 0-30.497895l-47.072839-47.07284h168.069926a13.259955 13.259955 0 0 0 13.591453-12.265458V696.147621a12.928456 12.928456 0 0 0-13.591453-12.596957h-165.749434l40.774361-41.10586a22.541923 22.541923 0 0 0 0-31.160893l-54.365814-53.702817a21.547426 21.547426 0 0 0-30.497896 0l-114.367109 114.367109-54.697313 54.034316a21.547426 21.547426 0 0 0 0 30.497895z" p-id="1969"></path></svg>
        </button>
        <a class="txt_link" href="ShowStuByPageServlet?pageNum=1" >查看学生列表</a>
      </div>
      <div class="main_func">
        <button class="ico_button" onclick="location.href='modify.jsp'">
          <svg t="1638200042684" class="icon" viewBox="0 0 1026 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="879" width="50" height="50"><path d="M1019.187265 715.083093a33.714432 33.714432 0 0 0-33.714432-33.714432 57.314534 57.314534 0 0 1-57.314533-56.977389 69.114585 69.114585 0 0 1 5.057165-21.914381 42.480184 42.480184 0 0 0-17.868649-48.548781l-67.428863-37.085875a39.445885 39.445885 0 0 0-16.520072-3.708587 44.165905 44.165905 0 0 0-32.02871 13.485772 89.343244 89.343244 0 0 1-45.851626 25.960113 88.331811 88.331811 0 0 1-45.514483-25.960113 42.817328 42.817328 0 0 0-33.714432-13.485772 41.805895 41.805895 0 0 0-16.857215 3.371443l-67.428863 38.097308a42.480184 42.480184 0 0 0-14.160062 49.897358 67.428863 67.428863 0 0 1 5.394309 21.577236 57.651678 57.651678 0 0 1-57.988822 56.640245h-3.708587a33.714432 33.714432 0 0 0-33.714432 33.714432 398.167436 398.167436 0 0 0-5.731453 52.594513 348.270078 348.270078 0 0 0 5.731453 52.931657 33.714432 33.714432 0 0 0 33.714432 33.714432h2.022866A55.291668 55.291668 0 0 1 573.145336 932.87832a43.154472 43.154472 0 0 0 15.845783 51.245936l65.405997 36.074442a42.817328 42.817328 0 0 0 49.22307-10.11433 87.320378 87.320378 0 0 1 46.525915-28.657266 86.983233 86.983233 0 0 1 46.86306 28.320122 44.165905 44.165905 0 0 0 33.714432 13.822917 42.143039 42.143039 0 0 0 18.205793-4.045732l67.428863-36.411586a42.480184 42.480184 0 0 0 14.160061-49.897358 69.788873 69.788873 0 0 1-5.394309-21.914381 57.651678 57.651678 0 0 1 56.640245-57.988822h3.708587a33.714432 33.714432 0 0 0 33.714432-33.714432 312.53278 312.53278 0 0 0 7.417175-52.931657 396.481715 396.481715 0 0 0-7.417175-51.58308z m-89.680388 81.588924a88.668955 88.668955 0 0 0-77.880337 87.994666 93.051831 93.051831 0 0 0 5.057165 27.30869l-39.108741 21.577236a125.417685 125.417685 0 0 0-16.182927-13.822917 73.497461 73.497461 0 0 0-98.783284 0 156.097818 156.097818 0 0 0-16.182927 13.485773l-37.423019-20.902948a93.051831 93.051831 0 0 0 5.057165-27.30869 88.668955 88.668955 0 0 0-77.543193-87.994666 149.017787 149.017787 0 0 1 0-57.314533 89.006099 89.006099 0 0 0 77.543193-88.331811 71.811739 71.811739 0 0 0-5.057165-26.634401l40.457318-22.251525a153.063519 153.063519 0 0 0 16.182927 13.148629 84.286079 84.286079 0 0 0 48.548781 18.205793 85.9718 85.9718 0 0 0 47.874493-17.868649c6.742886-5.057165 12.47434-9.777185 15.845783-12.811484l38.771596 21.577236a86.308945 86.308945 0 0 0 72.486028 114.966212 161.829271 161.829271 0 0 1 2.697154 28.657266 281.178359 281.178359 0 0 1-2.36001 28.320123z" p-id="880"></path><path d="M753.1804 667.2086a101.143295 101.143295 0 1 0 101.143295 101.143294 101.143295 101.143295 0 0 0-102.491872-101.480439z m36.411586 101.143294a38.434452 38.434452 0 0 1-37.760163 37.423019 37.760163 37.760163 0 1 1 37.760163-37.760163zM105.526171 923.775424v-30.342989c0-193.520837 171.606456-355.012964 364.453004-370.858746h-20.228659a260.612556 260.612556 0 0 0 139.577747-42.817328l16.182927-12.811484a255.555391 255.555391 0 0 0 101.143295-203.972311 261.623989 261.623989 0 0 0-523.247978 0 254.881102 254.881102 0 0 0 101.143295 203.972311l16.520071 12.811484-19.217225 7.754319A438.28761 438.28761 0 0 0 0 893.432435v90.691821a33.714432 33.714432 0 0 0 33.714432 33.714432h492.567844a624.728416 624.728416 0 0 1-40.457318-93.388976zM277.132627 259.601123a168.572158 168.572158 0 1 1 168.572158 165.875003 166.212147 166.212147 0 0 1-168.572158-165.875003z" p-id="881"></path></svg>
        </button>
        <a class="txt_link" href="modify.jsp" >修改学生信息</a>
      </div>
      <div class="main_func">
        <button class="ico_button" onclick="location.href='delete.jsp'">
          <svg t="1638202200986" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="29775" width="50" height="50"><path d="M678.3 655.4c24.2-13 51.9-20.4 81.4-20.4h0.1c3 0 4.4-3.6 2.2-5.6-30.8-27.6-65.6-49.7-103.7-65.8-0.4-0.2-0.8-0.3-1.2-0.5C719.2 518 759.6 444.7 759.6 362c0-137-110.8-248-247.5-248S264.7 225 264.7 362c0 82.7 40.4 156 102.6 201.1-0.4 0.2-0.8 0.3-1.2 0.5-44.7 18.9-84.8 46-119.3 80.6-34.5 34.5-61.5 74.7-80.4 119.5C147.9 807.5 138 854 137 901.8c-0.1 4.5 3.5 8.2 8 8.2h59.9c4.3 0 7.9-3.5 8-7.8 2-77.2 32.9-149.5 87.6-204.3C357 641.2 432.2 610 512.2 610c56.7 0 111.1 15.7 158 45.1 2.5 1.5 5.5 1.7 8.1 0.3zM512.2 534c-45.8 0-88.9-17.9-121.4-50.4-32.4-32.5-50.3-75.7-50.3-121.6 0-45.9 17.9-89.1 50.3-121.6S466.3 190 512.2 190s88.9 17.9 121.4 50.4c32.4 32.5 50.3 75.7 50.3 121.6 0 45.9-17.9 89.1-50.3 121.6C601.1 516.1 558 534 512.2 534zM880 772H640c-4.4 0-8 3.6-8 8v56c0 4.4 3.6 8 8 8h240c4.4 0 8-3.6 8-8v-56c0-4.4-3.6-8-8-8z" p-id="29776"></path></svg><path d="M1019.187265 715.083093a33.714432 33.714432 0 0 0-33.714432-33.714432 57.314534 57.314534 0 0 1-57.314533-56.977389 69.114585 69.114585 0 0 1 5.057165-21.914381 42.480184 42.480184 0 0 0-17.868649-48.548781l-67.428863-37.085875a39.445885 39.445885 0 0 0-16.520072-3.708587 44.165905 44.165905 0 0 0-32.02871 13.485772 89.343244 89.343244 0 0 1-45.851626 25.960113 88.331811 88.331811 0 0 1-45.514483-25.960113 42.817328 42.817328 0 0 0-33.714432-13.485772 41.805895 41.805895 0 0 0-16.857215 3.371443l-67.428863 38.097308a42.480184 42.480184 0 0 0-14.160062 49.897358 67.428863 67.428863 0 0 1 5.394309 21.577236 57.651678 57.651678 0 0 1-57.988822 56.640245h-3.708587a33.714432 33.714432 0 0 0-33.714432 33.714432 398.167436 398.167436 0 0 0-5.731453 52.594513 348.270078 348.270078 0 0 0 5.731453 52.931657 33.714432 33.714432 0 0 0 33.714432 33.714432h2.022866A55.291668 55.291668 0 0 1 573.145336 932.87832a43.154472 43.154472 0 0 0 15.845783 51.245936l65.405997 36.074442a42.817328 42.817328 0 0 0 49.22307-10.11433 87.320378 87.320378 0 0 1 46.525915-28.657266 86.983233 86.983233 0 0 1 46.86306 28.320122 44.165905 44.165905 0 0 0 33.714432 13.822917 42.143039 42.143039 0 0 0 18.205793-4.045732l67.428863-36.411586a42.480184 42.480184 0 0 0 14.160061-49.897358 69.788873 69.788873 0 0 1-5.394309-21.914381 57.651678 57.651678 0 0 1 56.640245-57.988822h3.708587a33.714432 33.714432 0 0 0 33.714432-33.714432 312.53278 312.53278 0 0 0 7.417175-52.931657 396.481715 396.481715 0 0 0-7.417175-51.58308z m-89.680388 81.588924a88.668955 88.668955 0 0 0-77.880337 87.994666 93.051831 93.051831 0 0 0 5.057165 27.30869l-39.108741 21.577236a125.417685 125.417685 0 0 0-16.182927-13.822917 73.497461 73.497461 0 0 0-98.783284 0 156.097818 156.097818 0 0 0-16.182927 13.485773l-37.423019-20.902948a93.051831 93.051831 0 0 0 5.057165-27.30869 88.668955 88.668955 0 0 0-77.543193-87.994666 149.017787 149.017787 0 0 1 0-57.314533 89.006099 89.006099 0 0 0 77.543193-88.331811 71.811739 71.811739 0 0 0-5.057165-26.634401l40.457318-22.251525a153.063519 153.063519 0 0 0 16.182927 13.148629 84.286079 84.286079 0 0 0 48.548781 18.205793 85.9718 85.9718 0 0 0 47.874493-17.868649c6.742886-5.057165 12.47434-9.777185 15.845783-12.811484l38.771596 21.577236a86.308945 86.308945 0 0 0 72.486028 114.966212 161.829271 161.829271 0 0 1 2.697154 28.657266 281.178359 281.178359 0 0 1-2.36001 28.320123z" p-id="880"></path><path d="M753.1804 667.2086a101.143295 101.143295 0 1 0 101.143295 101.143294 101.143295 101.143295 0 0 0-102.491872-101.480439z m36.411586 101.143294a38.434452 38.434452 0 0 1-37.760163 37.423019 37.760163 37.760163 0 1 1 37.760163-37.760163zM105.526171 923.775424v-30.342989c0-193.520837 171.606456-355.012964 364.453004-370.858746h-20.228659a260.612556 260.612556 0 0 0 139.577747-42.817328l16.182927-12.811484a255.555391 255.555391 0 0 0 101.143295-203.972311 261.623989 261.623989 0 0 0-523.247978 0 254.881102 254.881102 0 0 0 101.143295 203.972311l16.520071 12.811484-19.217225 7.754319A438.28761 438.28761 0 0 0 0 893.432435v90.691821a33.714432 33.714432 0 0 0 33.714432 33.714432h492.567844a624.728416 624.728416 0 0 1-40.457318-93.388976zM277.132627 259.601123a168.572158 168.572158 0 1 1 168.572158 165.875003 166.212147 166.212147 0 0 1-168.572158-165.875003z" p-id="881"></path></svg>
        </button>
        <a class="txt_link" href="delete.jsp" >删除学生信息</a>
      </div>
      <div class="main_func">
        <button class="ico_button" onclick="location.href='LogoutServlet'">
          <svg t="1639407222670" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2315" width="50" height="50"><path d="M952.532295 495.269967 767.686357 310.423005c-9.060353-9.060353-23.75196-9.060353-32.81743 0l-37.363979 37.362956c-9.060353 9.060353-9.060353 23.757077 0 32.81743l81.538061 81.538061L407.384337 462.141452c-12.812817 0-23.199375 10.386558-23.199375 23.199375l0 52.845579c0 12.815887 10.386558 23.204491 23.199375 23.204491l371.479593 0-81.538061 81.538061c-9.060353 9.060353-9.060353 23.757077 0 32.81743l37.368072 37.363979c9.060353 9.05933 23.75503 9.05933 32.815383 0l147.653875-147.653875c0-0.005117 0.005117-0.005117 0.005117-0.005117l37.368072-37.368072C961.592648 519.020904 961.592648 504.33032 952.532295 495.269967L952.532295 495.269967zM634.083499 64.754816l-499.803213 0c-38.441521 0-69.608358 31.166837-69.608358 69.608358l0 754.806002c0 38.446637 31.166837 69.608358 69.608358 69.608358l499.803213 0c38.441521 0 69.608358-31.16172 69.608358-69.608358l0-97.937566c0-12.811794-10.386558-23.204491-23.204491-23.204491l-50.29243 0c-12.812817 0-23.205515 10.392698-23.205515 23.204491l0 37.257555c0 34.328853 0 34.328853-34.791387 34.328853L195.199751 862.818017c-34.801621 0-34.801621 0.00614-34.801621-34.806737L160.39813 194.712657c0-34.900881-0.074701-34.802644 34.801621-34.802644l376.99726 0c34.798551 0 34.791387 0.285502 34.791387 34.329876l0 38.353516c0 12.815887 10.392698 23.204491 23.205515 23.204491l50.29243 0c12.817933 0 23.204491-10.388605 23.204491-23.204491L703.690834 134.363174C703.691857 95.921653 672.52502 64.754816 634.083499 64.754816L634.083499 64.754816zM634.083499 64.754816" p-id="2316"></path></svg><path d="M678.3 655.4c24.2-13 51.9-20.4 81.4-20.4h0.1c3 0 4.4-3.6 2.2-5.6-30.8-27.6-65.6-49.7-103.7-65.8-0.4-0.2-0.8-0.3-1.2-0.5C719.2 518 759.6 444.7 759.6 362c0-137-110.8-248-247.5-248S264.7 225 264.7 362c0 82.7 40.4 156 102.6 201.1-0.4 0.2-0.8 0.3-1.2 0.5-44.7 18.9-84.8 46-119.3 80.6-34.5 34.5-61.5 74.7-80.4 119.5C147.9 807.5 138 854 137 901.8c-0.1 4.5 3.5 8.2 8 8.2h59.9c4.3 0 7.9-3.5 8-7.8 2-77.2 32.9-149.5 87.6-204.3C357 641.2 432.2 610 512.2 610c56.7 0 111.1 15.7 158 45.1 2.5 1.5 5.5 1.7 8.1 0.3zM512.2 534c-45.8 0-88.9-17.9-121.4-50.4-32.4-32.5-50.3-75.7-50.3-121.6 0-45.9 17.9-89.1 50.3-121.6S466.3 190 512.2 190s88.9 17.9 121.4 50.4c32.4 32.5 50.3 75.7 50.3 121.6 0 45.9-17.9 89.1-50.3 121.6C601.1 516.1 558 534 512.2 534zM880 772H640c-4.4 0-8 3.6-8 8v56c0 4.4 3.6 8 8 8h240c4.4 0 8-3.6 8-8v-56c0-4.4-3.6-8-8-8z" p-id="29776"></path></svg><path d="M1019.187265 715.083093a33.714432 33.714432 0 0 0-33.714432-33.714432 57.314534 57.314534 0 0 1-57.314533-56.977389 69.114585 69.114585 0 0 1 5.057165-21.914381 42.480184 42.480184 0 0 0-17.868649-48.548781l-67.428863-37.085875a39.445885 39.445885 0 0 0-16.520072-3.708587 44.165905 44.165905 0 0 0-32.02871 13.485772 89.343244 89.343244 0 0 1-45.851626 25.960113 88.331811 88.331811 0 0 1-45.514483-25.960113 42.817328 42.817328 0 0 0-33.714432-13.485772 41.805895 41.805895 0 0 0-16.857215 3.371443l-67.428863 38.097308a42.480184 42.480184 0 0 0-14.160062 49.897358 67.428863 67.428863 0 0 1 5.394309 21.577236 57.651678 57.651678 0 0 1-57.988822 56.640245h-3.708587a33.714432 33.714432 0 0 0-33.714432 33.714432 398.167436 398.167436 0 0 0-5.731453 52.594513 348.270078 348.270078 0 0 0 5.731453 52.931657 33.714432 33.714432 0 0 0 33.714432 33.714432h2.022866A55.291668 55.291668 0 0 1 573.145336 932.87832a43.154472 43.154472 0 0 0 15.845783 51.245936l65.405997 36.074442a42.817328 42.817328 0 0 0 49.22307-10.11433 87.320378 87.320378 0 0 1 46.525915-28.657266 86.983233 86.983233 0 0 1 46.86306 28.320122 44.165905 44.165905 0 0 0 33.714432 13.822917 42.143039 42.143039 0 0 0 18.205793-4.045732l67.428863-36.411586a42.480184 42.480184 0 0 0 14.160061-49.897358 69.788873 69.788873 0 0 1-5.394309-21.914381 57.651678 57.651678 0 0 1 56.640245-57.988822h3.708587a33.714432 33.714432 0 0 0 33.714432-33.714432 312.53278 312.53278 0 0 0 7.417175-52.931657 396.481715 396.481715 0 0 0-7.417175-51.58308z m-89.680388 81.588924a88.668955 88.668955 0 0 0-77.880337 87.994666 93.051831 93.051831 0 0 0 5.057165 27.30869l-39.108741 21.577236a125.417685 125.417685 0 0 0-16.182927-13.822917 73.497461 73.497461 0 0 0-98.783284 0 156.097818 156.097818 0 0 0-16.182927 13.485773l-37.423019-20.902948a93.051831 93.051831 0 0 0 5.057165-27.30869 88.668955 88.668955 0 0 0-77.543193-87.994666 149.017787 149.017787 0 0 1 0-57.314533 89.006099 89.006099 0 0 0 77.543193-88.331811 71.811739 71.811739 0 0 0-5.057165-26.634401l40.457318-22.251525a153.063519 153.063519 0 0 0 16.182927 13.148629 84.286079 84.286079 0 0 0 48.548781 18.205793 85.9718 85.9718 0 0 0 47.874493-17.868649c6.742886-5.057165 12.47434-9.777185 15.845783-12.811484l38.771596 21.577236a86.308945 86.308945 0 0 0 72.486028 114.966212 161.829271 161.829271 0 0 1 2.697154 28.657266 281.178359 281.178359 0 0 1-2.36001 28.320123z" p-id="880"></path><path d="M753.1804 667.2086a101.143295 101.143295 0 1 0 101.143295 101.143294 101.143295 101.143295 0 0 0-102.491872-101.480439z m36.411586 101.143294a38.434452 38.434452 0 0 1-37.760163 37.423019 37.760163 37.760163 0 1 1 37.760163-37.760163zM105.526171 923.775424v-30.342989c0-193.520837 171.606456-355.012964 364.453004-370.858746h-20.228659a260.612556 260.612556 0 0 0 139.577747-42.817328l16.182927-12.811484a255.555391 255.555391 0 0 0 101.143295-203.972311 261.623989 261.623989 0 0 0-523.247978 0 254.881102 254.881102 0 0 0 101.143295 203.972311l16.520071 12.811484-19.217225 7.754319A438.28761 438.28761 0 0 0 0 893.432435v90.691821a33.714432 33.714432 0 0 0 33.714432 33.714432h492.567844a624.728416 624.728416 0 0 1-40.457318-93.388976zM277.132627 259.601123a168.572158 168.572158 0 1 1 168.572158 165.875003 166.212147 166.212147 0 0 1-168.572158-165.875003z" p-id="881"></path></svg>
        </button>
        <a class="txt_link" onclick="location.href='LogoutServlet'">退出登录</a>
      </div>
    </div>
    <%--发送servlet请求--%>
  </div>
</body>
</html>
