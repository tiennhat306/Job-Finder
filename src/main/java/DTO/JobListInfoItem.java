package DTO;

import java.sql.Date;

public class JobListInfoItem {
    private String title;
    private String address;
    private String type;
    private Date exp_date;
    private String logo;

    public JobListInfoItem(String title, String address, String type, Date exp_date, String logo) {
        this.title = title;
        this.address = address;
        this.type = type;
        this.exp_date = exp_date;
        this.logo = logo;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Date getExp_date() {
        return exp_date;
    }

    public void setExp_date(Date exp_date) {
        this.exp_date = exp_date;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
