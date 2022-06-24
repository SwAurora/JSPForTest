<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("B", "지나옴");
%>

<jsp:forward page="C.jsp">
    <jsp:param name="B" value="지나옴"/>
</jsp:forward>
</body>
</html>
