package model.bean;

import java.sql.Timestamp;
import java.util.Date;

public class JobBoard {
    private int id;
    private String title;
    private String code;
    private String companyName;
    private int companySize;
    private String companyDescription;
    private String website;
    private int cityId;
    private String address;
    private int jobType;
    private int rank;
    private int salaryType;
    private double salaryFrom;
    private double salaryTo;
    private int ageType;
    private int ageFrom;
    private int ageTo;
    private int genderType;
    private String jobDescription;
    private int quantity;
    private int qualification;
    private int yearsOfExperience;
    private String requirements;
    private String benefits;
    private String contactName;
    private String contactNumber;
    private String contactEmail;
    private String contactAddress;
    private Date postingDate;
    private Date expirationDate;
    private int status;
    private int views;
    private int employerId;
    private int updatedBy;
    private Timestamp createdAt;
    private Timestamp updatedAt;

    public JobBoard() {
    }

    public JobBoard(int id, String title, String code, String companyName, int companySize, String companyDescription, String website, int cityId, String address, int jobType, int rank, int salaryType, double salaryFrom, double salaryTo, int ageType, int ageFrom, int ageTo, int genderType, String jobDescription, int quantity, int qualification, int yearsOfExperience, String requirements, String benefits, String contactName, String contactNumber, String contactEmail, String contactAddress, Date postingDate, Date expirationDate, int status, int views, int employerId) {
        this.id = id;
        this.title = title;
        this.code = code;
        this.companyName = companyName;
        this.companySize = companySize;
        this.companyDescription = companyDescription;
        this.website = website;
        this.cityId = cityId;
        this.address = address;
        this.jobType = jobType;
        this.rank = rank;
        this.salaryType = salaryType;
        this.salaryFrom = salaryFrom;
        this.salaryTo = salaryTo;
        this.ageType = ageType;
        this.ageFrom = ageFrom;
        this.ageTo = ageTo;
        this.genderType = genderType;
        this.jobDescription = jobDescription;
        this.quantity = quantity;
        this.qualification = qualification;
        this.yearsOfExperience = yearsOfExperience;
        this.requirements = requirements;
        this.benefits = benefits;
        this.contactName = contactName;
        this.contactNumber = contactNumber;
        this.contactEmail = contactEmail;
        this.contactAddress = contactAddress;
        this.postingDate = postingDate;
        this.expirationDate = expirationDate;
        this.status = status;
        this.views = views;
        this.employerId = employerId;
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

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public int getCompanySize() {
        return companySize;
    }

    public void setCompanySize(int companySize) {
        this.companySize = companySize;
    }

    public String getCompanyDescription() {
        return companyDescription;
    }

    public void setCompanyDescription(String companyDescription) {
        this.companyDescription = companyDescription;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public int getCityId() {
        return cityId;
    }

    public void setCityId(int cityId) {
        this.cityId = cityId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getJobType() {
        return jobType;
    }

    public void setJobType(int jobType) {
        this.jobType = jobType;
    }

    public int getRank() {
        return rank;
    }

    public void setRank(int rank) {
        this.rank = rank;
    }

    public int getSalaryType() {
        return salaryType;
    }

    public void setSalaryType(int salaryType) {
        this.salaryType = salaryType;
    }

    public double getSalaryFrom() {
        return salaryFrom;
    }

    public void setSalaryFrom(double salaryFrom) {
        this.salaryFrom = salaryFrom;
    }

    public double getSalaryTo() {
        return salaryTo;
    }

    public void setSalaryTo(double salaryTo) {
        this.salaryTo = salaryTo;
    }

    public int getAgeType() {
        return ageType;
    }

    public void setAgeType(int ageType) {
        this.ageType = ageType;
    }

    public int getAgeFrom() {
        return ageFrom;
    }

    public void setAgeFrom(int ageFrom) {
        this.ageFrom = ageFrom;
    }

    public int getAgeTo() {
        return ageTo;
    }

    public void setAgeTo(int ageTo) {
        this.ageTo = ageTo;
    }

    public int getGenderType() {
        return genderType;
    }

    public void setGenderType(int genderType) {
        this.genderType = genderType;
    }

    public String getJobDescription() {
        return jobDescription;
    }

    public void setJobDescription(String jobDescription) {
        this.jobDescription = jobDescription;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getQualification() {
        return qualification;
    }

    public void setQualification(int qualification) {
        this.qualification = qualification;
    }

    public int getYearsOfExperience() {
        return yearsOfExperience;
    }

    public void setYearsOfExperience(int yearsOfExperience) {
        this.yearsOfExperience = yearsOfExperience;
    }

    public String getRequirements() {
        return requirements;
    }

    public void setRequirements(String requirements) {
        this.requirements = requirements;
    }

    public String getBenefits() {
        return benefits;
    }

    public void setBenefits(String benefits) {
        this.benefits = benefits;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactAddress() {
        return contactAddress;
    }

    public void setContactAddress(String contactAddress) {
        this.contactAddress = contactAddress;
    }

    public Date getPostingDate() {
        return postingDate;
    }

    public void setPostingDate(Date postingDate) {
        this.postingDate = postingDate;
    }

    public Date getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(Date expirationDate) {
        this.expirationDate = expirationDate;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getViews() {
        return views;
    }

    public void setViews(int views) {
        this.views = views;
    }

    public int getEmployerId() {
        return employerId;
    }

    public void setEmployerId(int employerId) {
        this.employerId = employerId;
    }

    public int getUpdatedBy() {
        return updatedBy;
    }

    public void setUpdatedBy(int updatedBy) {
        this.updatedBy = updatedBy;
    }

    public Timestamp getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Timestamp createdAt) {
        this.createdAt = createdAt;
    }

    public Timestamp getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Timestamp updatedAt) {
        this.updatedAt = updatedAt;
    }
}
