<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--Bean 생성--%>
<jsp:useBean id="bean" class="Ch05.TestBean" scope="page"/>
<%--값 등록--%>
<jsp:setProperty name="bean" property="msg1" value="msg1-value"/>

<%--Forward--%>
<jsp:forward page="02a.jsp"/>
</body>
</html>
