<!--
작성자 : 윤태검, 이영록
내용 : 쉼터 화면 설계 및 구성. / Commnuity.jsp

일시 : 2022.10.10 ~
-->

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>List</title>

    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">

    <script>
        $(document).ready(function () {
            $('#table_i').DataTable();
        });
    </script>

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center" style="margin-top: 30px">
            <h1> 쉼터 </h1>

            <nav class="navbar" style="background-color: #7afacb; margin-top: 30px">
                <div class="container-fluid">
                    <select class="form-select" aria-label="Default select example" style="width: 20%">
                        <option selected>카테고리</option>
                        <option value="1">잡담</option>
                        <option value="2">일상</option>
                        <option value="3">공유</option>
                        <option value="4">Q&A</option>
                    </select>
                    <div class="d-flex">
                        <button class="button">잡담</button>
                        <button class="button">일상</button>
                        <button class="button">공유</button>
                        <button class="button">Q&A</button>
                    </div>
                </div>
            </nav>

            <table id="table_i" class="table table-striped table-bordered" style="width:100%;">
                <thead style="background-color: #7afacb">
                <tr>
                    <th>글번호</th>
                    <th style="width: 40%">제목</th>
                    <th>작성자</th>
                    <th>등록일</th>
                    <th>조회수</th>
                    <th>변경 버튼</th>
                    <th>삭제 버튼</th>
                    <th>첨부파일</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="vo" items="${list}">
                    <tr>
                        <td>${vo.cb_seq}</td>
                        <td><a href="ReadBoard.do?cb_seq=${vo.cb_seq}">${vo.cb_title} </a></td>
                        <td>${vo.mi_id}</td>
                        <td>${vo.cb_regDate}</td>
                        <td>${vo.cb_viewCount}</td>
                        <td>
                            <a href="Update.do?id=${vo.mi_id}">
                                <button class="button3">변경</button>
                            </a>
                        </td>
                        <td>
                            <a href="delete.do?cb_seq=${vo.cb_seq}">
                                <button class="button3">삭제</button>
                            </a>
                        </td>
                        <td>
                            <a href="download.do?cb_seq=${vo.cb_seq}&token=on">
                                <button class="button3">첨부파일</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
                <tfoot>
                <tr>
                    <th>글번호</th>
                    <th>제목</th>
                    <th>작성자</th>
                    <th>등록일</th>
                    <th>조회수</th>
                    <th>변경 버튼</th>
                    <th>삭제 버튼</th>
                    <th>첨부파일</th>
                </tr>
                </tfoot>
            </table>

            <a href="${contextPath}/board/CreateNewBoard.do">
                <button class="button2">작성하기</button>
            </a>

        </div>
    </article>
</section>


</body>
</html>
