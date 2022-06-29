<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="bean" class="Ch05.memberBean" scope="page"/>
<jsp:setProperty name="bean" property="*"/>
<%=bean.getEmail()%><br>
<%=bean.getPwd()%><br>
<%=bean.getAddr1()%><br>
<%=bean.getAddr2()%><br>
</body>
</html>
