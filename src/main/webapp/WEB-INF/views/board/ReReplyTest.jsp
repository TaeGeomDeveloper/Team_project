<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Insert</title>

    <%--    <input type="submit" value="댓글쓰기" onclick="goPage(1,document.frm)">--%>
    <%--    <script>--%>
    <%--        function goPage(type,frm){--%>
    <%--            if(type==0){--%>
    <%--                frm.action = "viewUpdateBook.do";--%>
    <%--            } else {--%>
    <%--                frm.action = "writeReply.do";--%>
    <%--            }--%>
    <%--            frm.submit();--%>
    <%--        }--%>
    <%--    </script>--%>

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
                        <td><input type="hidden" name="cb_seq" value="${board.cb_seq}"></td>
                        <td><input type="submit" value="test"/></td>
                    </tr>
                </table>
            </form>
        </div>
    </article>
</section>

</body>
</html>
