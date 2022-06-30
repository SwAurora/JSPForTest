<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    try
    {
        String url = "jdbc:mysql://localhost:3306/jsptest";
        String id = "root";
        String pw = "1234";
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, id, pw);
        System.out.println("Connected");
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        try
        {
            if(conn != null)
                conn.close();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
