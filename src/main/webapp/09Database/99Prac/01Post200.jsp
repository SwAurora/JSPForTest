<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    String url = "jdbc:mysql://localhost:3306/jsptest";
    String id = "root";
    String pw = "1234";

    PreparedStatement pstmt = null;
    int i = 1;

    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, id, pw);
        while(i <= 200)
        {
            pstmt = conn.prepareStatement("insert into Book_tbl values(?,?,?,?,?,?)");
            pstmt.setInt(1, i);
            pstmt.setInt(2, i);
            pstmt.setString(3, "bookname" + i);
            pstmt.setString(4, "publisher" + i);
            pstmt.setInt(5, i);
            pstmt.setInt(6, i);
            pstmt.executeUpdate();
            i++;
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
