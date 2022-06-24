<%@ page import="java.io.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String img1 = request.getParameter("img1");
    String img2 = request.getParameter("img2");
    String img3 = request.getParameter("img3");
    String img4 = request.getParameter("img4");

    Writer wout = new FileWriter("C://card//cardname.txt");
    wout.write(img1 + " ");
    wout.write(img2 + " ");
    wout.write(img3 + " ");
    wout.write(img4 + " ");
    wout.flush();
    wout.close();

    response.sendRedirect("02Admin.jsp");
%>
</body>
</html>
