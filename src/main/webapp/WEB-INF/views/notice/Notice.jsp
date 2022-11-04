<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%--
        작성자 : 윤태검

        내용 : 공지사항 JSP
        일시 : 2022-11-03

--%>

<html>
<head>
    <title>List</title>

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center" style="margin-top: 30px">
            <h1> 공지사항 </h1>

            <div class="d-flex justify-content-center" style="width: 90%; text-align: center">
                <table class="table align-middle table-hover" style="margin-top: 30px; border: 5px solid #04AA6D;">
                    <thead>
                    <tr class="table-success">
                        <th scope="col" style="width: 5%">글번호</th>
                        <th scope="col" style="width: 45%">제목</th>
                        <th scope="col" style="width: 10%">작성자</th>
                        <th scope="col" style="width: 15%">등록일</th>
                        <th scope="col" style="width: 5%">조회수</th>
                        <th colspan="3" style="width: 20%"> 버튼</th>
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
                                    <button class="button3">변경</button>
                                </a>
                            </td>
                            <td>
                                <a href="delete.do?seq=${vo.cb_seq}">
                                    <button class="button3">삭제</button>
                                </a>
                            </td>
                            <td>
                                <a href="download.do?seq=${vo.cb_seq}&token=on">
                                    <button class="button3" >첨부파일</button>
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <a href="${contextPath}/smartfarm/notice/CreateNewBoard.do"><button class="button2">작성하기</button></a>

            <%--페이지 네비--%>
            <nav aria-label="Page navigation example">
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>

        </div>
    </article>
</section>


</body>
</html>
