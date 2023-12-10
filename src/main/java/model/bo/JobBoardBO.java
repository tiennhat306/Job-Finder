package model.bo;

import DTO.CVComboboxItem;
import DTO.CVDataItem;
import DTO.CVInfoItem;
import DTO.JobListInfoItem;
import model.dao.JobBoardDAO;

import java.sql.Date;
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
}
