<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie c1 = new Cookie("C1", "value1");
    c1.setMaxAge(60 * 60);
    Cookie c2 = new Cookie("C2", "value2");
    c2.setMaxAge(60 * 60);

    response.addCookie(c1);
    response.addCookie(c2);
%>
<a href="ShowCookie.jsp">쿠키 확인</a>
</body>
</html>
