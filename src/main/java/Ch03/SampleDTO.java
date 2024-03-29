package Ch03;

public class SampleDTO
{
    private String name;
    private String addr;

    public SampleDTO(String name, String addr)
    {
        this.name = name;
        this.addr = addr;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public String getAddr()
    {
        return addr;
    }

    public void setAddr(String addr)
    {
        this.addr = addr;
    }

    @Override
    public String toString()
    {
        return "Ch03.SampleDTO{" + "name='" + name + '\'' + ", addr='" + addr + '\'' + '}';
    }
}
