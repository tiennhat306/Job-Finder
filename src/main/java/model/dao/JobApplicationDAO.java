package model.dao;

import DBHelper.DBHelper;
import DTO.CVDataItem;
import DTO.CVDetailItem;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

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
    public void addCV(String name, int phone, String email, String cv, int jobBoardID, int status, Date submissionDate) {
        String sql = "INSERT INTO jobapplication(name, phone, email, cv, job_board_id, status, submission_date) VALUES(?, ?, ?, ?, ?, ?, ?)";
        try {
            preStmt = conn.prepareStatement(sql);
            preStmt.setString(1, name);
            preStmt.setInt(2, phone);
            preStmt.setString(3, email);
            preStmt.setString(4, cv);
            preStmt.setInt(5, jobBoardID);
            preStmt.setInt(6, status);
            preStmt.setDate(7, submissionDate);
            preStmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<CVDataItem> getListCVCandidate(int candidate_id) {
        String sql = "SELECT jobboard.title, jobapplication.name, jobapplication.phone_number, jobapplication.email, jobapplication.submission_date, jobapplication.status, jobapplication.id " +
                "FROM jobboard JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id " +
                "JOIN candidate on candidate.id = jobapplication.candidate_id and candidate.id = ?";
        List<CVDataItem> list = new ArrayList<CVDataItem>();
        try {
            preStmt = conn.prepareStatement(sql);
            preStmt.setInt(1, candidate_id);
            ResultSet rs = preStmt.executeQuery();
            while (rs.next()) {
                CVDataItem temp = new CVDataItem(rs.getString("title"), rs.getString("name"),
                        rs.getString("phone_number"), rs.getString("email"), rs.getDate("submission_date"),
                        rs.getInt("status"), rs.getInt("id"));
                list.add(temp);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
