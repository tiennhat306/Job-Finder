package model.bean;

public class Employer {
    private int id;
    private String username;
    private String password;
    private String companyName;
    private int companySize;
    private String contactName;
    private String contactNumber;
    private int cityId;
    private String address;
    private String businessLicenseCode;
    private String website;
    private String description;

    public Employer() {
    }

    public Employer(int id, String username, String password, String companyName, int companySize, String contactName, String contactNumber, int cityId, String address, String businessLicenseCode, String website, String description) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.companyName = companyName;
        this.companySize = companySize;
        this.contactName = contactName;
        this.contactNumber = contactNumber;
        this.cityId = cityId;
        this.address = address;
        this.businessLicenseCode = businessLicenseCode;
        this.website = website;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
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

    public String getBusinessLicenseCode() {
        return businessLicenseCode;
    }

    public void setBusinessLicenseCode(String businessLicenseCode) {
        this.businessLicenseCode = businessLicenseCode;
    }

    public String getWebsite() {
        return website;
    }

    public void setWebsite(String website) {
        this.website = website;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
