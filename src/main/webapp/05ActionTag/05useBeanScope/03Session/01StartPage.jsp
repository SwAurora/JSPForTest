<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--
    scope의 value 정리
    page(기본): 현재 페이지에서만 유효
    request: Request 객체유지에 따라 유효
    session: Session 객체 유지에 따라 유효
    application: tomcat 종료까지 유효
--%>
<%--Bean 생성--%>
<jsp:useBean id="bean" class="Ch05.TestBean" scope="session"/>
<%--값 등록--%>
<jsp:setProperty name="bean" property="msg1" value="msg1-value"/>

<%--Redirect(Request X)--%>
<%
    response.sendRedirect("02a.jsp");
%>
</body>
</html>
