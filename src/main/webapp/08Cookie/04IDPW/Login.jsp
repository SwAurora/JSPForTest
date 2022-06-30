<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Login Page</h1>
<%
    Cookie[] cookies = request.getCookies();
    String userid = "";
    String pwd = "";
    String idchk = "";
    String pwdchk = "";

    if(cookies != null)
    {
        for(Cookie cookie : cookies)
        {
            if(cookie.getName().equals("userid"))
                userid = cookie.getValue();
            if(cookie.getName().equals("pwd"))
                pwd = cookie.getValue();
            if(cookie.getName().equals("idchk"))
                idchk = cookie.getValue();
            if(cookie.getName().equals("pwdchk"))
                pwdchk = cookie.getValue();
        }

        if(!idchk.equals("on"))
        {
            userid = "";
        }
        if(!pwdchk.equals("on"))
        {
            pwd = "";
        }
    }
%>

<form action="LoginProc.jsp">
    ID : <input type=text name=userid value="<%=userid%>"><br>
    PW : <input type=password name=pwd value="<%=pwd%>"><br>

    <%
        if(idchk.equals("on"))
        {
    %>
    <input type="checkbox" name="idchk" checked> 아이디 저장 &nbsp;
    <%
    }
    else
    {
    %>
    <input type="checkbox" name="idchk">아이디 저장&nbsp;
    <%
        }
    %>

    <%
        if(pwdchk.equals("on"))
        {
    %>
    <input type=checkbox name=pwdchk checked>패스워드 저장<br>
    <%
    }
    else
    {
    %>
    <input type=checkbox name=pwdchk>패스워드 저장<br>
    <%
        }
    %>
    <input type=submit value=로그인>
</form>
</body>
</html>
