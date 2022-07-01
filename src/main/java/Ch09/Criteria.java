package Ch09;

import lombok.Data;

@Data
public class Criteria
{
    private String type;
    private int end;

    public Criteria()
    {
        end = 100;
    }
}
