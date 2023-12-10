package DTO;

public class CVDetailItem {
    private String title;
    private String nameCan;
    private String phone;
    private String email;
    private String cvfile;
    private int status;
    private int cvid;

    public CVDetailItem(String title, String nameCan, String phone, String email, String cvfile, int status, int cvid) {
        this.title = title;
        this.nameCan = nameCan;
        this.phone = phone;
        this.email = email;
        this.cvfile = cvfile;
        this.status = status;
        this.cvid = cvid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getNameCan() {
        return nameCan;
    }

    public void setNameCan(String nameCan) {
        this.nameCan = nameCan;
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

    public String getCvfile() {
        return cvfile;
    }

    public void setCvfile(String cvfile) {
        this.cvfile = cvfile;
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
