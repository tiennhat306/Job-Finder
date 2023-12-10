package model.bo;

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

    public EmployerSessionItem validateEmployer(String username, String password){
        return employerDAO.validateEmployer(username, password);
    }
}
