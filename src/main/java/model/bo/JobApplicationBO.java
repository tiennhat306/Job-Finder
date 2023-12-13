package model.bo;

import DTO.CVDataItem;
import DTO.CVDetailItem;
import model.dao.JobApplicationDAO;

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
}
