<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
  out.println("TesT");
%>
<hr>
출력 Buffer의 전체 크기 : <%=out.getBufferSize()%>Byte<br>
남은 Buffer의 크기 : <%=out.getRemaining()%>Byte<br>
사용가능한 Buffer의 크기 : <%=out.getBufferSize() - out.getRemaining()%>Byte
</body>
</html>
