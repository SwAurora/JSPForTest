<%@ page import="org.mindrot.bcrypt.BCrypt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="Bcrypt" class="org.mindrot.bcrypt.BCrypt" scope="page"/>
<%
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String idchk = request.getParameter("idchk");
    String pwdchk = request.getParameter("pwdchk");

    // 패스워드 암호화
    pwd = BCrypt.hashpw(pwd, BCrypt.gensalt());

    Cookie c1 = new Cookie("userid", userid);
    Cookie c2 = new Cookie("pwd", pwd);
    Cookie c3 = new Cookie("idchk", idchk);
    Cookie c4 = new Cookie("pwdchk", pwdchk);
    response.addCookie(c1);
    response.addCookie(c2);
    response.addCookie(c3);
    response.addCookie(c4);

    response.sendRedirect("Main.jsp");
%>
</body>
</html>
