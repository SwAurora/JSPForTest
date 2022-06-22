<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String title = request.getParameter("title");
    String bgcolor = request.getParameter("bgcolor");
    if(bgcolor.equals("etc"))
    {
        bgcolor = "blue";
    }
%>
<html>
<head>
    <title><%=title%>
    </title>
</head>
<body bgcolor=<%=bgcolor%>>
<h1><%=title%>
</h1>
</body>
</html>
