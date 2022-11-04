<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
  <title>Insert</title>

  <!-- Smart editor -->
  <script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>
  <script type="text/javascript" src="${contextPath}/resources/smarteditor/js/HuskyEZCreator.js"
          charset="utf-8"></script>
  <script type="text/javascript" src="${contextPath}/resources/JS/writeForm.js" charset="utf-8"></script>
  <%--    <script type="text/javascript" charset="utf-8" src="<c:url value="${contextPath}/resources/JS/writeForm.js"/>"></script>--%>

  <script>
    function fn_click() {
      var WriteForm = document.WriteForm;

      WriteForm.method = "post";
      WriteForm.action = "./createBoard.do";
      WriteForm.submit();
    }
  </script>


</head>
<body>

<%--몸통--%>
<section>
  <article>
    <div id="Main_Box" align="center" style="margin-top: 30px">
      <form name="WriteForm" id="frm" enctype="multipart/form-data">
        <div style="border: 10px solid #04AA6D; border-radius: 20px; width: 80%; margin-bottom: 20px">
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
