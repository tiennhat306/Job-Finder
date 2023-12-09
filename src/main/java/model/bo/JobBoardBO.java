package model.bo;

import model.dao.JobBoardDAO;

import java.util.List;

public class JobBoardBO {
    JobBoardDAO jobBoardDAO = new JobBoardDAO();
    public List<String> getTitleByEmployerId(int id) {
        return jobBoardDAO.getTitleByEmployerId(id);
    }
}
