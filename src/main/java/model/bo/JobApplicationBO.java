package model.bo;

import DTO.CVDetailItem;
import model.dao.JobApplicationDAO;

public class JobApplicationBO {
    JobApplicationDAO jobApplicationDAO = new JobApplicationDAO();
    public CVDetailItem getDetailCV(int cvid) {
        return jobApplicationDAO.getDetailCV(cvid);
    }
    public void updateCV(int cvid, int status) {
        jobApplicationDAO.updateCV(cvid, status);
    }
}
