<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>세션객체에 값넣기</h1>
<%
    String id = "abcd";
    String pw = "1234";

    session.setAttribute("ID", id);
    session.setAttribute("PW", pw);
    session.setMaxInactiveInterval(20);
%>

<a href="01SessionInfo.jsp">세션정보확인</a>
</body>
</html>
