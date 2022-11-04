<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
  <title>HowFarmer</title>

  <!-- 스타일시트 연결 -->
  <script src="http://code.jquery.com/jquery-latest.js"></script>

  <%-- 폰트 --%>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
  </style>

</head>
<body>

<%--몸통--%>
<section>
  <article>
    <div id="Main_Box" align="center" style="margin-top: 30px">
      <h1> 귀농 절차 </h1>

      <img src="${contextPath}/resources/image/HowFarmer/귀농절차.jpg" alt="promo1" width="900" height="900">


    </div>
  </article>
</section>

</body>
</html>
