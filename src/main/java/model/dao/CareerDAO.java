package model.dao;

import DBHelper.DBHelper;
import model.bean.Career;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CareerDAO {
    public ArrayList<Career> getAllCareer(){
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from career";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<Career> careerList = new ArrayList<>();
            while (resultSet.next()){
                Career career = new Career();
                career.setId(resultSet.getString("id"));
                career.setName(resultSet.getString("name"));
                career.setDescription(resultSet.getString("description"));
                careerList.add(career);
            }
            return careerList;
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }
}
