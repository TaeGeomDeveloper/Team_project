<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오후 2:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<style>
.FarmMain {
    margin-top: 30px;
    margin-bottom: 30px;
    text-align : center;
}
.FarmInfo {

  display: inline-block;
  margin : 0 auto;
  margin-left: 30px;
  width: 22%;
  height: 70vh;
  margin-top: auto;
  margin-bottom: auto;
}
.FarmInfoAll{
    width: 100%;
    height:100%;
    display:flex;
    justify-content: center;
}
.FarmInfoAll p{
    word-break:keep-all;
}
.FarmInfoBody {
    margin-top: 20px;
    margin-bottom: 20px;
}
.FarmInfoBody1 {
    margin-top : 20px;

}


.linkStyle {
    cursor:pointer;
    text-decoration-line:none;
    color:inherit;
}
.linkStyle {
     cursor:pointer;
     text-decoration-line:none;
     color:inherit;
}
.linkStyle:hover {
  color : red;
}
.linkStyle b:hover {
    color : red;
}

.FarmInfo p a:hover {
    color : red;
}

.FarmInfoImg {
    width: 22vw;
    height: 38vh;
    margin-bottom: 10px;

}
</style>
    <title>Main</title>

    <!-- 스타일시트 연결 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
          type="text/css">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>


</head>
<body>

<%--몸통--%>
<div id="FarmMain" >
  <h1>농업 정보</h1>
  <p>
     농업 관련 교육과 기타 지원제도 안내 페이지 입니다.<br />
     관심분야의 제목을 누르시면 관련사이트로 이동하실 수 있습니다.
  </p>
  <div class="FarmInfoAll">
    <div class="FarmInfo">
       <a href="https://www.returnfarm.com:444/cmn/main/main.do"target="_blank" class="linkStyle"><b>귀농 귀촌</b>
          <div class="FarmInfoBody1">
           <img class="FarmInfoImg" src="../${contextPath}/resources/image/Info/SupportFarmHouse.jpg" />
           <p>
               이제껏 살던 도시와는 다른 삶을 살아보기 위해서, 그리고 자연과 함께 더불어 살아보고 싶어서 귀농,귀촌을 원하는 분들이 많습니다. 하단에 교육URL이 있으니 참고하셔도 좋을 것 같습니다.
           </p>
           <a href="https://www.returnfarm.com:444/cmn/board/BBSMSTR_000000000111/bbsList.do" target="_blank" class="linkStyle">(귀농귀촌 관련교육)</a>

          </div>
       </a>
    </div>
    <div class="FarmInfo">
       <a href="https://www.fbo.or.kr/contents/Contents.do?menuId=0400100010" target="_blank" class="linkStyle"><b>농지연금제도</b>
          <div class="FarmInfoBody">
           <img class="FarmInfoImg" src="../${contextPath}/resources/image/Info/SupportFarmOld.jpg" />
           <p>
               귀농인들의 초기 부족한 자금을 지원하여 농촌에 안정적으로 정착할 수 있도록 하고 농촌 지역의 경제 활성화를 도모합니다.
           </p>
          </div>
       </a>
    </div>
    <div class="FarmInfo">
       <b>농기계 임대</b>
      <div class="FarmInfoBody">
       <img class="FarmInfoImg" src="../${contextPath}/resources/image/Info/SupportFarmRent.jpg" />
       <p>
       귀농을 시작한 후에는 필요한 장비들이 상당히 많습니다. 처음부터 구매하기보단 각지자체나 농협에서 농기계 및 장비를 임대해주는 사업이 있으니 이용해보시면 좋을 것 같습니다.
       </p>
      </div>
    </div>
    <div class="FarmInfo">
       <a href="https://agriedu.net/" target="_blank" class="linkStyle"><b>온라인 교육</b>
          <div class="FarmInfoBody">
           <img class="FarmInfoImg" src="../${contextPath}/resources/image/Info/SupportFarmOn.jpg" />
           <p>
               귀농인분들께서 작물, 축산, 관리등 여러분류의 교육을 받아보실 수 있습니다. 온라인과정뿐만 아니라 집체교육, 참여형 화상교육, 혼합교육등도 있습니다.
           </p>
          </div>
       </a>
    </div>
  </div>

</div>

<main class="main">

</main>


</body>
</html>
