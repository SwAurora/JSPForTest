<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<ul>
    <%
        String str = "TEST";
        for(int i = 0; i < 10; i++)
        {
    %>
    <li><%=str+i%></li>
    <%
        }
    %>
</ul>
</body>
</html>
