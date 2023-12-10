package model.bo;

import DTO.CandidateSessionItem;
import model.dao.CandidateDAO;

public class CandidateBO {
    CandidateDAO candidateDAO = new CandidateDAO();
    public CandidateSessionItem validateCandidate(String email, String password){
        return candidateDAO.validateCandidate(email, password);
    }
}
