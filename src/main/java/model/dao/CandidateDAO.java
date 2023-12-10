package model.dao;

import DBHelper.DBHelper;
import DTO.CandidateSessionItem;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public class CandidateDAO {
    public CandidateSessionItem validateCandidate(String email, String password){
        try(Connection connection = DBHelper.getConnection()) {
            String sql = "select * from candidate where email = ? and password = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                CandidateSessionItem candidateSessionItem = new CandidateSessionItem();
                candidateSessionItem.setId(resultSet.getInt("id"));
                candidateSessionItem.setName(resultSet.getString("name"));
                candidateSessionItem.setEmail(resultSet.getString("email"));
                candidateSessionItem.setPhoneNumber(resultSet.getString("phone_number"));
                candidateSessionItem.setAvatar(resultSet.getString("avatar"));
                return candidateSessionItem;
            } else {
                return null;
            }
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }
    
    public void createAccount(String name,String username, String password, String phoneNumber, Boolean gender, Date birthday, Timestamp createdAt, Timestamp updatedAt) {
		try(Connection connection = DBHelper.getConnection()) {
			String sql = "INSERT INTO candidate(name, email, password, phone_number, gender, birthday, created_at, updated_at) VALUES(?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement pst = connection.prepareStatement(sql);

			pst.setString(1, name);
			pst.setString(2, username);
			pst.setString(3, password);
			pst.setString(4, phoneNumber);
			pst.setBoolean(5, gender);
			pst.setDate(6, birthday);
			pst.setTimestamp(7, createdAt);
			pst.setTimestamp(8, updatedAt);
			pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
