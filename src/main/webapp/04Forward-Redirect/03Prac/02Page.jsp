<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    01StartPage로부터 전달받은 isForward의 값이 true면 포워드방식으로 03Forward로 페이지 처리
    이 때 입력했던 ID/PW를 그대로 화면에 출력
    false면 리다이렉트 방식으로 03Redirect로 페이지 처리
    이 때 입력했던 ID/PW를 화면에 출력
--%>
<%@page import="java.net.*" %>
<%
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String isForward = request.getParameter("isForward");
%>

<%
    if(isForward.equals("true"))
    {
        RequestDispatcher dispatcher = request.getRequestDispatcher("03Forward.jsp");
        dispatcher.forward(request, response);
    }
    else
    {
        //URL Encoding
        userid = URLEncoder.encode(userid);
        //Redirect
        response.sendRedirect("03Redirect.jsp?userid=" + userid + "&pwd=" + pwd);
    }
%>
</body>
</html>
