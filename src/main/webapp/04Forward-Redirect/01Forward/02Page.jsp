<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@page import="Ch03.*" %>
<%
    request.setAttribute("02Page", "02Page 에서 전달하는 내용");
    BookDTO book = new BookDTO("1010", "JAVA의 정석", "00미디어");
    request.setAttribute("book", book);
    //포워딩 방식
    //RequestDispatcher
    //클라이언트로부터의 요청을 JSP/Servlet 내의 특정 자원으로
    //Forwarding 처리를 하기 위해 사용되는 클래스

    //request.getRequestDispatcher(URL)
    //-> Forwarding 경로 지정
    //dispatcher.forward()
    //-> request 객체, response 객체의 제어권을 넘기는데 사용
    RequestDispatcher dispatcher = request.getRequestDispatcher("06.jsp");
    dispatcher.forward(request, response);
%>
</body>
</html>
