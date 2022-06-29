<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="bean" class="Ch05.TestBean" scope="request"/>

<h1>RESULT</h1>
확인 : <%=bean.toString()%><br>
</body>
</html>
