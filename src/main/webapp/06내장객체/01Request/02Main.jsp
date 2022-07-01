<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Main Page</h1>
<%
    String remoteIP = request.getRemoteAddr();
%>
<%=remoteIP%>님이 접속하셨습니다!<br>

<%@ page import="java.io.*" %>
<%@ page import="java.util.Date" %>
<%
    try
    {
        FileWriter wout = new FileWriter("C://upload//test.txt");
        //접속날짜시간, 원격 IP, 원격브라우저
        wout.write(new Date() + " | ");
        wout.write(request.getRemoteAddr() + " | ");
        wout.write(request.getHeader("User-agent") + "\n");
        wout.flush();
        wout.close();
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
</body>
</html>
