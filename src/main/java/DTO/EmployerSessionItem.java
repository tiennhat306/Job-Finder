package DTO;

public class EmployerSessionItem {
    private int id;
    private String companyName;
    private String logo;

    public EmployerSessionItem() {
    }

    public EmployerSessionItem(int id, String companyName, String logo) {
        this.id = id;
        this.companyName = companyName;
        this.logo = logo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
