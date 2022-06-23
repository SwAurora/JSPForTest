<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="03ErrorPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String num = request.getParameter("num");
    String div = request.getParameter("div");
    int n = Integer.parseInt(num);
    int d = Integer.parseInt(div);
    int result = n / d;
    out.println("결과값: " + result);
%>
</body>
</html>
