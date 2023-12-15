package controller.employer;

import DTO.CVDetailItem;
import DTO.EmployerSessionItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bo.JobApplicationBO;

import java.io.IOException;

@WebServlet(name = "DetailCVServlet", value = "/DetailCVServlet")
public class DetailCVServlet extends HttpServlet {
    public DetailCVServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EmployerSessionItem employerSessionItem = (EmployerSessionItem) req.getSession().getAttribute("employerSession");
        if(employerSessionItem == null){
            resp.sendRedirect(req.getContextPath() + "/ErrorServlet");
            return;
        }

        int cvid = Integer.parseInt(req.getParameter("cvid"));
        JobApplicationBO jobApplicationBO = new JobApplicationBO();
        CVDetailItem detail = jobApplicationBO.getDetailCV(cvid);
        req.setAttribute("detailCV", detail);
        req.getRequestDispatcher("employer/detailCV.jsp").forward(req, resp);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        EmployerSessionItem employerSessionItem = (EmployerSessionItem) req.getSession().getAttribute("employerSession");
        if(employerSessionItem == null){
            resp.sendRedirect(req.getContextPath() + "/ErrorServlet");
            return;
        }

        int cvid = Integer.parseInt(req.getParameter("cvid"));
        int status = Integer.parseInt(req.getParameter("status-cv"));
        JobApplicationBO jobApplicationBO = new JobApplicationBO();
        jobApplicationBO.updateCV(cvid, status);
        resp.sendRedirect("CVManagementServlet");
        return;
    }
}
