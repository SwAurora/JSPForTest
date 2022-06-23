<%@ page import="Ch03.BookDTO" %>
<%@ page import="java.rmi.server.ExportException" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="05ErrorPage.jsp" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String BookCode = request.getParameter("BookCode");
    String BookName = request.getParameter("BookName");
    String Publisher = request.getParameter("Publisher");

    if(BookCode.equals("") && BookName.equals("") && Publisher.equals(""))
    {
        throw new Exception("ALL NULL");
    }
    else if(!BookCode.equals("") && BookName.equals("") && Publisher.equals(""))
    {
        throw new Exception("BookName, Publisher NULL");
    }
    else if(BookCode.equals("") && !BookName.equals("") && Publisher.equals(""))
    {
        throw new Exception("BookCode, Publisher NULL");
    }
    else if(BookCode.equals("") && BookName.equals(""))
    {
        throw new Exception("BookCode, BookName NULL");
    }
    else if(BookCode.equals(""))
    {
        throw new Exception("BookCode NULL");
    }
    else if(BookName.equals(""))
    {
        throw new Exception("BookName NULL");
    }
    else if(Publisher.equals(""))
    {
        throw new Exception("Publisher NULL");
    }

    BookDTO dto = new BookDTO(BookCode, BookName, Publisher);
    out.println(dto);
%>
</body>
</html>
