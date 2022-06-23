<%@ page import="Ch03.SampleDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setAttribute("03Page", "03Page 에서 전달하는 내용");
    SampleDTO sample = new SampleDTO("홍길동", "대구");
    request.setAttribute("sample", sample);

    //포워딩 방식
    RequestDispatcher dispatcher = request.getRequestDispatcher("07.jsp");
    dispatcher.forward(request, response);
%>
</body>
</html>
