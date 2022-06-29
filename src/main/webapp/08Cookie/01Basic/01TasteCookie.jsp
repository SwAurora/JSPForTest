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
</body>
</html>
