package model.dao;

import DBHelper.DBHelper;
import DTO.JobBoardItem;
import model.bean.JobBoard;
import DTO.CVComboboxItem;
import DTO.CVDataItem;
import DTO.CVInfoItem;
import DTO.JobListInfoItem;

import java.sql.*;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class JobBoardDAO {
	private Connection conn = DBHelper.getConnection();
	PreparedStatement preStmt = null;

	public List<CVComboboxItem> getTitleByEmployerId(int employer_id) {
		String sql = "SELECT * FROM jobboard WHERE employer_id = ?";
		List<CVComboboxItem> list = new ArrayList<CVComboboxItem>();
		try {
			preStmt = conn.prepareStatement(sql);
			preStmt.setString(1, String.valueOf(employer_id));
			ResultSet resultSet = preStmt.executeQuery();
			while (resultSet.next()) {
				CVComboboxItem temp = new CVComboboxItem(resultSet.getInt("id"), resultSet.getString("title"));
				list.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<CVInfoItem> getInfoByJBId(int id) {
		String sql = "SELECT jobboard.views, jobboard.posting_date FROM jobboard "
				+ "JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id WHERE jobboard.id = ?";
		List<CVInfoItem> list = new ArrayList<CVInfoItem>();
		try {
			preStmt = conn.prepareStatement(sql);
			preStmt.setInt(1, id);
			ResultSet resultSet = preStmt.executeQuery();
			int num = 0;
			while (resultSet.next()) {
				++num;
				CVInfoItem temp = new CVInfoItem(num, resultSet.getInt("views"), resultSet.getDate("posting_date"));
				list.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public List<CVDataItem> getDataCV(int id, int status, int range, java.sql.Date postDay) {
		String sql = "";
		int type = -1;
		if (status != 0 && range != 0) {
			sql = "SELECT jobboard.title, jobapplication.name, jobapplication.phone_number, jobapplication.email, jobapplication.submission_date, jobapplication.status, jobapplication.id "
					+ "FROM jobboard JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id WHERE jobboard.id = ? AND jobapplication.status = ? AND jobapplication.submission_date BETWEEN ? AND ?";
			type = 1;
		} else if (status != 0) {
			sql = "SELECT jobboard.title, jobapplication.name, jobapplication.phone_number, jobapplication.email, jobapplication.submission_date, jobapplication.status, jobapplication.id "
					+ "FROM jobboard JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id WHERE jobboard.id = ? AND jobapplication.status = ?";
			type = 2;
		} else if (range != 0) {
			sql = "SELECT jobboard.title, jobapplication.name, jobapplication.phone_number, jobapplication.email, jobapplication.submission_date, jobapplication.status, jobapplication.id "
					+ "FROM jobboard JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id WHERE jobboard.id = ? AND jobapplication.submission_date BETWEEN ? AND ?";
			type = 3;
		} else {
			sql = "SELECT jobboard.title, jobapplication.name, jobapplication.phone_number, jobapplication.email, jobapplication.submission_date, jobapplication.status, jobapplication.id "
					+ "FROM jobboard JOIN jobapplication ON jobboard.id = jobapplication.jobboard_id WHERE jobboard.id = ?";
		}

		List<CVDataItem> list = new ArrayList<CVDataItem>();
		try {
			preStmt = conn.prepareStatement(sql);
			preStmt.setInt(1, id);

			if (type == 1) {
				preStmt.setInt(2, status);
				// Tính toán ngày bắt đầu và ngày kết thúc của khoảng thời gian
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(new Date((postDay.getTime())));
				calendar.add(Calendar.DATE, range);
				Date endDate = calendar.getTime();
				System.out.println(endDate);
				preStmt.setDate(3, new java.sql.Date(postDay.getTime()));
				preStmt.setDate(4, new java.sql.Date(endDate.getTime()));
			} else if (type == 2) {
				preStmt.setInt(2, status);
			} else if (type == 3) {
				// Tính toán ngày bắt đầu và ngày kết thúc của khoảng thời gian
				Calendar calendar = Calendar.getInstance();
				calendar.setTime(new Date(postDay.getTime()));
				calendar.add(Calendar.DATE, range);
				Date endDate = calendar.getTime();
				System.out.println(endDate);
				preStmt.setDate(2, new java.sql.Date(postDay.getTime()));
				preStmt.setDate(3, new java.sql.Date(endDate.getTime()));
			}

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

	public int getTotalJobList() {
		String sql = "SELECT count(*) FROM jobboard";
		try {
			preStmt = conn.prepareStatement(sql);
			ResultSet rs = preStmt.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}

	public List<JobListInfoItem> pagingJob(int index) {
		String sql = "SELECT jobboard.title, jobboard.address, jobboard.expiration_date, jobboard.job_type, employer.logo "
				+ "FROM jobboard JOIN employer ON jobboard.employer_id = employer.id ORDER BY jobboard.id LIMIT ?, 5";
		List<JobListInfoItem> list = new ArrayList<JobListInfoItem>();
		try {
			preStmt = conn.prepareStatement(sql);
			preStmt.setInt(1, (index - 1) * 5);
			ResultSet rs = preStmt.executeQuery();
			while (rs.next()) {
				String name_type = "";
				int job_type = rs.getInt("job_type");
				if (job_type == 1)
					name_type = "Part-time";
				else if (job_type == 2)
					name_type = "Full-time";
				else
					name_type = "Hợp đồng";
				System.out.println(1);
				JobListInfoItem temp = new JobListInfoItem(rs.getString("title"), rs.getString("address"), name_type,
						rs.getDate("expiration_date"), rs.getString("logo"));
				list.add(temp);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	public ArrayList<JobBoardItem> getAllJobBoard(int noOfRecords, int offset, String search) {
		try (Connection connection = DBHelper.getConnection()) {
			ArrayList<JobBoardItem> jobBoardList = new ArrayList<>();

//            String sql = "select jb.id, jb.title, jb.company_name, jb.salary_type, jb.salary_from, jb.salary_to, e.logo, c.name as city_name from jobboard jb join employer e on jb.employer_id = e.id join city c on jb.city_id = c.id join career ca on jb.career_id = ca.id where jb.status = 2 and jb.posting_date <= now() and jb.expiration_date >= now() and (jb.title like ? or e.company_name like ? or c.name like ? or ca.name like ?) order by jb.posting_date desc, jb.views desc limit ?, ?";
			String sql = "SELECT jb.id, jb.title, jb.company_name, jb.salary_type, jb.salary_from, jb.salary_to, e.logo, c.name AS city_name "
					+ "FROM jobboard jb " + "JOIN employer e ON jb.employer_id = e.id "
					+ "JOIN city c ON jb.city_id = c.id "
					+ "WHERE jb.status = 2 AND jb.posting_date <= now() AND jb.expiration_date >= now() AND (jb.title LIKE ? OR e.company_name LIKE ? OR c.name LIKE ?) "
					+ "AND jb.id IN (SELECT jobboard_id FROM careergroup WHERE career_id IN (SELECT id FROM career WHERE name LIKE ?)) "
					+ "ORDER BY jb.posting_date DESC, jb.views DESC " + "LIMIT ?, ?";

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, "%" + search + "%");
			preparedStatement.setString(2, "%" + search + "%");
			preparedStatement.setString(3, "%" + search + "%");
			preparedStatement.setString(4, "%" + search + "%");
			preparedStatement.setInt(5, offset * noOfRecords);
			preparedStatement.setInt(6, noOfRecords);
			ResultSet resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
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
				switch (salaryType) {
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
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public void createJob(String title, String code, String companyName, int companySize, String companyDescription,
			String website, int cityId, String address, int jobType, int rank, int salaryType, double salaryFrom,
			double salaryTo, int ageType, int ageFrom, int ageTo, int genderType, String jobDescription, int quantity,
			int qualification, int yearsOfExperience, String requirements, String benefits, String contactAddress,
			String contactEmail, String contactNumber, String contactName, java.sql.Date postingDate,
			java.sql.Date expirationDate, int status, int views, int employerId, String logo) {

		try (Connection connection = DBHelper.getConnection()) {
			String sql = "INSERT INTO jobboard (title, code, company_name, company_size, company_description, website, city_id, address, job_type, `rank`, salary_type, salary_from, salary_to, age_type, age_from, age_to, gender_type, job_description, quantity, qualification, years_of_experience, requirements, benefits, contact_address, contact_email, contact_number, contact_name, posting_date, expiration_date, status, views, employer_id, logo) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";

			PreparedStatement pst = connection.prepareStatement(sql);

			pst.setString(1, title);
			pst.setString(2, code);
			pst.setString(3, companyName);
			pst.setInt(4, companySize);
			pst.setString(5, companyDescription);
			pst.setString(6, website);
			pst.setInt(7, cityId);
			pst.setString(8, address);
			pst.setInt(9, jobType);
			pst.setInt(10, rank);
			pst.setInt(11, salaryType);
			pst.setDouble(12, salaryFrom);
			pst.setDouble(13, salaryTo);
			pst.setInt(14, ageType);
			pst.setInt(15, ageFrom);
			pst.setInt(16, ageTo);
			pst.setInt(17, genderType);
			pst.setString(18, jobDescription);
			pst.setInt(19, quantity);
			pst.setInt(20, qualification);
			pst.setInt(21, yearsOfExperience);
			pst.setString(22, requirements);
			pst.setString(23, benefits);
			pst.setString(24, contactAddress);
			pst.setString(25, contactEmail);
			pst.setString(26, contactNumber);
			pst.setString(27, contactName);
			pst.setDate(28, postingDate);
			pst.setDate(29, expirationDate);
			pst.setInt(30, status);
			pst.setInt(31, views);
			pst.setInt(32, employerId);
			pst.setString(33, logo);

			pst.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

//	public void updateJobPartial(int jobboardId, String title, String code, String companyName, int companySize,
//			String companyDescription, String website, int cityId, String address, String jobType, String rank,
//			int salaryType, double salaryFrom, double salaryTo, String ageType, int genderType, String jobDescription,
//			int qualification, int yearsOfExperience, String requirements) {
//
//		try (Connection connection = DBHelper.getConnection()) {
//			String sql = "UPDATE jobboard SET title=?, code=?, company_name=?, company_size=?, "
//					+ "company_description=?, website=?, city_id=?, address=?, job_type=?, rank=?, "
//					+ "salary_type=?, salary_from=?, salary_to=?, age_type=?, gender_type=?, job_description=?, "
//					+ "qualification=?, years_of_experience=?, requirements=? WHERE id=?";
//
//			try (PreparedStatement pst = connection.prepareStatement(sql)) {
//				pst.setString(1, title);
//				pst.setString(2, code);
//				pst.setString(3, companyName);
//				pst.setInt(4, companySize);
//				pst.setString(5, companyDescription);
//				pst.setString(6, website);
//				pst.setInt(7, cityId);
//				pst.setString(8, address);
//				pst.setString(9, jobType);
//				pst.setString(10, rank);
//				pst.setInt(11, salaryType);
//				pst.setDouble(12, salaryFrom);
//				pst.setDouble(13, salaryTo);
//				pst.setString(14, ageType);
//				pst.setInt(15, genderType);
//				pst.setString(16, jobDescription);
//				pst.setInt(17, qualification);
//				pst.setInt(18, yearsOfExperience);
//				pst.setString(19, requirements);
//
//// Set the jobboard ID in the last parameter of the SQL query
//				pst.setInt(20, jobboardId);
//
//				pst.executeUpdate();
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		}
//	}
}
