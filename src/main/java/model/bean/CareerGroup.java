package model.bean;

public class CareerGroup {
    private int id;
    private int jobBoardId;
    private String careerId;

    public CareerGroup() {
    }

    public CareerGroup(int id, int jobBoardId, String careerId) {
        this.id = id;
        this.jobBoardId = jobBoardId;
        this.careerId = careerId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getJobBoardId() {
        return jobBoardId;
    }

    public void setJobBoardId(int jobBoardId) {
        this.jobBoardId = jobBoardId;
    }

    public String getCareerId() {
        return careerId;
    }

    public void setCareerId(String careerId) {
        this.careerId = careerId;
    }
}
