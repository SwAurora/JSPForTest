<%@ page import="java.util.ArrayList" %>
<%@ page import="Ch07.ProductDTO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application"/>
<%
    String id = (String) session.getAttribute("ID");
    ArrayList<ProductDTO> list = Cartbean.cart.get(id);
    for(ProductDTO productDTO : list)
    {
        out.println(productDTO.toString() + "<br>");
    }
%>
</body>
</html>
