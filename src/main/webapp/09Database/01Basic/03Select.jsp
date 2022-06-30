<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try
    {
        String url = "jdbc:mysql://localhost:3306/jsptest";
        String id = "root";
        String pw = "1234";
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, id, pw);
        System.out.println("Connected");

        pstmt = conn.prepareStatement("select * from tbl_board");
        rs = pstmt.executeQuery();
        while(rs.next())
        {
            out.println(rs.getInt("bno") + " | ");
            out.println(rs.getString("title") + " | ");
            out.println(rs.getString("content") + " | ");
            out.println(rs.getString("writer") + "<br>");
        }
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
