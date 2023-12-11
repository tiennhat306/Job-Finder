package DTO;

public class EmployerItem {
    private int id;
    private String companyName;
    private String companyAddress;
    private String contactNumber;

    public EmployerItem() {
    }

    public EmployerItem(int id, String companyName, String companyAddress, String contactNumber) {
        this.id = id;
        this.companyName = companyName;
        this.companyAddress = companyAddress;
        this.contactNumber = contactNumber;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName;
    }

    public String getCompanyAddress() {
        return companyAddress;
    }

    public void setCompanyAddress(String companyAddress) {
        this.companyAddress = companyAddress;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }
}
