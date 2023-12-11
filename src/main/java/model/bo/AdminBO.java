package model.bo;

import DTO.AdminSessionItem;
import model.bean.Admin;
import model.dao.AdminDAO;

import java.util.Date;

public class AdminBO {
    AdminDAO adminDAO = new AdminDAO();
    public AdminSessionItem validateAdmin(String username, String password) {
        return adminDAO.validateAdmin(username, password);
    }

    public Admin getAdminById(int adminId) {
        return adminDAO.getAdminById(adminId);
    }

    public void updateAdminInfo(int adminId, String name, String email, String phoneNumber, Date birthdayDate, boolean genderBoolean) {
        adminDAO.updateAdminInfo(adminId, name, email, phoneNumber, birthdayDate, genderBoolean);
    }

    public void updateAdminUsername(int adminId, String username) {
        adminDAO.updateAdminUsername(adminId, username);
    }

    public void updateAdminPassword(int adminId, String newPassword) {
        adminDAO.updateAdminPassword(adminId, newPassword);
    }

    public boolean validateAdminPassword(int adminId, String oldPassword) {
        return adminDAO.validateAdminPassword(adminId, oldPassword);
    }
}
