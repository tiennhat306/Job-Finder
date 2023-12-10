package model.bo;

import model.bean.City;
import model.dao.CityDAO;

import java.util.ArrayList;

public class CityBO {
    CityDAO cityDAO = new CityDAO();
    public ArrayList<City> getAllCity(){
        return cityDAO.getAllCity();
    }
}
