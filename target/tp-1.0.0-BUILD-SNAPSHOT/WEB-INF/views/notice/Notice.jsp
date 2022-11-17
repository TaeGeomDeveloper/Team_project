<!--
작성자 : 윤태검, 이영록
내용 : 공지사항 화면 설계 및 구성. / Notice.jsp

일시 : 2022.10.10 ~
-->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>공지사항</title>

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
            <h1 style="font-size: 60px; color: #cc5bf5"> 공지사항 </h1>

            <table id="table_i" class="table table-striped table-bordered" style="width:100%; ">
                <thead style="background-color: #e2a0fa">
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
                <tbody class="table-group-divider">
                <c:forEach var="vo" items="${list}">
                    <tr>
                        <th scope="row">${vo.cb_seq}</th>
                        <td><a href="ReadBoard.do?seq=${vo.cb_seq}">${vo.cb_title} </a></td>
                        <td> ${vo.mi_id}</td>
                        <td>${vo.cb_regDate}</td>
                        <td>${vo.cb_viewCount}</td>
                        <td>
                            <a href="Update.do?id=${vo.mi_id}">
                                <button class="button">변경</button>
                            </a>
                        </td>
                        <td>
                            <a href="delete.do?seq=${vo.cb_seq}">
                                <button class="button">삭제</button>
                            </a>
                        </td>
                        <td>
                            <a href="download.do?seq=${vo.cb_seq}&token=on">
                                <button class="button">첨부파일</button>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <a href="${contextPath}/smartfarm/notice/CreateNewBoard.do">
                <button class="button2">작성하기</button>
            </a>

        </div>
    </article>
</section>


</body>
</html>
