<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null)
    {
        for(Cookie cookie : cookies)
        {
            out.println(cookie.getName() + ", " + cookie.getValue() + "<br>");
        }
    }
%>
<a href="RemoveCookie.jsp?name=C1">C1 쿠키삭제</a>&nbsp;
<a href="RemoveCookie.jsp?name=C2">C2 쿠키삭제</a>
</body>
</html>
