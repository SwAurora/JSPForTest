<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String url = "jdbc:mysql://localhost:3306/jsptest";
    String id = "root";
    String pw = "1234";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, id, pw);
        pstmt = conn.prepareStatement("select * from book_tbl where No between ? and ?");
        pstmt.setInt(1, 100);
        pstmt.setInt(2, 150);
        rs = pstmt.executeQuery();
        while(rs.next())
        {
            out.println(rs.getInt("No") + " | ");
            out.println(rs.getInt("BookCode") + " | ");
            out.println(rs.getString("BookName") + " | ");
            out.println(rs.getString("Publisher") + " | ");
            out.println(rs.getInt("TotalPage") + " | ");
            out.println(rs.getInt("Amount") + "<br>");
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    finally
    {
        if(pstmt != null)
        {
            try
            {
                pstmt.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
        if(conn != null)
        {
            try
            {
                conn.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    }
%>
</body>
</html>
