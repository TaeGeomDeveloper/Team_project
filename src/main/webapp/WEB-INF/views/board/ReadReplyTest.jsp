
<%@page contentType="text/html;charset=UTF-8" language="java"%>
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
            <h1> 대댓글 입력 </h1>
            <form action="writeReReply.do" method="post">
                <table>
                    <tr>
                        <td>아이디</td>
                        <td><input type="text" name="cbr_replyId"/></td>
                    </tr>
                    <tr>
                        <td>내용</td>
                        <td><textarea rows="6" cols="50" name="cbr_content"></textarea></td>
                    </tr>
                    <tr>
                        <td><input type="hidden" name="cb_seq" value="${reply.cb_seq}"></td>
                        <td><input type="text" name="cbr_bundleSeq" value="${reply.cbr_bundleSeq}" /></td>
                        <td><input type="text" name="cbr_currentSeq" value="${reply.cbr_currentSeq}" /></td>
                        <td><input type="submit" value="test"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </article>
</section>

</body>
</html>
