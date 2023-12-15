package controller.candidate;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.JobBoardBO;

import java.io.IOException;

@WebServlet(name = "JobBoardDetailServlet", value = "/JobBoardDetailServlet")
public class JobBoardDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int jobBoardId = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("jobBoardDetail", new JobBoardBO().getJobBoardDetail(jobBoardId));

        RequestDispatcher rd = request.getRequestDispatcher("/candidate/job-details.jsp");
        rd.forward(request, response);
    }
}
