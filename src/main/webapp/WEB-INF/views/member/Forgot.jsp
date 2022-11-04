
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>Forgot</title>

    <!-- 스타일시트 연결 -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <script>
        function fn_find_pwd() {
            var Find = document.Find;

            Find.method = "post";
            Find.action = "./findPwd.do";
            Find.submit();
            //alert("입력하신 이메일로 비밀번호를 발송했습니다.");
        }

        function fn_find_id() {
            var Find = document.Find;

            Find.method = "post";
            Find.action = "./findId.do";
            Find.submit();
        }
    </script>

</head>
<body>

<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center" style="margin-bottom: 30px">
            <form name="Find">
                <table style="margin-top: 100px">
                    <tr>
                        <td>
                            <table class="c" align="center">
                                <h1 style="text-align: center"> ID 찾기 </h1>
                                <tr>
                                    <td class="form-floating w-80" align="center">
                                        이름
                                        <input type="text" class="form-control" id="floatingInput" placeholder="이름"
                                               name="mi_name">
                                        <label for="floatingInput"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-floating w-80" align="center">
                                        휴대전화
                                        <input type="text" class="form-control" id="floatingInputPhone"
                                               placeholder="휴대전화"
                                               name="mi_phone">
                                        <label for="floatingInputPhone"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <button class="button w-100" type="submit" onclick="fn_find_id()">ID 찾기
                                        </button>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            <table class="c" align="center">
                                <h1 style="text-align: center"> PW 찾기 </h1>
                                <tr>
                                    <td class="form-floating w-80" align="center">
                                        아이디
                                        <input type="text" class="form-control" id="floatingInputID" placeholder="아이디"
                                               name="mi_id">
                                        <label for="floatingInputID"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="form-floating w-80" align="center">
                                        이메일
                                        <input type="text" class="form-control" id="floatingInputPhone2"
                                               placeholder="이메일"
                                               name="mi_email">
                                        <label for="floatingInputPhone2"></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center">
                                        <button class="button w-100" type="submit" onclick="fn_find_pwd()">PW 찾기
                                        </button>
                                    </td>
                                </tr>
                                </td>
                            </table>
                    </tr>
                </table>
            </form>
        </div>

    </article>
</section>


</body>
</html>
