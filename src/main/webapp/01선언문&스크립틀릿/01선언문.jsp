<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    선언문
    서블릿의 멤버변수 / 메소드를 선언할 수 있는 영역
    (JSP페이지 안에서)
    톰캣서버 동작동안에는 유지가 됨
--%>
<%!
    //변수 추가
    String hello = "Hello World!";

    //메소드 추가
    public String testFunc()
    {
        System.out.println("선언문 테스트");
        return "ABCD";
    }
%>

<%--표현식--%>
<%=hello %><br>
<%=testFunc()%><br>
</body>
</html>
