<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="04GooGooDan.jsp" method="get">
    <fieldset>
        <legend>구구단</legend>
        <label>단수</label>
        <input type="text" name="dan">
        <input type="submit">
    </fieldset>
</form>
<hr>
<%
    try
    {
        int dan = Integer.parseInt(request.getParameter("dan"));
        for(int i = 1; i < 10; i++)
        {
%>
<%=dan%> X <%=i%> = <%=dan * i%> <br>
<%
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
%>
</body>
</html>
