<%@ page import="java.util.Scanner" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    Scanner sc = new Scanner(System.in);
%>
<%
    System.out.println("문자열 입력: ");
    String str = sc.nextLine();
%>

문자열 : <%=str%>
</body>
</html>
