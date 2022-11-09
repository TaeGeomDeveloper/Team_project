<%@page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Main</title>

    <!-- 스타일시트 연결 -->

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center" style="margin-top: 30px">
            <h1> 게시글 </h1>

            <div class="d-flex justify-content-center" style="width: 80%; text-align: center; ">
                <table class="table align-middle" style="margin-top: 30px;  border: 5px solid #04AA6D;">
                    <thead>
                    <tr class="table-success">
                        <th scope="col" style="width: 5%">번호</th>
                        <th scope="col" style="width: 35%">제목</th>
                        <th scope="col" style="width: 10%">작성자</th>
                        <th scope="col" style="width: 15%">등록일</th>
                        <th scope="col" style="width: 5%">조회수</th>
                        <th scope="col" style="width: 10%">첨부파일</th>
                        <th scope="col" style="width: 10%">다운 횟수</th>
                        <th scope="col" style="width: 10%">수정</th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">
                    <tr style="margin: auto">
                        <td>${board.cb_seq}</td>
                        <td>${board.cb_title}</td>
                        <td>${board.mi_id}</td>
                        <td>${board.cb_regDate}</td>
                        <td>${board.cb_viewCount}</td>
                        <td><a href="download.do?seq=${board.cb_seq}&token=on">
                            ${board.cb_originFileName}</a></td>
                        <td>${board.cb_downloadCount}</td>
                        <td><a href="viewUpdatePage.do?seq=${board.cb_seq}">
                            <button class="button3">수정</button>
                        </a></td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <div style="width: 80%; border: 5px solid #04AA6D; border-radius: 20px; height: 700px">
                ${board.cb_content}
            </div>

            <%--댓글--%>
            <div class="d-flex justify-content-center" style="width: 80%; text-align: center;">
                <table class="table align-middle" style="margin-top: 30px; border: 5px solid #04AA6D;">
                    <thead>
                    <tr class="table-warning">
                        <th scope="col" style="width: 10%">글번호</th>
                        <th scope="col" style="width: 30%">작성자</th>
                        <th scope="col" style="width: 10%">번들Seq</th>
                        <th scope="col" style="width: 10%">현재Seq</th>
                        <th scope="col" style="width: 20%">작성일</th>
                        <th scope="col" style="width: 10%">수정</th>
                        <th scope="col" style="width: 10%">삭제</th>
                    </tr>
                    </thead>
                    <tbody class="table-group-divider">
                    <c:forEach var="reply" items="${replyList}">
                        <tr>
                            <td>${reply.cbr_seq}</td>
                            <td>${reply.cbr_replyId}</td>
                            <td>
                                <a href="viewWriteReReply.do?cbSeq=${board.cb_seq}&cbrBundleSeq=${reply.cbr_bundleSeq}&cbr_currentSeq=${reply.cbr_currentSeq}">${reply.cbr_bundleSeq}</a>
                            </td>
                            <td>${reply.cbr_currentSeq}</td>
                            <td>${reply.cbr_regDate}</td>
                            <td>
                                <a href="viewUpdateReply.do?cbSeq=${reply.cb_seq}&cbrSeq=${reply.cbr_seq}"><button class="button3">수정</button></a>
                            </td>
                            <td>
                                <a href="deleteReply.do?cbSeq=${reply.cb_seq}&cbrSeq=${reply.cbr_seq}"><button class="button3">삭제</button></a>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="7" style="height: 100px">${reply.cbr_content}</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>

            <form action="writeReply.do" method="post">
                <table style="margin-bottom: 30px">
                    <tr>
                        <th>아이디</th>
                        <td><input class="form-control" type="text" name="cbr_replyId" style="width: 150px"/></td>
                    </tr>
                    <tr>
                        <th>댓글</th>
                        <td><textarea class="form-control" id="floatingTextarea2" style="height: 100px; width: 600px" name="cbr_content"></textarea></td>
                        <input type="hidden" name="cb_seq" value="${board.cb_seq}">
                    </tr>
                </table>
                <button type="submit" class="button2">댓글등록</button>
            </form>
        </div>

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

    </article>
</section>

</body>
</html>
