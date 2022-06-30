<%@ page import="Ch03.SampleDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="04ErrorPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String addr = request.getParameter("addr");

    if(name.equals("") && addr.equals(""))
    {
        throw new Exception("name, addr 둘다 NULL입니다.");
    }
    else if(name.equals(""))
    {
        throw new Exception("name이 NULL입니다.");
    }
    else if(addr.equals(""))
    {
        throw new Exception("addr이 NULL입니다.");
    }

    SampleDTO dto = new SampleDTO(name, addr);
    out.println("확인: " + dto);
%>
</body>
</html>
