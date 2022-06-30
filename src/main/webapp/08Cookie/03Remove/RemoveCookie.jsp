<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    Cookie[] cookies = request.getCookies();
    if(cookies != null)
    {
        for(Cookie cookie : cookies)
        {
            if(cookie.getName().equals(name))
            {
                cookie.setMaxAge(0); // 쿠키 제거
                response.addCookie(cookie); // 쿠키 갱신
%>
<script>
    alert("쿠키 삭제 완료");
    location.href = "ShowCookie.jsp";
</script>
<%
            }
        }
    }
%>
<script>
    alert("해당 쿠키는 존재하지 않습니다");
    location.href = "ShowCookie.jsp";
</script>
</body>
</html>
