package DTO;

import java.sql.Date;

public class CVDataItem {
    private String title;
    private String nameCandidate;
    private String phone;
    private String email;
    private Date created_time;
    private int status;
    private int cvid;

    public CVDataItem(String title, String nameCandidate, String phone, String email, Date created_time, int status, int cvid) {
        this.title = title;
        this.nameCandidate = nameCandidate;
        this.phone = phone;
        this.email = email;
        this.created_time = created_time;
        this.status = status;
        this.cvid = cvid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNameCandidate() {
        return nameCandidate;
    }

    public void setNameCandidate(String nameCandidate) {
        this.nameCandidate = nameCandidate;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getCreated_time() {
        return created_time;
    }

    public void setCreated_time(Date created_time) {
        this.created_time = created_time;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getCvid() {
        return cvid;
    }

    public void setCvid(int cvid) {
        this.cvid = cvid;
    }
}
