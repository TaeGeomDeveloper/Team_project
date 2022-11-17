<%--
  작성자 : 윤태검

  작성일시 : 2022-11-11
  내용 : 상담 View 작성.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Advice</title>

    <!-- 스타일시트 연결 -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.min.css">

    <%-- summernote 라이브러리 추가 --%>
    <script type="text/javascript" src="${contextPath}/resources/summernote/js/summernote-lite.js"
            charset="UTF-8"></script>
    <script type="text/javascript" src="${contextPath}/resources/summernote/lang/summernote-ko-KR.js"
            charset="UTF-8"></script>
    <link rel="stylesheet" href="${contextPath}/resources/summernote/css/summernote-lite.css">
    <script type="text/javascript" src="${contextPath}/resources/summernote/js/summernoteFunction.js" charset="UTF-8"></script>

    <script>
        $(document).ready(function () {
            $('#table_Adivce').DataTable();

        });
    </script>

    <style>
        #Advice th {
            width: 100px;
            text-align: center;
        }

        .dropdown-toggle::after {
            display: none;
        }
    </style>

</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center" style="margin-top: 30px">
            <h1> 전문가 상담 및 문의 </h1>

            <div class="container marketing" style="margin-top: 30px">

                <!-- Three columns of text below the carousel -->
                <div class="row">
                    <div class="col-lg-4">
                        <img src="${contextPath}/resources/image/Advice/상담1.jpg" alt="상담1" width="140" height="140"
                             class="rounded-circle">

                        <h2 class="fw-normal">A</h2>
                        <p>전문가 A 에 대한 설명</p>
                        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="${contextPath}/resources/image/Advice/상담2.jpg" alt="상담2" width="140" height="140"
                             class="rounded-circle">

                        <h2 class="fw-normal">B</h2>
                        <p>전문가 B 에 대한 설명</p>
                        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="${contextPath}/resources/image/Advice/상담3.jpg" alt="상담3" width="140" height="140"
                             class="rounded-circle">

                        <h2 class="fw-normal">C</h2>
                        <p>전문가 C 에 대한 설명</p>
                        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->


                <!-- START THE FEATURETTES -->

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading fw-normal lh-1"> 전문가 A <span class="text-muted">It’ll blow your mind.</span>
                        </h2>
                        <p class="lead"> 당신의 고민을 한번에 해결.</p>
                    </div>
                    <div class="col-md-5">
                        <img src="${contextPath}/resources/image/Advice/상담1.jpg" alt="상담1" width="500" height="500">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7 order-md-2">
                        <h2 class="featurette-heading fw-normal lh-1">전문가 B <span
                                class="text-muted">See for yourself.</span></h2>
                        <p class="lead"> 농사 최고의 도우미 </p>
                    </div>
                    <div class="col-md-5 order-md-1">
                        <img src="${contextPath}/resources/image/Advice/상담2.jpg" alt="상담2" width="500" height="500">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading fw-normal lh-1">전문가 C <span class="text-muted">Checkmate.</span>
                        </h2>
                        <p class="lead"> 당신의 농사를 설계 해줍니다. </p>
                    </div>
                    <div class="col-md-5">
                        <img src="${contextPath}/resources/image/Advice/상담3.jpg" alt="상담3" width="500" height="500">
                    </div>
                </div>

                <hr class="featurette-divider">

                <!-- Button trigger modal -->
                <div style="margin-top: 20px;margin-bottom: 20px">
                    <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#exampleModal"
                            style="width: 50%; height: 80px; font-size: 40px">
                        상담 예약
                    </button>
                </div>

                <hr class="featurette-divider">

                <div style="margin-top: 30px">
                    <%-- 상담 게시판 현황 --%>
                    <h1> 상담 현황 </h1>
                    <table id="table_Adivce" class="table table-striped table-bordered" style="width:100%;">
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
                        <c:forEach var="i" begin="0" end="15">
                            <tr>
                                <td>${i}</td>
                                <td> 제목 ${i}</td>
                                <td>김 모씨</td>
                                <td>2022-11-11</td>
                                <td>0</td>
                                <td>
                                    <button class="button3">변경</button>
                                </td>
                                <td>
                                    <button class="button3">삭제</button>
                                </td>
                                <td>
                                    <button class="button3">첨부파일</button>
                                </td>
                            </tr>
                            <tr>
                                <td>${i}</td>
                                <td> 상담 리스트 ${i}</td>
                                <td>윤 모씨</td>
                                <td>2022-11-11</td>
                                <td>0</td>
                                <td>
                                    <button class="button3">변경</button>
                                </td>
                                <td>
                                    <button class="button3">삭제</button>
                                </td>
                                <td>
                                    <button class="button3">첨부파일</button>
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
                </div>

                <!-- /END THE FEATURETTES -->
            </div>

        </div>
    </article>
</section>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">스마트 팜</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <form name="WriteForm" id="frm" enctype="multipart/form-data">
                    <div style="border: 10px solid #04AA6D; border-radius: 20px; width: 100%; margin-bottom: 20px">
                        <table id="Advice" style="margin: 20px">
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
                                <td style="width: 900px;">
                                    <div>
                                        <textarea name="cb_content" id="cb_content" placeholder=""></textarea>
                                    </div>
                                </td>
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
                    <button class="button2" type="submit" onclick="fn_click()" id="savebutton"> 작성하기</button>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
