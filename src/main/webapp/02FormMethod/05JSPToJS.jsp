<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table
        {
            border: 1px solid gray;
            width: 300px;
            height: 300px;
        }
    </style>
</head>
<body>
<%
    String c1 = request.getParameter("c1");
    String c2 = request.getParameter("c2");
    String c3 = request.getParameter("c3");
    String c4 = request.getParameter("c4");
%>
<form action="05JSPToJS.jsp">
    <input name="c1">
    <input name="c2">
    <input name="c3">
    <input name="c4">
    <input type="submit">
</form>
<hr>
<table>
    <tr>
        <td>1</td>
        <td>2</td>
    </tr>
    <tr>
        <td>3</td>
        <td>4</td>
    </tr>
</table>

<script>
    list = document.getElementsByTagName('td');
    list[0].style.backgroundColor = "<%=c1%>";
    list[1].style.backgroundColor = "<%=c2%>";
    list[2].style.backgroundColor = "<%=c3%>";
    list[3].style.backgroundColor = "<%=c4%>";
</script>
</body>
</html>