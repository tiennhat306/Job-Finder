package DBHelper;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBHelper {
    public static Connection getConnection() {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobfinder", "root", "donghq");
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return conn;
    }
}
