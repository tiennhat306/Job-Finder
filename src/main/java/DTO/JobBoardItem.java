package DTO;

public class JobBoardItem {
    private int id;
    private String title;
    private String logo;
    private String companyName;
    private String cityName;
    private String salary;

    public JobBoardItem() {
    }

    public JobBoardItem(int id, String title, String logo, String companyName, String cityName, String salary) {
        this.id = id;
        this.title = title;
        this.logo = logo;
        this.companyName = companyName;
        this.cityName = cityName;
        this.salary = salary;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public String getSalary() {
        return salary;
    }

    public void setSalary(String salary) {
        this.salary = salary;
    }
}
