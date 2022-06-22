<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    for(int i = 0; i < 10; i++)
    {
        out.println("Hello World<br>");
    }
    int a = 100;
    if(a % 2 == 0)
    {
        out.println(a + "는 짝수 입니다..<br>");
    }
%>
</body>
</html>
