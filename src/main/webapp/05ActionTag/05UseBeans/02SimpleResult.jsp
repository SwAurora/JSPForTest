<%@ page import="Ch05.BookBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<%
    String bookcode = request.getParameter("bookcode");
    String bookname = request.getParameter("bookname");
    String bookprice = request.getParameter("bookprice");
    BookBean bookbean = new BookBean();
    bookbean.setBookcode(bookcode);
    bookbean.setBookname(bookname);
    bookbean.setBookprice(bookprice);
%>--%>
<jsp:useBean id="bean" class="Ch05.BookBean" scope="page"/>
<jsp:setProperty name="bean" property="*"/>
확인 : <%=bean.toString()%><br>
코드 : <%=bean.getBookcode()%><br>
제목 : <%=bean.getBookname()%><br>
가격 : <%=bean.getBookprice()%><br>
</body>
</html>
