<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="wrapper">
    <%--헤더--%>
    <jsp:include page="module/header.jsp">
        <jsp:param name="border" value="1px solid gray"/>
        <jsp:param name="bgcolor" value="beige"/>
        <jsp:param name="height" value="100px"/>
    </jsp:include>
    <%--네비--%>
    <jsp:include page="module/nav.jsp"/>
    <%--컨텐츠--%>
    <div>Contents</div>
    <%--푸터--%>
    <jsp:include page="module/footer.jsp"/>
</div>
</body>
</html>
