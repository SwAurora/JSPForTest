<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>MAIN</h1>
세션 ID : <%=session.getId()%><br>
계정 ID : <%=session.getAttribute("ID")%><br>
세션 유지시간 : <%=session.getMaxInactiveInterval()%><br>

<script>
    let max = <%=session.getMaxInactiveInterval()%>;

    function timer()
    {
        max = max - 1;
        document.getElementById('timer').innerHTML = max;
        if(max < 0)
        {
            clearInterval(tmp);
            alert("세션종료");
            location.href = "04LoginForm.jsp";
        }
    }
    tmp = setInterval(timer, 1000);
</script>

<p id="timer"></p>
<a href="04Logout.jsp">LOGOUT</a>
</body>
</html>
