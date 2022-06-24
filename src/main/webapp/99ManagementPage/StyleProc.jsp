<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="java.io.*" %>
<%
    String border = request.getParameter("border");
    String bgcolor = request.getParameter("bgcolor");
    String height = request.getParameter("height");

    Writer wout = new FileWriter("C://style//header//style.txt");

    wout.write(border + " ");
    wout.write(bgcolor + " ");
    wout.write(height);
    wout.flush();
    wout.close();

    response.sendRedirect("03Admin.jsp");
%>
</body>
</html>
