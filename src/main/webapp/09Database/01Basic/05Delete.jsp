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
  PreparedStatement pstmt;
  try
  {
    String url = "jdbc:mysql://localhost:3306/jsptest";
    String id = "root";
    String pw = "1234";
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, id, pw);
    System.out.println("Connected");
    pstmt = conn.prepareStatement("delete from tbl_board where bno = ?");
    pstmt.setInt(1, 100);

    int result = pstmt.executeUpdate();

    if(result > 0)
    {
      System.out.println("성공");
    }
    else
    {
      System.out.println("실패");
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
