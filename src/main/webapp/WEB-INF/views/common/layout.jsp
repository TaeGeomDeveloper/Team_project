<!--
작성자 : 윤태검
내용 : 타일즈 Header 부분 과 네비

일시 : 2022.10.10 ~
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"
%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="${contextPath}/resources/CSS/List.css" type="text/css" />
    <link rel="stylesheet" href="${contextPath}/resources/CSS/Main3.css" type="text/css" />

    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          type="text/css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <%-- 리액트 --%>
    <script crossorigin src="https://unpkg.com/react@18/umd/react.development.js"></script>
    <script crossorigin src="https://unpkg.com/react-dom@18/umd/react-dom.development.js"></script>

    <style>
        /*#container {*/
        /*  width: 100%;*/
        /*  margin: 0px auto;*/
        /*  text-align:left;*/
        /*  border: 0px solid #bcbcbc;*/
        /*}*/
        #header {
            top: 0;
            position: sticky;
            z-index: 3;
        }
        /*#sidebar-left {*/
        /*  width: 15%;*/
        /*  height:700px;*/
        /*  padding: 5px;*/
        /*  margin-right: 5px;*/
        /*  margin-bottom: 5px;*/
        /*  float: left;*/
        /*   background-color: yellow;*/
        /*  border: 0px solid #bcbcbc;*/
        /*  font-size:10px;*/
        /*}*/
        #content {
          /*position: sticky;*/
        }
        #footer {
          position: relative;
            bottom: 0px;
          z-index: 3;
        }
    </style>

    <title><tiles:insertAttribute name="title"/></title>
</head>

<body>

<div id="header">
    <tiles:insertAttribute name="header"/>
</div>
<div id="content">
    <tiles:insertAttribute name="body"/>
</div>
<div id="footer">
    <tiles:insertAttribute name="footer"/>
</div>

</body>
</html>