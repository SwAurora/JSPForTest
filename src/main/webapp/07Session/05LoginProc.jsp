<%@ page import="java.util.ArrayList" %>
<%@ page import="Ch07.ProductDTO" %>
<%@ page import="java.util.Set" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<jsp:useBean id="SessionSave" class="Ch07.SessionSave" scope="application"/>
<jsp:useBean id="Cartbean" class="Ch07.CartRepository" scope="application"/>
<%
    String id = request.getParameter("userid");
    String pw = request.getParameter("pwd");

    session.setAttribute("ID", id);
    session.setAttribute("PW", pw);
    session.setMaxInactiveInterval(30);

    // 세션정보 저장
    SessionSave.AddSession(id, session);

    // 계정 전용 ArrayList<ProductDTO>를 생성 + 연결
    Set<String> set = Cartbean.cart.keySet();
    boolean flag = false;
    for(String mapId : set)
    {
        if(mapId.equals(id))
        {
            flag = true;
            break;
        }
    }
    if(!flag)
    {
        ArrayList<ProductDTO> list = new ArrayList<>();
        Cartbean.cart.put(id, list);
    }

    response.sendRedirect("05Main.jsp");
%>
</body>
</html>
