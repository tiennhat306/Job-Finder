package model.dao;

import DBHelper.DBHelper;
import DTO.EmployerSessionItem;
import DTO.TopEmployerItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmployerDAO {
    public ArrayList<TopEmployerItem> getTopEmployer(int noOfRecords, int offset, String search) {
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "SELECT e.id, e.company_name, e.logo, c.name as city_name, COUNT(j.id) AS no_of_job, SUM(j.views) AS views\n" +
                    "FROM employer e\n" +
                    "         JOIN jobboard j ON e.id = j.employer_id\n" +
                    "         JOIN city c ON e.city_id = c.id\n" +
                    "WHERE e.company_name LIKE ?\n" +
                    "GROUP BY e.id\n" +
                    "ORDER BY views DESC, no_of_job DESC\n" +
                    "LIMIT ? OFFSET ?;";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + search + "%");
            preparedStatement.setInt(2, noOfRecords);
            preparedStatement.setInt(3, offset * noOfRecords);
            ResultSet resultSet = preparedStatement.executeQuery();
            ArrayList<TopEmployerItem> topEmployerItems = new ArrayList<>();
            while (resultSet.next()) {
                TopEmployerItem topEmployerItem = new TopEmployerItem();
                topEmployerItem.setId(resultSet.getInt("id"));
                topEmployerItem.setCompanyName(resultSet.getString("company_name"));
                topEmployerItem.setLogo(resultSet.getString("logo"));
                topEmployerItem.setCityName(resultSet.getString("city_name"));
                topEmployerItem.setNoOfJob(resultSet.getInt("no_of_job"));
                topEmployerItem.setViews(resultSet.getInt("views"));
                topEmployerItems.add(topEmployerItem);
            }
            return topEmployerItems;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public EmployerSessionItem validateEmployer(String username, String password){
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from employer where username = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                EmployerSessionItem employerSessionItem = new EmployerSessionItem();
                employerSessionItem.setId(resultSet.getInt("id"));
                employerSessionItem.setCompanyName(resultSet.getString("company_name"));
                employerSessionItem.setLogo(resultSet.getString("logo"));
                return employerSessionItem;
            } else {
                return null;
            }
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }
}
