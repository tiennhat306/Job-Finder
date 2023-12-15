package model.bo;

import java.sql.Date;
import java.sql.Timestamp;

import DTO.CandidateSessionItem;
import model.dao.CandidateDAO;

public class CandidateBO {
    CandidateDAO candidateDAO = new CandidateDAO();
    public CandidateSessionItem validateCandidate(String email, String password){
        return candidateDAO.validateCandidate(email, password);
    }
    
    public boolean createAccount(String name,String username, String password, String phoneNumber, Boolean gender, Date birthday, Timestamp createdAt, Timestamp updatedAt) {
    	return candidateDAO.createAccount(name, username, password, phoneNumber, gender, birthday, createdAt, updatedAt);
    }
}
