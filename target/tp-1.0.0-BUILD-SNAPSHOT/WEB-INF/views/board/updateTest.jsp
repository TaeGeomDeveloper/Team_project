<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Main</title>

    <!-- Smart editor -->
    <script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
    <script type="text/javascript" src="${contextPath}/resources/JS/writeForm.js" charset="utf-8"></script>

    <script>
        function fn_sendPerson(){
            var SendPerson = document.SendPerson;

            SendPerson.method = "post";
            SendPerson.action = "./updateBoard.do";
            SendPerson.submit();
        }
    </script>

</head>
<body>

<%--몸통--%>
<section>
    <article>

        <div id="Main_Box" align="center">
            <h1> 수정페이지 </h1>
            <form name="SendPerson" id="frm" enctype="multipart/form-data">
                <table>
                    <tr>
                        <th>제목</th>
                        <td><input type="text" name="cb_title"></td>
                        <td><input type="hidden" name="cb_seq" value="${cb_seq}"></td>
                    </tr>
                    <tr>
                        <th>내용</th> <td style="width: 1000px"><textarea name="cb_content" id="cb_content" rows="30" cols="100" placeholder="내용을 입력해주세요"></textarea></td>
                    </tr>
                    <tr>
                        <th>첨부파일</th> <td><input type="file" name="cb_attachedFile"></td>
                    </tr>
                </table>
                <button class="button2" onclick="fn_sendPerson()" id="savebutton">수정하기</button>
            </form>
        </div>

    </article>
</section>

</body>
</html>
