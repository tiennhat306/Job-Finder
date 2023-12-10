package model.bo;

import DTO.JobBoardItem;
import model.dao.JobBoardDAO;

import java.util.ArrayList;
import java.util.List;

public class JobBoardBO {
    JobBoardDAO jobBoardDAO = new JobBoardDAO();
    public List<String> getTitleByEmployerId(int id) {
        return jobBoardDAO.getTitleByEmployerId(id);
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
