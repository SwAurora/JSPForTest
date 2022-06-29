<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>MAIN</h1>
세션 ID : <%=session.getId()%><br>
계정 ID : <%=session.getAttribute("ID")%><br>

<a href="02Logout.jsp">LOGOUT</a>
</body>
</html>
