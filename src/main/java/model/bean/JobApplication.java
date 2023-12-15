package model.bean;

import java.util.Date;

public class JobApplication {
    private int id;
    private String name;
    private String phoneNumber;
    private String email;
    private String cv;
    private int jobBoardId;
    private int status;
    private Date submissionDate;
    private int candidateId;

    public JobApplication() {
    }

    public JobApplication(int id, String name, String phoneNumber, String email, String cv, int jobBoardId, int status, Date submissionDate, int candidateId) {
        this.id = id;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.cv = cv;
        this.jobBoardId = jobBoardId;
        this.status = status;
        this.submissionDate = submissionDate;
        this.candidateId = candidateId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCv() {
        return cv;
    }

    public void setCv(String cv) {
        this.cv = cv;
    }

    public int getJobBoardId() {
        return jobBoardId;
    }

    public void setJobBoardId(int jobBoardId) {
        this.jobBoardId = jobBoardId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public Date getSubmissionDate() {
        return submissionDate;
    }

    public void setSubmissionDate(Date submissionDate) {
        this.submissionDate = submissionDate;
    }

    public int getCandidateId() {
        return candidateId;
    }

    public void setCandidateId(int candidateId) {
        this.candidateId = candidateId;
    }
}
