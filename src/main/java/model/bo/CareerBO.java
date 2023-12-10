package model.bo;

import model.bean.Career;
import model.dao.CareerDAO;

import java.util.ArrayList;

public class CareerBO {
    CareerDAO careerDAO = new CareerDAO();
    public ArrayList<Career> getAllCareer(){
        return careerDAO.getAllCareer();
    }

}
