<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String protocol = request.getProtocol();
    String serverName = request.getServerName();
    int serverPort = request.getServerPort();
    String remoteAddr = request.getRemoteAddr();
    String remoteHost = request.getRemoteHost();
    String method = request.getMethod();
    StringBuffer requestURL = request.getRequestURL();
    String requestURI = request.getRequestURI();
    String useBrower = request.getHeader("User-Agent");
    String fileType = request.getHeader("Accept");
%>

<h1>Request 내장객체 확인</h1>
프로토콜 : <%=protocol%><br>
서버 이름 : <%=serverName%><br>
서버 포트 : <%=serverPort%><br>
클라이언트 주소 : <%=remoteAddr%><br>
클라이언트 이름 : <%=remoteHost%><br>
사용함수 : <%=method%><br>
요청경로 : <%=requestURL%><br>
요청경로 : <%=requestURI%><br>
브라우저 : <%=useBrower%><br>
파일타입 : <%=fileType%><br>
</body>
</html>
