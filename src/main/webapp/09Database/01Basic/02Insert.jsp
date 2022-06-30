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

        pstmt = conn.prepareStatement("insert into tbl_board values(?,?,?,?)");
        pstmt.setInt(1, 1);
        pstmt.setString(2, "title1");
        pstmt.setString(3, "content1");
        pstmt.setString(4, "writer1");
        int result = pstmt.executeUpdate();

        if(result > 0)
        {
%>
<script>
    alert("INSERT 성공");
</script>
<%
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
