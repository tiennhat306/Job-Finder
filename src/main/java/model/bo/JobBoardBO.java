package model.bo;

import DTO.CVComboboxItem;
import DTO.CVDataItem;
import DTO.CVInfoItem;
import DTO.JobListInfoItem;
import DTO.JobBoardItem;
import model.dao.JobBoardDAO;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class JobBoardBO {
    JobBoardDAO jobBoardDAO = new JobBoardDAO();
    public List<CVComboboxItem> getTitleByEmployerId(int employer_id) {
        return jobBoardDAO.getTitleByEmployerId(employer_id);
    }
    public List<CVInfoItem> getInfoByJBId(int id) {
        return jobBoardDAO.getInfoByJBId(id);
    }
    public List<CVDataItem> getDataCV(int id, int status, int range, Date postDay) {
        return jobBoardDAO.getDataCV(id, status, range, postDay);
    }
    public int getTotalJobList() {
        return jobBoardDAO.getTotalJobList();
    }
    public List<JobListInfoItem> pagingJob(int index) {
        return jobBoardDAO.pagingJob(index);
    }

    public ArrayList<JobBoardItem> getAllJobBoard(int noOfRecords, int offset, String search) {
        return jobBoardDAO.getAllJobBoard(noOfRecords, offset, search);
    }

    public ArrayList<JobBoardItem> getAllJobBoard(int offset, String search) {
        return jobBoardDAO.getAllJobBoard(10, offset, search);
    }

    public ArrayList<JobBoardItem> getAllJobBoard(int offset) {
        return jobBoardDAO.getAllJobBoard(10, offset, "");
    }
    
    public void createJob(String title, String code, String companyName, int companySize, String companyDescription,
			String website, int cityId, String address, int jobType, int rank, int salaryType, double salaryFrom,
			double salaryTo, int ageType, int ageFrom, int ageTo, int genderType, String jobDescription, int quantity,
			int qualification, int yearsOfExperience, String requirements, String benefits, String contactAddress,
			String contactEmail, String contactNumber, String contactName, java.sql.Date postingDate, java.sql.Date expirationDate,
			int status, int views, int employerId, String logo) {
    	jobBoardDAO.createJob(title, code, companyName, companySize, companyDescription, website, cityId, address, jobType, rank, salaryType, salaryFrom, salaryTo, ageType, ageFrom, ageTo, genderType, jobDescription, quantity, qualification, yearsOfExperience, requirements, benefits, contactAddress, contactEmail, contactNumber, contactName, postingDate, expirationDate, status, views, employerId, logo);
    }
}
