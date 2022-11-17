<%--
  작성자 : 윤태검

--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recruitment</title>
</head>
<body>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Recruitment</title>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
    <%--    <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=6dmgzabotq"></script>--%>
    <script type="text/javascript"
            src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=6dmgzabotq"></script>
    <script type="text/javascript"
            src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=6dmgzabotq&submodules=geocoder"></script>

    <script>


    </script>
</head>
<body>

<%--몸통--%>
<section>
    <article>
        <div id="Main_Box" align="center">
            <img src="${contextPath}/resources/image/Recruitment/구인구직.jpg" alt="promo1" width="800" height="450">
            <h1> 일손 구하기 </h1>

            <form name="WriteForm" id="frm" enctype="multipart/form-data">
                <div style="border: 10px solid #04AA6D; border-radius: 20px; width: 100%; margin-bottom: 20px">
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
                                                                placeholder="내용을 입력해주세요"></textarea></td>
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
    </article>
</section>

</body>
</html>
