package controller;

import DTO.CVDetailItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bo.JobApplicationBO;

import java.io.IOException;

@WebServlet(name = "detailCVServlet", value = "/detailCVServlet")
public class detailCVServlet extends HttpServlet {
    public detailCVServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int cvid = Integer.parseInt(req.getParameter("cvid"));
        JobApplicationBO jobApplicationBO = new JobApplicationBO();
        CVDetailItem detail = jobApplicationBO.getDetailCV(cvid);
        req.setAttribute("detailCV", detail);
        req.getRequestDispatcher("employer/detailCV.jsp").forward(req, resp);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int cvid = Integer.parseInt(req.getParameter("cvid"));
        System.out.println(cvid);
        int status = Integer.parseInt(req.getParameter("status"));
        System.out.println(status);
        JobApplicationBO jobApplicationBO = new JobApplicationBO();
        jobApplicationBO.updateCV(cvid, status);
        resp.sendRedirect("cvManagementServlet");
        return;
    }
}
