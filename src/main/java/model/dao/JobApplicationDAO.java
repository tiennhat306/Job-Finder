package model.dao;

import DBHelper.DBHelper;
import DTO.CVDetailItem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JobApplicationDAO {
    private Connection conn = DBHelper.getConnection();
    PreparedStatement preStmt = null;
    public CVDetailItem getDetailCV(int cvid) {
        String sql = "SELECT jobboard.title, jobapplication.name, jobapplication.phone_number, jobapplication.email, jobapplication.cv, jobapplication.status, jobapplication.id " +
                "FROM jobboard JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id AND jobapplication.id = ?";
        CVDetailItem ret = null;
        try {
            preStmt = conn.prepareStatement(sql);
            preStmt.setInt(1, cvid);
            ResultSet rs = preStmt.executeQuery();
            while (rs.next()) {
                ret = new CVDetailItem(rs.getString("title"), rs.getString("name"), rs.getString("phone_number"),
                                    rs.getString("email"), rs.getString("cv"), rs.getInt("status"), rs.getInt("id"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ret;
    }
    public void updateCV(int cvid, int status) {
        String sql = "UPDATE jobapplication SET status = ? WHERE id = ?";
        try {
            preStmt = conn.prepareStatement(sql);
            preStmt.setInt(1, status);
            preStmt.setInt(2, cvid);
            preStmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
