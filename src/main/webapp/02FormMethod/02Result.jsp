<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String w = request.getParameter("divW");
    String h = request.getParameter("divH");
    String r = request.getParameter("divR");
%>
<html>
<head>
    <title>Title</title>
    <style>
        div
        {
            border: 1px solid gray;
        }
    </style>
</head>
<body>
<div id="d1">1</div>

<script>
    d1 = document.getElementById("d1");
    d1.style.width = '<%=w%>px';
    d1.style.height = '<%=h%>px';
    d1.style.borderRadius = '<%=r%>%';
</script>
</body>
</html>
