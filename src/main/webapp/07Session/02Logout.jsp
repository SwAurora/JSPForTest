<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String id = (String) session.getAttribute("ID");
    session.invalidate();

    if(id != null)
    {
%>
<script>
    alert("<%=id%>님 로그아웃");
    location.href = "02LoginForm.jsp";
</script>
<%
    }
%>
</body>
</html>
