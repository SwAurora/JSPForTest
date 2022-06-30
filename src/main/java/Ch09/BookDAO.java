package Ch09;

import java.awt.print.Book;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BookDAO
{
    private static BookDAO instance = new BookDAO();

    public static BookDAO getInstance()
    {
        if(instance == null)
            instance = new BookDAO();
        return instance;
    }

    private String url = "jdbc:mysql://localhost:3306/jsptest";
    private String id = "root";
    private String pw = "1234";

    private Connection conn;
    private PreparedStatement pstmt;
    private ResultSet rs;

    private BookDAO()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url, id, pw);
            System.out.println("Connected.");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    public void Post200(BookDTO dto)
    {
        try
        {
            for(int i = 0; i < 200; i++)
            {
                pstmt = conn.prepareStatement("insert into book_tbl values(?,?,?,?,?,?)");
                pstmt.setInt(1, i);
                pstmt.setInt(2, dto.getBookcode() + i);
                pstmt.setString(3, dto.getBookname() + i);
                pstmt.setString(4, dto.getPublisher() + i);
                pstmt.setInt(5, dto.getTotalpage() + i);
                pstmt.setInt(6, dto.getAmount() + i);
                pstmt.executeUpdate();
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
                pstmt.close();
                conn.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }
    }

//    public static void main(String[] args)
//    {
//        BookDTO dto = new BookDTO(0, 10101010, "Title", "Publisher", 100, 10);
//        BookDAO dao = BookDAO.getInstance();
//        dao.Post200(dto);
//    }
}
