<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="sessionSave" class="Ch07.SessionSave" scope="application"/>
<%
    String id = (String) session.getAttribute("ID");
    // HashMap id, session 제거
    sessionSave.sList.remove(id);
    session.invalidate();

    if(id != null)
    {
%>
<script>
    alert("<%=id%>님 로그아웃");
    location.href = "05LoginForm.jsp";
</script>
<%
    }
%>
</body>
</html>
