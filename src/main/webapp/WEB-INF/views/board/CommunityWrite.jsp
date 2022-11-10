<!--
작성자 : 윤태검, 이영록
내용 : 자유게시판 작성페이지 화면 설계 및 구성. / CommnuityWrite.jsp

일시 : 2022.10.10 ~
-->

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Insert</title>
    <%-- summernote 라이브러리 추가 --%>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/summernote/js/summernote-lite.js" charset="UTF-8"></script>
    <script type="text/javascript" src="${contextPath}/resources/summernote/lang/summernote-ko-KR.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="${contextPath}/resources/summernote/css/summernote-lite.css">
    <script type="text/javascript" src="${contextPath}/resources/summernote/js/summernoteFunction.js" charset="UTF-8"></script>

    <style>
        textarea(#cb_content) {
            box-sizing: inherit;
            font-family: '맑은고딕', sans-serif;
        }
    </style>

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center" style="margin-top: 30px">
            <form name="WriteForm" enctype="multipart/form-data">
                <div style="border: 10px solid #04AA6D; border-radius: 20px; width: 80%; margin-bottom: 20px">
                    <table style="margin: 20px">
                        <tr>
                            <th>아이디</th>
                            <td><input class="form-control" placeholder="ID" type="text" name="mi_id"
                                       style="width: 25%"/>
                            </td>
                        </tr>
                        <tr>
                            <th>제목</th>
                            <td><input class="form-control" placeholder="Title" type="text" name="cb_title"
                                       style="width: 50%"/></td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td style="width: 1000px"><textarea name="cb_content" id="cb_content" rows="30" cols="100"
                                                                placeholder=""></textarea></td>
                        </tr>
                        <tr>
                            <th>첨부파일</th>
                            <td><input class="form-control" placeholder="file" type="file" name="cb_attachedFile"
                                       style="width: 50%"/></td>
                        </tr>
                    </table>
                </div>
            </form>

            <div style="margin: auto">
                <button class="button2" type="submit" onclick="fn_click()" > 작성하기</button>
            </div>
        </div>

    </article>
</section>

</body>
</html>
