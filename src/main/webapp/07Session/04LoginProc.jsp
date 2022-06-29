<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="SessionSave" class="Ch07.SessionSave" scope="application"/>
<%
    String id = request.getParameter("userid");
    String pw = request.getParameter("pwd");

    session.setAttribute("ID", id);
    session.setAttribute("PW", pw);
    session.setMaxInactiveInterval(60*15);

    // 세션정보 저장
    SessionSave.AddSession(id, session);

    response.sendRedirect("04Main.jsp");
%>
</body>
</html>
