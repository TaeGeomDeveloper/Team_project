
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Login</title>

    <!-- 스타일시트 연결 -->
    <script src="http://code.jquery.com/jquery-latest.js"></script>

    <%-- 폰트 --%>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
    </style>

    <script>
        function fn_sendPerson() {
            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "./loginProcess.do";
            SendPerson.submit();
        }

        function fn_find() {
            var Find = document.Find;

            Find.method = "post";
            Find.action = "./Forgot.do";
            Find.submit();
        }
    </script>
</head>

<body>
<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center" style="margin-top: 50px">
            <form name="SendPerson">
                <table class="c" align="center">
                    <h1 style="text-align: center"> 로그인 </h1>
                    <tr>
                        <td class="form-floating w-80" align="center">
                            <input type="text" class="form-control" id="floatingInput" placeholder="아이디" name="mi_id">
                            <label for="floatingInput"></label>
                        </td>
                    </tr>
                    <tr>
                        <td class="form-floating w-80" align="center">
                            <input type="password" class="form-control" id="floatingPassword" placeholder="비밀번호"
                                   name="mi_password">
                            <label for="floatingPassword"></label>
                        </td>
                    </tr>
                    <tr>
                        <td class="checkbox mb-3">
                            <input type="checkbox" value="remember-me"> 기억하기
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <button class="button w-100" type="submit" onclick="fn_sendPerson()">로그인</button>
                        </td>
                    </tr>
                </table>
            </form>
            <form name="Find">
                <table class="c" align="center">
                    <tr>
                        <td>
                            <a href="">
                                <button class="button w-100" type="submit" onclick="fn_find()"> ID 또는 PW 찾기</button>
                            </a>
                        </td>
                    </tr>
                    <tr>
                        <td class="mt-5 mb-3 text-muted">&copy; 2022 기가막히조</td>
                    </tr>
                </table>
            </form>
        </div>
    </article>
</section>
</body>
</html>
