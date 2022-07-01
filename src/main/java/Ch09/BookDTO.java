package Ch09;

import lombok.Data;

@Data
public class BookDTO
{
    private int no;
    private int bookcode;
    private String bookname;
    private String publisher;
    private int totalpage;
    private int amount;

    public BookDTO()
    {

    }
    public BookDTO(int no, int bookcode, String bookname, String publisher, int totalpage, int amount)
    {
        this.no = no;
        this.bookcode = bookcode;
        this.bookname = bookname;
        this.publisher = publisher;
        this.totalpage = totalpage;
        this.amount = amount;
    }
}
