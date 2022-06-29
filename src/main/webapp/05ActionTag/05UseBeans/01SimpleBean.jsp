<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--Bean 객체 생성--%>
<jsp:useBean id="test1" class="Ch05.simpleBean" scope="page"/>
<%--Bean 객체 속성값 저장--%>
<jsp:setProperty name="test1" property="msg1" value="MSG1의 값"/>
<jsp:setProperty name="test1" property="msg2" value="MSG2의 값" />
<%--Bean 객체 속성값 확인--%>
MSG1 : <jsp:getProperty name="test1" property="msg1"/><br>
MSG2 : <jsp:getProperty name="test1" property="msg2"/><br>
<hr>

<%@page import = "Ch05.simpleBean"%>
<%
    simpleBean bean = new simpleBean();
    bean.setMsg1("메시지1");
    bean.setMsg2("메시지2");
%>
MSG1 = <%=bean.getMsg1()%><br>
MSG2 = <%=bean.getMsg2()%><br>
</body>
</html>
