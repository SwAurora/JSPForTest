<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    int dan = Integer.parseInt(request.getParameter("dan"));
    for(int i = 1; i < 10; i++)
    {
%>
<%=dan%> X <%=i%> = <%=dan * i%> <br>
<%
    }
%>
</body>
</html>
