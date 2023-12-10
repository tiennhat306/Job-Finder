package model.dao;

import DBHelper.DBHelper;
import DTO.JobBoardItem;
import DTO.MyJobBoardItem;
import model.bean.JobBoard;

import java.sql.*;
import java.util.ArrayList;
import java.util.Date;
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

    public ArrayList<JobBoardItem> getAllJobBoard(int noOfRecords, int offset, String search) {
        try(Connection connection = DBHelper.getConnection()){
            ArrayList<JobBoardItem> jobBoardList = new ArrayList<>();

//            String sql = "select jb.id, jb.title, jb.company_name, jb.salary_type, jb.salary_from, jb.salary_to, e.logo, c.name as city_name from jobboard jb join employer e on jb.employer_id = e.id join city c on jb.city_id = c.id join career ca on jb.career_id = ca.id where jb.status = 2 and jb.posting_date <= now() and jb.expiration_date >= now() and (jb.title like ? or e.company_name like ? or c.name like ? or ca.name like ?) order by jb.posting_date desc, jb.views desc limit ?, ?";
            String sql = "SELECT jb.id, jb.title, jb.company_name, jb.salary_type, jb.salary_from, jb.salary_to, e.logo, c.name AS city_name " +
                    "FROM jobboard jb " +
                    "JOIN employer e ON jb.employer_id = e.id " +
                    "JOIN city c ON jb.city_id = c.id " +
                    "WHERE jb.status = 3 AND jb.posting_date <= now() AND jb.expiration_date >= now() AND (jb.title LIKE ? OR e.company_name LIKE ? OR c.name LIKE ?) " +
                    "AND jb.id IN (SELECT jobboard_id FROM careergroup WHERE career_id IN (SELECT id FROM career WHERE name LIKE ?)) " +
                    "ORDER BY jb.posting_date DESC, jb.views DESC " +
                    "LIMIT ?, ?";

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setString(1, "%" + search + "%");
            preparedStatement.setString(2, "%" + search + "%");
            preparedStatement.setString(3, "%" + search + "%");
            preparedStatement.setString(4, "%" + search + "%");
            preparedStatement.setInt(5, offset * noOfRecords);
            preparedStatement.setInt(6, noOfRecords);
            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                JobBoardItem jobBoard = new JobBoardItem();
                jobBoard.setId(resultSet.getInt("id"));
                jobBoard.setTitle(resultSet.getString("title"));
                jobBoard.setLogo(resultSet.getString("logo"));
                jobBoard.setCityName(resultSet.getString("city_name"));
                jobBoard.setCompanyName(resultSet.getString("company_name"));
                int salaryType = resultSet.getInt("salary_type");
                double salaryFrom = resultSet.getDouble("salary_from");
                double salaryTo = resultSet.getDouble("salary_to");
                String salary = "";
                switch (salaryType){
                    case 1:
                        salary = salaryFrom + " - " + salaryTo + " triệu";
                        break;
                    case 2:
                        salary = "Từ " + salaryFrom + " triệu";
                        break;
                    case 3:
                        salary = "Đến " + salaryTo + " triệu";
                        break;
                    case 4:
                        salary = "Thỏa thuận";
                        break;
                }
                jobBoard.setSalary(salary);
                jobBoardList.add(jobBoard);
            }

            return jobBoardList;
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<MyJobBoardItem> getMyJobBoardList(int employerId , String search, int page, int status) {
        try(Connection connection = DBHelper.getConnection()){
            int limit = 10;
            if(page <= 0 || limit <= 0) return null;
            ArrayList<MyJobBoardItem> myJobBoardList = new ArrayList<>();

            String sql = "SELECT jb.id, jb.title, jb.status, jb.posting_date, jb.expiration_date, COUNT(ja.id) AS no_of_applicants, jb.views " +
                    "FROM jobboard jb " +
                    "LEFT JOIN jobapplication ja ON jb.id = ja.jobboard_id " +
                    "WHERE jb.employer_id = ? AND jb.title LIKE ?  " + (status == 0 ? "" : "AND jb.status = ? ") +
                    "GROUP BY jb.id " +
                    "ORDER BY jb.posting_date DESC " +
                    "LIMIT ?, ?";

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, employerId);
            preparedStatement.setString(2, "%" + search + "%");
            if(status != 0) preparedStatement.setInt(3, status);
            preparedStatement.setInt(status == 0 ? 3 : 4, (page - 1) * limit);
            preparedStatement.setInt(status == 0 ? 4 : 5, limit);

            ResultSet resultSet = preparedStatement.executeQuery();

            while (resultSet.next()){
                MyJobBoardItem myJobBoard = new MyJobBoardItem();
                myJobBoard.setId(resultSet.getInt("id"));
                myJobBoard.setTitle(resultSet.getString("title"));
                myJobBoard.setStatus(resultSet.getInt("status"));
                myJobBoard.setNoOfApplicants(resultSet.getInt("no_of_applicants"));
                myJobBoard.setViews(resultSet.getInt("views"));

                Date postingDate = resultSet.getDate("posting_date");
                Date expirationDate = resultSet.getDate("expiration_date");
                myJobBoard.setPostingDate(new java.text.SimpleDateFormat("dd/MM/yyyy").format(postingDate));
                myJobBoard.setExpirationDate(new java.text.SimpleDateFormat("dd/MM/yyyy").format(expirationDate));

                myJobBoardList.add(myJobBoard);
            }

            return myJobBoardList;
        } catch (SQLException e ) {
            e.printStackTrace();
            return null;
        }
    }

    public int countMyTodayJobBoard(int employerId) {
        try(Connection connection = DBHelper.getConnection()){
            String sql = "SELECT COUNT(id) AS count FROM jobboard WHERE employer_id = ? AND posting_date = CURDATE()";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, employerId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return resultSet.getInt("count");
            }
            return 0;
        } catch (SQLException e ) {
            e.printStackTrace();
            return 0;
        }
    }

    public int countMyLastMonthJobBoard(int employerId) {
        try(Connection connection = DBHelper.getConnection()){
            String sql = "SELECT COUNT(id) AS count FROM jobboard WHERE employer_id = ? AND posting_date BETWEEN DATE_SUB(DATE_FORMAT(NOW(),'%Y-%m-01'), INTERVAL 1 MONTH) AND DATE_SUB(DATE_FORMAT(NOW(),'%Y-%m-01'), INTERVAL 1 DAY)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, employerId);

            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return resultSet.getInt("count");
            }
            return 0;
        } catch (SQLException e ) {
            e.printStackTrace();
            return 0;
        }
    }

    public int countMyCurrentMonthJobBoard(int employerId) {
        try(Connection connection = DBHelper.getConnection()){
            String sql = "SELECT COUNT(id) AS count FROM jobboard WHERE employer_id = ? AND posting_date BETWEEN DATE_FORMAT(NOW(),'%Y-%m-01') AND NOW()";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, employerId);

            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return resultSet.getInt("count");
            }
            return 0;
        } catch (SQLException e ) {
            e.printStackTrace();
            return 0;
        }
    }

    public int countMyJobBoard(int employerId, String search, int status) {
        try(Connection connection = DBHelper.getConnection()){
            String sql = "SELECT COUNT(jb.id) AS count " +
                    "FROM jobboard jb " +
                    "WHERE jb.employer_id = ? AND jb.title LIKE ? " + (status == 0 ? "" : "AND jb.status = ? ");

            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, employerId);
            preparedStatement.setString(2, "%" + search + "%");
            if(status != 0) preparedStatement.setInt(3, status);

            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                return resultSet.getInt("count");
            }
            return 0;
        } catch (SQLException e ) {
            e.printStackTrace();
            return 0;
        }
    }

    public boolean removeJobboard(int jobboardId) {
        try(Connection connection = DBHelper.getConnection()){
            String sql = "DELETE FROM jobboard WHERE id = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            preparedStatement.setInt(1, jobboardId);
            int result = preparedStatement.executeUpdate();
            return result > 0;
        } catch (SQLException e ) {
            e.printStackTrace();
            return false;
        }
    }
}
