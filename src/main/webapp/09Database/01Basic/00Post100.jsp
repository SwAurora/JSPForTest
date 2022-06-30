<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    Connection conn = null;
    PreparedStatement pstmt = null;
    try
    {
        String url = "jdbc:mysql://localhost:3306/jsptest";
        String id = "root";
        String pw = "1234";
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, id, pw);
        System.out.println("Connected");

        int i=2;
        while(i<=100)
        {
            pstmt = conn.prepareStatement("insert into tbl_board values(?,?,?,?)");
            pstmt.setInt(1, i);
            pstmt.setString(2, "title"+i);
            pstmt.setString(3, "content"+i);
            pstmt.setString(4, "writer"+i);
            int result = pstmt.executeUpdate();
            i++;
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
            if(pstmt != null)
            {
                pstmt.close();
            }
            if(conn != null)
            {
                conn.close();
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }
%>
</body>
</html>
