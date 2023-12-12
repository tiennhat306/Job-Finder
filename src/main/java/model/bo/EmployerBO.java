package model.bo;

import DTO.EmployerItem;
import DTO.EmployerSessionItem;
import DTO.TopEmployerItem;
import model.dao.EmployerDAO;

import java.util.ArrayList;

public class EmployerBO {
    EmployerDAO employerDAO = new EmployerDAO();

    public ArrayList<TopEmployerItem> getTopEmployer(int noOfRecords, int offset, String search) {
        return employerDAO.getTopEmployer(noOfRecords, offset, search);
    }

    public ArrayList<TopEmployerItem> getTopEmployer(int offset, String search) {
        return employerDAO.getTopEmployer(10, offset, search);
    }

    public ArrayList<TopEmployerItem> getTopEmployer(int offset) {
        return employerDAO.getTopEmployer(10, offset, "");
    }
    public ArrayList<TopEmployerItem> getTopEmployer() {
        return employerDAO.getTopEmployer();
    }

    public EmployerSessionItem validateEmployer(String username, String password){
        return employerDAO.validateEmployer(username, password);
    }

    public ArrayList<EmployerItem> getAllEmployer(String search, int page) {
        return employerDAO.getAllEmployer(search, page);
    }

    public int countEmployer(String search) {
        return employerDAO.countEmployer(search);
    }
}
