<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>s
<head>
    <title>SmartFarmInfo</title>

    <style>
        #smartInfo {
            width: 560px;
            height: 315px;
        }

        #Main_Box {
            text-align: center;
        }

        /*#SmartImg1 {*/
        /*    transform: translate(-200px, 30px);*/
        /*    position: relative;*/
        /*    left: 25%;*/
        /*    margin-top: 50px;*/
        /*}*/

        /*#SmartImg2 {*/
        /*    transform: translate(-200px, 30px);*/
        /*    position: relative;*/
        /*    left: 5%;*/
        /*    margin-top: 50px;*/
        /*}*/

        /*#SmartImg3 {*/
        /*    transform: translate(-200px, 30px);*/
        /*    position: relative;*/
        /*    right: 10%;*/
        /*    margin-top: 50px;*/
        /*}*/

        .SmartClick:hover {
            color: red;
        }

        #SmartContainer {
            width: 100%;
            margin-bottom: 5vw;
            display: flex;
        }

        #SmartFruit {
            width: 33.33vw;
            border-top: 1px solid #04AA6D;
            border-left: 1px solid #04AA6D;
        }

        #SmartGarden {
            width: 33.33vw;
            border-top: 1px solid #04AA6D;

        }

        #SmartGround {
            width: 33.33vw;
            border-top: 1px solid #04AA6D;
            border-right: 1px solid #04AA6D;

        }

        .SmartFarmInfoHead {
            margin-left: 29%;
            border: 1px solid #04AA6D;
            border-radius: 8px;
            background-color: #ced4da;
            width: 600px;
        }

        #SmartFarmInfoFoot {
            border-left: 1px solid #04AA6D;
            border-right: 1px solid #04AA6D;
            border-bottom: 1px solid #04AA6D;
            padding-bottom: 20px;
        }

        #SmartFarmInfoFoot p {
            text-align: left;
        }

        .SmartFarmInfoHead span {
            color: red;
        }

        #centerLine {
            width: 49%;
            margin-right: 5px;
            color: transparent;
            border-right: 1px solid #04AA6D;
        }

        .imgHover {
            color: #8FBC8F;
        }
    </style>

    <script>
        $(document).ready(function () {
            $("#SmartFruit").click(function () {
                $("#SmartImg1").slideDown("slow");
                $("#SmartImg2").slideUp("slow");
                $("#SmartImg3").slideUp("slow");
            });
            $("#SmartGarden").click(function () {
                $("#SmartImg1").slideUp("slow");
                $("#SmartImg2").slideDown("slow");
                $("#SmartImg3").slideUp("slow");
            });
            $("#SmartGround").click(function () {
                $("#SmartImg1").slideUp("slow");
                $("#SmartImg2").slideUp("slow");
                $("#SmartImg3").slideDown("slow");
            });
        });
    </script>

</head>
<body>


<%--몸통--%>
<div id="Main_Box">

    <div class="SmartFarmInfoHead">
        <span>스마트 팜</span>은 농촌 고령화와 인구 감소로 인해 노동력이 부족한 현실을 <br/>보완하기 위해 개발되어 직접적인 노동 인력 없이도
        자동으로 농작물을 <br/>관리할 수 있는정보통신기술(ICT), 바이오기술(BT), 녹색기술(GT), 사물인터넷(IoT) 등을<br/> 농업에 접목해 지능화한 스마트 농장을 일컫는다
    </div>
    <div id="centerLine">경계</div>
    <div id="SmartContainer">
        <div class="SmartClick" id="SmartFruit">과수분야</div>
        <div class="SmartClick" id="SmartGarden">시설원예분야</div>
        <div class="SmartClick" id="SmartGround">노지분야</div>
    </div>
    <div>
        <img id="SmartImg1" src="../resources/image/Info/SmartFarmFruit.png" style="display: none"/>
        <img id="SmartImg2" src="../resources/image/Info/SmartFarmGarden.png" style="display: none"/>
        <img id="SmartImg3" src="../resources/image/Info/SmartFarmGround.png" style="display: none"/>
    </div>
    <div class="imgHover">관심분야 제목에 마우스를 가져오면 관련 이미지가 뜹니다.</div>
    <br/>
    <div>
        <%--            <iframe id="smartInfo" src="https://www.youtube.com/embed/1UC4bnP-LSw" title="YouTube video player" frameborder="0"--%>
        <%--            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>--%>
    </div>


    <br/>
    <p><img src="../resources/image/Info/leaf.png" style="width:1.8vw;height:4vh;margin-left:10px;"/> 스마트팜 의의 : 작물 생육정보와
        환경정보에 대한 데이터를 기반으로 최적 생육환경을 조성하여, 노동력·에너지·양분 등을 종전보다 덜 투입하고도 농산물의 생산성과 품질 제고 가능</p> <br/>
    <p id="SmartFarmInfoFoot"><img src="../resources/image/Info/leaf.png" style="width:1.8vw;height:4vh;"/> 스마트팜 기대효과 :
        ICT를 접목한 스마트 팜이 보편적으로 확산되면 노동·에너지 등 투입 요소의 최적 사용을 통해 우리 농업의 경쟁력을 한층 높이고, 미래성장산업으로 견인 가능<br/>
        단순한 노동력 절감 차원을 넘어서 농작업의 시간적·공간적 구속으로부터 자유로워져 여유시간도 늘고, 삶의 질도 개선되어 우수 신규 인력의 농촌 유입 가능성도 증가할 것으로 기대
    </p>
</div>
<script>

</script>

</body>
</html>
