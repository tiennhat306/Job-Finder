package model.dao;

import DBHelper.DBHelper;
import DTO.CandidateSessionItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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

}
