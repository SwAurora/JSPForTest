<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("02Page", "02Page에서 만든 데이터");
%>
<jsp:forward page="03Page.jsp">
    <jsp:param name="02Page" value="02Page에서 만든 데이터"/>
</jsp:forward>
</body>
</html>
