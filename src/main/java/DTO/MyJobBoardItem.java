package DTO;

public class MyJobBoardItem {
    private int id;
    private String title;
    private int status;
    private int noOfApplicants;
    private int views;
    private String postingDate;
    private String expirationDate;

    public MyJobBoardItem() {
    }

    public MyJobBoardItem(int id, String title, int status, int noOfApplicants, int views, String postingDate, String expirationDate) {
        this.id = id;
        this.title = title;
        this.status = status;
        this.noOfApplicants = noOfApplicants;
        this.views = views;
        this.postingDate = postingDate;
        this.expirationDate = expirationDate;
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
}
