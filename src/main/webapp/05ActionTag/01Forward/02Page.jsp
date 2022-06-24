<%--
  Created by IntelliJ IDEA.
  User: rlatj
  Date: 2022-06-24
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>
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
