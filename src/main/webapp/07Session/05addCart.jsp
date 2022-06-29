<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*, Ch07.*" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application"/>
<jsp:useBean id="ProductDTO" class="Ch07.ProductDTO" scope="page"/>
<jsp:setProperty name="ProductDTO" property="*"/>

<%
    // out.println("받은 상품 정보 : " + ProductDTO.toString());
    String id = (String) session.getAttribute("ID");
    Cartbean.cart.get(id).add(ProductDTO);
%>

<script>
    alert("상품을 카트에 담았습니다.");
    location.href="05Main.jsp";
</script>
</body>
</html>
