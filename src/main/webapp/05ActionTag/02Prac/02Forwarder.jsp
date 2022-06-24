<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userid = request.getParameter("userid");
    String pwd = request.getParameter("pwd");
    String mode = request.getParameter("mode");
%>

<%
    if(mode.equals("type1"))
    {
%>
<jsp:forward page="A.jsp">
    <jsp:param name="userid" value="<%=userid%>"/>
    <jsp:param name="pwd" value="<%=pwd%>"/>
</jsp:forward>
<%
}
else if(mode.equals("type2"))
{
%>
<jsp:forward page="B.jsp">
    <jsp:param name="userid" value="<%=userid%>"/>
    <jsp:param name="pwd" value="<%=pwd%>"/>
</jsp:forward>
<%
}
else
{
%>
<jsp:forward page="C.jsp">
    <jsp:param name="userid" value="<%=userid%>"/>
    <jsp:param name="pwd" value="<%=pwd%>"/>
</jsp:forward>
<%
    }
%>
</body>
</html>
