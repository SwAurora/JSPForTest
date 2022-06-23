<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
%>
<h1>Forward 결과</h1>
ID : <%=userid%><br>
PW : <%=pwd%><br>
</body>
</html>
