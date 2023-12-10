package model.dao;

import DBHelper.DBHelper;
import DTO.AdminSessionItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDAO {
    public AdminSessionItem validateAdmin(String username, String password) {
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from admin where username = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                AdminSessionItem adminSessionItem = new AdminSessionItem();
                adminSessionItem.setId(resultSet.getInt("id"));
                adminSessionItem.setName(resultSet.getString("name"));
                adminSessionItem.setEmail(resultSet.getString("email"));
                adminSessionItem.setPhoneNumber(resultSet.getString("phone_number"));
                adminSessionItem.setAvatar(resultSet.getString("avatar"));
                return adminSessionItem;
            }
            return null;
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }
}
