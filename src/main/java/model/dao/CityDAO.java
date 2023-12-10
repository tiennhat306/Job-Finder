package model.dao;

import DBHelper.DBHelper;
import model.bean.City;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CityDAO {
    public ArrayList<City> getAllCity(){
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from city";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<City> cityList = new ArrayList<>();
            while (resultSet.next()){
                City city = new City();
                city.setId(resultSet.getInt("id"));
                city.setName(resultSet.getString("name"));
                city.setCode(resultSet.getString("code"));
                cityList.add(city);
            }
            return cityList;
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }
}
