<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
    //멤버변수
    int a = 0;

    public int addOne()
    {
        a++;
        return a;
    }
%>
변수 a의 값 = <%=addOne()%>
</body>
</html>
