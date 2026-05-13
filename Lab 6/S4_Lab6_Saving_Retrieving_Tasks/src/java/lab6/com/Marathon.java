package lab6.com;

import java.io.Serializable;

public class Marathon implements Serializable {
    private String icNo;
    private String name;
    private String category;

    public Marathon() {}

    public String getIcNo() { return icNo; }
    public void setIcNo(String icNo) { this.icNo = icNo; }

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }
}