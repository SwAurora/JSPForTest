<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        table
        {
            border-collapse: collapse;
        }
        td
        {
            border : 2px solid gray;
            width:100px;
            height:100px;
            text-align: center;
        }
    </style>
</head>
<body>
<table>
    <%
        for(int i = 0; i < 5; i++)
        {
    %>
    <tr>
        <%
            for(int j = 1; j <= 5; j++)
            {
        %>
        <td><%=j%></td>
        <%
            }
        %>
    </tr>
    <%
        }
    %>
</table>
</body>
</html>
