<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("03Page", "03Page에서 만든 데이터");
%>
<jsp:forward page="04Result.jsp">
    <jsp:param name="03Page" value="03Page에서 만든 데이터"/>
</jsp:forward>
</body>
</html>
