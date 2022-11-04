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
    <title>Advice</title>

    <!-- 스타일시트 연결 -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>



</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center" style="margin-top: 30px">
            <h1>  전문가 상담 및 문의 </h1>

            <div class="container marketing" style="margin-top: 30px">

                <!-- Three columns of text below the carousel -->
                <div class="row">
                    <div class="col-lg-4">
                        <img src="${contextPath}/resources/image/Advice/상담1.jpg" alt="상담1" width="140" height="140" class="rounded-circle">

                        <h2 class="fw-normal">A</h2>
                        <p>전문가 A 에 대한 설명</p>
                        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="${contextPath}/resources/image/Advice/상담2.jpg" alt="상담2" width="140" height="140" class="rounded-circle">

                        <h2 class="fw-normal">B</h2>
                        <p>전문가 B 에 대한 설명</p>
                        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <img src="${contextPath}/resources/image/Advice/상담3.jpg" alt="상담3" width="140" height="140" class="rounded-circle">

                        <h2 class="fw-normal">C</h2>
                        <p>전문가 C 에 대한 설명</p>
                        <p><a class="btn btn-secondary" href="#">View details &raquo;</a></p>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->


                <!-- START THE FEATURETTES -->

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading fw-normal lh-1"> 전문가 A <span class="text-muted">It’ll blow your mind.</span></h2>
                        <p class="lead"> 당신의 고민을 한번에 해결.</p>
                    </div>
                    <div class="col-md-5">
                        <img src="${contextPath}/resources/image/Advice/상담1.jpg" alt="상담1" width="500" height="500">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7 order-md-2">
                        <h2 class="featurette-heading fw-normal lh-1">전문가 B <span class="text-muted">See for yourself.</span></h2>
                        <p class="lead"> 농사 최고의 도우미 </p>
                    </div>
                    <div class="col-md-5 order-md-1">
                        <img src="${contextPath}/resources/image/Advice/상담2.jpg" alt="상담2" width="500" height="500">
                    </div>
                </div>

                <hr class="featurette-divider">

                <div class="row featurette">
                    <div class="col-md-7">
                        <h2 class="featurette-heading fw-normal lh-1">전문가 C <span class="text-muted">Checkmate.</span></h2>
                        <p class="lead"> 당신의 농사를 설계 해줍니다. </p>
                    </div>
                    <div class="col-md-5">
                        <img src="${contextPath}/resources/image/Advice/상담3.jpg" alt="상담3" width="500" height="500">
                    </div>
                </div>

                <hr class="featurette-divider">

                <!-- /END THE FEATURETTES -->
            </div><!-- /.container -->

            <button class="button2">상담 예약</button>

        </div>
    </article>
</section>

</body>
</html>
