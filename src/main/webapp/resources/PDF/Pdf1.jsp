<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-26
  Time: 오후 3:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Pdf1</title>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfobject/2.2.8/pdfobject.js"></script>
    <script>
        function init() {
            PDFObject.embed("./File/sample-3pp.pdf", "#example1");
        }
    </script>
</head>
<body onload="init();">
    <div id="example1"></div>
</body>
</html>
