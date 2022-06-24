<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%!
    String border;
    String bgcolor;
    String height;
%>

<%
    border = request.getParameter("border");
    bgcolor = request.getParameter("bgcolor");
    height = request.getParameter("height");
%>
<div id="header">
    Header
</div>

<script>
    header = document.getElementById("header");
    header.style.border = "<%=border%>";
    header.style.backgroundColor = "<%=bgcolor%>";
    header.style.height = "<%=height%>";
</script>
