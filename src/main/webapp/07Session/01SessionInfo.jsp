<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>세션정보확인</h1>
<%
    String id = (String)session.getAttribute("ID");
    String pw = (String)session.getAttribute("PW");
    String SID = session.getId();
    int intervalTime = session.getMaxInactiveInterval();
%>
세션 ID : <%=SID%><br>
계정 ID : <%=id%><br>
계정 PW : <%=pw%><br>
세션 유지 시간: <%=intervalTime%><br>
</body>
</html>
