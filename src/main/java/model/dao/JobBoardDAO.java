package model.dao;

import DBHelper.DBHelper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class JobBoardDAO {
    private Connection conn = DBHelper.getConnection();
    PreparedStatement preStmt = null;

    public List<String> getTitleByEmployerId(int id) {
        String sql = "SELECT * FROM jobboard WHERE employer_id = ?";
        List<String> list = new ArrayList<String>();
        try {
            preStmt = conn.prepareStatement(sql);
            preStmt.setString(1, String.valueOf(id));
            ResultSet resultSet = preStmt.executeQuery();
            while (resultSet.next()) {
                System.out.println(resultSet.getString("title"));
                list.add(resultSet.getString("title"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
