package model.bo;

import model.dao.CareerGroupDAO;

public class CareerGroupBO {
    CareerGroupDAO careerGroupDAO = new CareerGroupDAO();
    public boolean addCareerGroup(int jobBoardId, String careerId) {
        return careerGroupDAO.addCareerGroup(jobBoardId, careerId);
    }
}
