<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Result</h1>
StartPage : <%=request.getParameter("userid")%><br>
StartPage : <%=request.getParameter("pwd")%><br>
02Page : <%=request.getAttribute("02Page")%><br>
03Page : <%=request.getAttribute("03Page")%><br>
</body>
</html>
