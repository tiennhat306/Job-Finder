package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "cvManagementServlet", value = "/cvManagementServlet")
public class cvManagementServlet extends HttpServlet {
    public cvManagementServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        JobBoardBO jobBoardBO = new JobBoardBO();
        List<String> listTitle = jobBoardBO.getTitleByEmployerId(1);
        req.setAttribute("listTitle", listTitle);
        req.getRequestDispatcher("employer/cvManagement.jsp").forward(req, resp);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
