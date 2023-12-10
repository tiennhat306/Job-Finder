package model.bo;

import DTO.CVComboboxItem;
import DTO.CVDataItem;
import DTO.CVInfoItem;
import DTO.JobListInfoItem;
import DTO.JobBoardItem;
import DTO.MyJobBoardItem;
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

    public ArrayList<MyJobBoardItem> getMyJobBoardList(int employerId, String search, int page, int status) {
        return jobBoardDAO.getMyJobBoardList(employerId, search, page, status);
    }

    public ArrayList<MyJobBoardItem> getMyJobBoardList(int employerId, int page, int status) {
        return jobBoardDAO.getMyJobBoardList(employerId, "", page, status);
    }

    public ArrayList<MyJobBoardItem> getMyJobBoardList(int employerId, String search, int status) {
        return jobBoardDAO.getMyJobBoardList(employerId, search, 1, status);
    }

    public ArrayList<MyJobBoardItem> getMyJobBoardList(int employerId, int status) {
        return jobBoardDAO.getMyJobBoardList(employerId, "", 1, status);
    }

    public int countMyTodayJobBoard(int employerId) {
        return jobBoardDAO.countMyTodayJobBoard(employerId);
    }

    public int countMyLastMonthJobBoard(int employerId) {
        return jobBoardDAO.countMyLastMonthJobBoard(employerId);
    }

    public int countMyCurrentMonthJobBoard(int employerId) {
        return jobBoardDAO.countMyCurrentMonthJobBoard(employerId);
    }

    public int countMyJobBoard(int employerId, String search, int status) {
        return jobBoardDAO.countMyJobBoard(employerId, search, status);
    }

    public boolean removeJobboard(int jobboardId) {
        return jobBoardDAO.removeJobboard(jobboardId);
    }
}
