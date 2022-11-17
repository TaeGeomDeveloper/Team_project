<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-11-15
  Time: 오전 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Weather</title>

    <script src="${contextPath}/resources/JS/weather.js"></script>
</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center">
            <h1> 기상청 작물별 농업 주산지 상세날씨 조회서비스 </h1>

            <div style="border: #04AA6D 5px; border-radius: 20px; margin-top: 30px">
                <input class="form-control" type="text" placeholder="원하는 날짜 (예: 20221114)" id="Day">

                <select class="form-select" id="AREA_ID">
                    <option selected>주산지</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </select>

                <select class="form-select" id="PA_CROP_SPE_ID">
                    <option selected>작물명</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                </select>

            </div>

            <div id="weatherBox" style="margin-top: 30px">

            </div>
        </div>
    </article>
</section>

</body>
</html>
