package DTO;

public class UpdatedJobBoardItem {
    private int id;
    private String title;
    private String companyName;
    private int status;
    private int noOfApplicants;
    private int views;
    private String postingDate;
    private String expirationDate;
    private String updatedPerson;

    public UpdatedJobBoardItem() {
    }

    public UpdatedJobBoardItem(int id, String title, String companyName, int status, int noOfApplicants, int views, String postingDate, String expirationDate, String updatedPerson) {
        this.id = id;
        this.title = title;
        this.companyName = companyName;
        this.status = status;
        this.noOfApplicants = noOfApplicants;
        this.views = views;
        this.postingDate = postingDate;
        this.expirationDate = expirationDate;
        this.updatedPerson = updatedPerson;
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

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getNoOfApplicants() {
        return noOfApplicants;
    }

    public void setNoOfApplicants(int noOfApplicants) {
        this.noOfApplicants = noOfApplicants;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public String getPostingDate() {
        return postingDate;
    }

    public void setPostingDate(String postingDate) {
        this.postingDate = postingDate;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public String getUpdatedPerson() {
        return updatedPerson;
    }

    public void setUpdatedPerson(String updatedPerson) {
        this.updatedPerson = updatedPerson;
    }
}
