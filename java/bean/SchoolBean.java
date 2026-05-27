package bean;

import java.io.Serializable;

public class SchoolBean implements Serializable {
    private static final long serialVersionUID = 1L;

    private String cd;   // 学校コード
    private String name; // 学校名

    public SchoolBean() {
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}