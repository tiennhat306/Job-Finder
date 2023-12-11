package model.dao;

import DBHelper.DBHelper;
import DTO.AdminSessionItem;
import model.bean.Admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

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

    public Admin getAdminById(int adminId) {
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from admin where id = ? and status = 1";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, adminId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                Admin admin = new Admin();
                admin.setId(resultSet.getInt("id"));
                admin.setName(resultSet.getString("name"));
                admin.setUsername(resultSet.getString("username"));
                admin.setEmail(resultSet.getString("email"));
                admin.setPhoneNumber(resultSet.getString("phone_number"));
                admin.setGender(resultSet.getBoolean("gender"));
                admin.setBirthday(resultSet.getDate("birthday"));
                admin.setAvatar(resultSet.getString("avatar"));
                return admin;
            }
            return null;
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }

    public void updateAdminInfo(int adminId, String name, String email, String phoneNumber, Date birthdayDate, boolean genderBoolean) {
        try(Connection connection = DBHelper.getConnection()){
            String sql = "UPDATE admin SET name = ?, email = ?, phone_number = ?, birthday = ?, gender = ? WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, phoneNumber);
            preparedStatement.setDate(4, new java.sql.Date(birthdayDate.getTime()));
            preparedStatement.setBoolean(5, genderBoolean);
            preparedStatement.setInt(6, adminId);

            preparedStatement.executeUpdate();
        } catch (SQLException e ) {
            e.printStackTrace();
        }
    }

    public void updateAdminUsername(int adminId, String username){
        try(Connection connection = DBHelper.getConnection()){
            String sql = "UPDATE admin SET username = ? WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, username);
            preparedStatement.setInt(2, adminId);
            preparedStatement.executeUpdate();
        } catch (SQLException e ) {
            e.printStackTrace();
        }
    }

    public void updateAdminPassword(int adminId, String password){
        try(Connection connection = DBHelper.getConnection()){
            String sql = "UPDATE admin SET password = ? WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, password);
            preparedStatement.setInt(2, adminId);
            preparedStatement.executeUpdate();
        } catch (SQLException e ) {
            e.printStackTrace();
        }
    }

    public boolean validateAdminPassword(int adminId, String oldPassword) {
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from admin where id = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, adminId);
            preparedStatement.setString(2, oldPassword);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                return true;
            }
            return false;
        } catch (SQLException e ) {
            e.printStackTrace();
            return false;
        }
    }
}
