<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    pageContext.getOut().print("Hello World!<br>");

    HttpServletResponse res = (HttpServletResponse) pageContext.getResponse();
    res.sendError(404, "에러");
%>
</body>
</html>
