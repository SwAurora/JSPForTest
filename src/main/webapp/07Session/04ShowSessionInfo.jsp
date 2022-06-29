<%@ page import="java.util.Set" %>
<%@ page import="java.util.Iterator" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="SessionSave" class="Ch07.SessionSave" scope="application"/>

<%
    Set<String> set = SessionSave.sList.keySet();
    Iterator<String> iter = set.iterator();
    while(iter.hasNext())
    {
        String id = iter.next();
        String pw = (String) SessionSave.sList.get(id).getAttribute("PW");
        out.println("접속 계정명 : " + id +  " 접속 계정 패스워드 : " + pw + "<br>");
    }
%>
</body>
</html>
