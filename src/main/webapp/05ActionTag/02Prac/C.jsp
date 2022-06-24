<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>C</h1>
StartPage : <%=request.getParameter("userid")%><br>
StartPage : <%=request.getParameter("pwd")%><br>
A : <%=request.getAttribute("A")%><br>
B : <%=request.getAttribute("B")%><br>
</body>
</html>
