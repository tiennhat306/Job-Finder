package DTO;

import java.sql.Date;

public class JobPostingItem {
	private String userJobTitle;
	private String companyName;
	private String descriptCompany;
	private int employeeNumber;
	private String website;
	private String city;
	private String address;
	private String jobDescription;
	private String experienceDetail;
	private int workType;
	private int rank;
	private int yearOfExperience;
	private int qualification;
	private double salaryFrom;
	private double salaryTo;
	private String prize_bonus;
	private String contactName;
	private String contactNumber;
	private String contactEmail;
	private Date postingDate;

	public JobPostingItem() {
		
	}
	public JobPostingItem(String userJobTitle, String companyName, String descriptCompany, int employeeNumber,
			String website, String city, String address, String jobDescription, String experienceDetail, int workType,
			int rank, int yearOfExperience, int qualification, double salaryFrom, double salaryTo, String prize_bonus,
			String contactName, String contactNumber, String contactEmail, Date postingDate) {
		this.userJobTitle = userJobTitle;
		this.companyName = companyName;
		this.descriptCompany = descriptCompany;
		this.employeeNumber = employeeNumber;
		this.website = website;
		this.city = city;
		this.address = address;
		this.jobDescription = jobDescription;
		this.experienceDetail = experienceDetail;
		this.workType = workType;
		this.rank = rank;
		this.yearOfExperience = yearOfExperience;
		this.qualification = qualification;
		this.salaryFrom = salaryFrom;
		this.salaryTo = salaryTo;
		this.prize_bonus = prize_bonus;
		this.contactName = contactName;
		this.contactNumber = contactNumber;
		this.contactEmail = contactEmail;
		this.postingDate = postingDate;
	}

	public String getUserJobTitle() {
		return userJobTitle;
	}

	public void setUserJobTitle(String userJobTitle) {
		this.userJobTitle = userJobTitle;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getDescriptCompany() {
		return descriptCompany;
	}

	public void setDescriptCompany(String descriptCompany) {
		this.descriptCompany = descriptCompany;
	}

	public int getEmployeeNumber() {
		return employeeNumber;
	}

	public void setEmployeeNumber(int employeeNumber) {
		this.employeeNumber = employeeNumber;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getExperienceDetail() {
		return experienceDetail;
	}

	public void setExperienceDetail(String experienceDetail) {
		this.experienceDetail = experienceDetail;
	}

	public int getWorkType() {
		return workType;
	}

	public void setWorkType(int workType) {
		this.workType = workType;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public int getYearOfExperience() {
		return yearOfExperience;
	}

	public void setYearOfExperience(int yearOfExperience) {
		this.yearOfExperience = yearOfExperience;
	}

	public int getQualification() {
		return qualification;
	}

	public void setQualification(int qualification) {
		this.qualification = qualification;
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

	public String getPrize_bonus() {
		return prize_bonus;
	}

	public void setPrize_bonus(String prize_bonus) {
		this.prize_bonus = prize_bonus;
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

	public Date getPostingDate() {
		return postingDate;
	}

	public void setPostingDate(Date postingDate) {
		this.postingDate = postingDate;
	}

	@Override
	public String toString() {
		return "JobPostingItem [userJobTitle=" + userJobTitle + ", companyName=" + companyName + ", descriptCompany="
				+ descriptCompany + ", employeeNumber=" + employeeNumber + ", website=" + website + ", city=" + city
				+ ", address=" + address + ", jobDescription=" + jobDescription + ", experienceDetail="
				+ experienceDetail + ", workType=" + workType + ", rank=" + rank + ", yearOfExperience="
				+ yearOfExperience + ", qualification=" + qualification + ", salaryFrom=" + salaryFrom + ", salaryTo="
				+ salaryTo + ", prize_bonus=" + prize_bonus + ", contactName=" + contactName + ", contactNumber="
				+ contactNumber + ", contactEmail=" + contactEmail + ", postingDate=" + postingDate + "]";
	}

}
