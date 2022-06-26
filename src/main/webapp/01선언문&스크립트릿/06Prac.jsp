<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    for(int i = 2; i <= 9; i++)
    {
        for(int j = 1; j <= 9; j++)
        {
            out.println(i + " x " + j + " = " + (i * j) + "<br>");
        }
    }
%>
</body>
</html>
