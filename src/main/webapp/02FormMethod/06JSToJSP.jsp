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

    if(c1 == null || c2 == null || c3 == null || c4 == null)
    {
        c1 = "orange";
        c2 = "orange";
        c3 = "orange";
        c4 = "orange";
    }
%>

<script>
    function JSFunc()
    {
        let form = document.FORM1;
        form[0].value = 'blue';
        form[1].value = 'orange';
        form[2].value = 'red';
        form[3].value = 'beige';
        form.action = '06JSToJSP.jsp';
        form.submit();
    }
</script>

<form name="FORM1">
    <input name="c1">
    <input name="c2">
    <input name="c3">
    <input name="c4">
    <button onclick="JSFunc()">전송</button>
</form>
<hr>
<table>
    <tr>
        <td bgcolor="<%=c1%>">1</td>
        <td bgcolor="<%=c2%>">2</td>
    </tr>
    <tr>
        <td bgcolor="<%=c3%>">3</td>
        <td bgcolor="<%=c4%>">4</td>
    </tr>
</table>
</body>
</html>

