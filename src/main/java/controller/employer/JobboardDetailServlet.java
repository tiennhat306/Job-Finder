package controller.employer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.sql.Timestamp;

import DTO.JobPostingItem;

@WebServlet(name = "JobboardDetailServlet", value = "/JobboardDetailServlet")
public class JobboardDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String jobId = request.getParameter("id");
    	int newJobID = Integer.parseInt(jobId);
    	
    	JobBoardBO jobBoardBO = new JobBoardBO();
    	JobPostingItem item = jobBoardBO.findDataFromID(newJobID);
    	
    	request.setAttribute("jobBoardByID", item);
        RequestDispatcher rd = request.getRequestDispatcher("employer/jobDetails.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    }
}
