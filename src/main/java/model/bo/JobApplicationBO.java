package model.bo;

import DTO.CVDataItem;
import DTO.CVDetailItem;
import model.dao.JobApplicationDAO;

import java.sql.Date;
import java.util.List;

public class JobApplicationBO {
    JobApplicationDAO jobApplicationDAO = new JobApplicationDAO();
    public CVDetailItem getDetailCV(int cvid) {
        return jobApplicationDAO.getDetailCV(cvid);
    }
    public void updateCV(int cvid, int status) {
        jobApplicationDAO.updateCV(cvid, status);
    }
    public List<CVDataItem> getListCVCandidate(int candidate_id) {
        return jobApplicationDAO.getListCVCandidate(candidate_id);
    }
    
    public void addCV(String name, int phone, String email, String cv, int jobBoardID, int status, Date submissionDate) {
    	jobApplicationDAO.addCV(name, phone, email, cv, jobBoardID, status, submissionDate);
    }
    
    
}
