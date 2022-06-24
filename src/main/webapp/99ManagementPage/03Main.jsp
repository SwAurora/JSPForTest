<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String height = request.getParameter("height");
    String border = request.getParameter("border");
    String bgcolor = request.getParameter("bgcolor");
%>
<div id="wrapper">
    <%--헤더--%>
    <jsp:include page="module/header.jsp"/>
    <%--네비--%>
    <jsp:include page="module/nav.jsp"/>
    <%--컨텐츠--%>
    <div>Contents</div>
    <%--푸터--%>
    <jsp:include page="module/footer.jsp"/>
</div>
</body>
</html>
