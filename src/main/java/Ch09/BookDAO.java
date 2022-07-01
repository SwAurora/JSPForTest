package Ch09;

import java.sql.*;
import java.util.ArrayList;

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

    // 조회함수
    public ArrayList<BookDTO> Select()
    {
        ArrayList<BookDTO> list = new ArrayList<>();

        try
        {
            pstmt = conn.prepareStatement("select * from book_tbl");
            rs = pstmt.executeQuery();

            BookDTO dto;
            while(rs.next())
            {
                dto = new BookDTO();
                dto.setNo(rs.getInt("no"));
                dto.setBookcode(rs.getInt("bookcode"));
                dto.setBookname(rs.getString("bookname"));
                dto.setPublisher(rs.getString("publisher"));
                dto.setTotalpage(rs.getInt("totalpage"));
                dto.setAmount(rs.getInt("amount"));

                list.add(dto);
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
                rs.close();
                pstmt.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

        return list;
    }

    public ArrayList<BookDTO> Select(String type, BookDTO search)
    {
        ArrayList<BookDTO> list = new ArrayList<>();

        try
        {
            switch(type)
            {
                case "C":
                    pstmt = conn.prepareStatement("select * from book_tbl where BookCode like concat ('%', ?, '%')");
                    pstmt.setInt(1, search.getBookcode());
                    break;
                case "N":
                    pstmt = conn.prepareStatement("select * from book_tbl where BookName like concat ('%', ?, '%')");
                    pstmt.setString(1, search.getBookname());
                    break;
                case "P":
                    pstmt = conn.prepareStatement("select * from book_tbl where Publisher like concat ('%', ?, '%')");
                    pstmt.setString(1, search.getPublisher());
                    break;
            }
            rs = pstmt.executeQuery();

            BookDTO dto;
            while(rs.next())
            {
                dto = new BookDTO();
                dto.setNo(rs.getInt("no"));
                dto.setBookcode(rs.getInt("bookcode"));
                dto.setBookname(rs.getString("bookname"));
                dto.setPublisher(rs.getString("publisher"));
                dto.setTotalpage(rs.getInt("totalpage"));
                dto.setAmount(rs.getInt("amount"));

                list.add(dto);
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
                rs.close();
                pstmt.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

        return list;
    }

    public ArrayList<BookDTO> Select(int startnum, int endnum)
    {
        ArrayList<BookDTO> list = new ArrayList<>();

        try
        {
            pstmt = conn.prepareStatement("select * from book_tbl where No between ? and ?");
            pstmt.setInt(1, startnum);
            pstmt.setInt(2, endnum);
            rs = pstmt.executeQuery();

            BookDTO dto;
            while(rs.next())
            {
                dto = new BookDTO();
                dto.setNo(rs.getInt("no"));
                dto.setBookcode(rs.getInt("bookcode"));
                dto.setBookname(rs.getString("bookname"));
                dto.setPublisher(rs.getString("publisher"));
                dto.setTotalpage(rs.getInt("totalpage"));
                dto.setAmount(rs.getInt("amount"));

                list.add(dto);
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
                rs.close();
                pstmt.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

        return list;
    }

    // 조회함수
    public ArrayList<BookDTO> Select(Criteria cri, BookDTO search)
    {
        ArrayList<BookDTO> list = new ArrayList<>();

        try
        {
            switch(cri.getType())
            {
                case "C":
                    pstmt = conn.prepareStatement("select * from book_tbl where BookCode like concat ('%', ?, '%') limit ?");
                    pstmt.setInt(1, search.getBookcode());
                    pstmt.setInt(2, cri.getEnd());
                    break;
                case "N":
                    pstmt = conn.prepareStatement("select * from book_tbl where BookName like concat ('%', ?, '%') limit ?");
                    pstmt.setString(1, search.getBookname());
                    pstmt.setInt(2, cri.getEnd());
                    break;
                case "P":
                    pstmt = conn.prepareStatement("select * from book_tbl where Publisher like concat ('%', ?, '%') limit ?");
                    pstmt.setString(1, search.getPublisher());
                    pstmt.setInt(2, cri.getEnd());
                    break;
            }
            rs = pstmt.executeQuery();

            BookDTO dto;
            while(rs.next())
            {
                dto = new BookDTO();
                dto.setNo(rs.getInt("no"));
                dto.setBookcode(rs.getInt("bookcode"));
                dto.setBookname(rs.getString("bookname"));
                dto.setPublisher(rs.getString("publisher"));
                dto.setTotalpage(rs.getInt("totalpage"));
                dto.setAmount(rs.getInt("amount"));

                list.add(dto);
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
                rs.close();
                pstmt.close();
            }
            catch(Exception e)
            {
                e.printStackTrace();
            }
        }

        return list;
    }
    //    public static void main(String[] args)
    //    {
    //        BookDTO dto = new BookDTO(0, 10101010, "Title", "Publisher", 100, 10);
    //        BookDAO dao = BookDAO.getInstance();
    //        dao.Post200(dto);
    //    }
}
