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
    public int getTotalJobList(String searchText, int location_id, int career_id, int jobtype_id) {
        return jobBoardDAO.getTotalJobList(searchText, location_id, career_id, jobtype_id);
    }
    public List<Integer> pagingJob(int index, String searchText, int location_id, int career_id, int jobtype_id) {
        return jobBoardDAO.pagingJob(index, searchText, location_id, career_id, jobtype_id);
    }

    public JobListInfoItem getDetailInfoByEmployerID(int id) {
        return jobBoardDAO.getDetailInfoByEmployerID(id);
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
}
