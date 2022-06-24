<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("A", "지나옴");
%>

<jsp:forward page="B.jsp"></jsp:forward>
</body>
</html>
