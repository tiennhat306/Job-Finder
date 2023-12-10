package model.bo;

import DTO.AdminSessionItem;
import model.dao.AdminDAO;

public class AdminBO {
    AdminDAO adminDAO = new AdminDAO();
    public AdminSessionItem validateAdmin(String username, String password) {
        return adminDAO.validateAdmin(username, password);
    }
}
