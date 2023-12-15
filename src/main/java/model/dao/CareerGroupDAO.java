package model.dao;

import DBHelper.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CareerGroupDAO {
    public boolean addCareerGroup(int jobBoardId, String careerId) {
        try(Connection connection = DBHelper.getConnection()) {

            String sql = "INSERT INTO careergroup(jobboard_id, career_id) VALUES(?, ?)";
            PreparedStatement pst = connection.prepareStatement(sql);

            pst.setInt(1, jobBoardId);
            pst.setString(2, careerId);

            return pst.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
