package controller.candidate;

import DTO.CVDataItem;
import DTO.CandidateSessionItem;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bo.JobApplicationBO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CVSendedListServlet", value = "/CVSendedListServlet")
public class CVSendedListServlet extends HttpServlet {
    public CVSendedListServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CandidateSessionItem candidateSessionItem = (CandidateSessionItem) req.getSession().getAttribute("candidateSession");
        int candidateId;
        if (candidateSessionItem == null) {
            resp.sendRedirect(req.getContextPath() + "/CandidateLoginServlet");
            return;
        } else {
            candidateId = candidateSessionItem.getId();
        }
        System.out.println(candidateId);
        JobApplicationBO jobApplicationBO = new JobApplicationBO();
        List<CVDataItem> listCVCandidate = new ArrayList<>();
        listCVCandidate = jobApplicationBO.getListCVCandidate(candidateId);
        req.setAttribute("listCVCandidate", listCVCandidate);
        RequestDispatcher rd = req.getRequestDispatcher("candidate/CVCandidateView.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
