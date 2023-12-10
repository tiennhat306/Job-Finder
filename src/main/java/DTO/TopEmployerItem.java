package DTO;

public class TopEmployerItem {
    private int id;
    private String companyName;
    private String logo;
    private String cityName;
    private int noOfJob;
    private int views;

    public TopEmployerItem() {
    }

    public TopEmployerItem(int id, String companyName, String logo, String cityName, int noOfJob, int views) {
        this.id = id;
        this.companyName = companyName;
        this.logo = logo;
        this.cityName = cityName;
        this.noOfJob = noOfJob;
        this.views = views;
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

    public String getCityName() {
        return cityName;
    }

    public void setCityName(String cityName) {
        this.cityName = cityName;
    }

    public int getNoOfJob() {
        return noOfJob;
    }

    public void setNoOfJob(int noOfJob) {
        this.noOfJob = noOfJob;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }
}
