package controller.employer;

import DTO.EmployerSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.JobBoardBO;

import java.io.IOException;

@WebServlet(name = "RemoveJobboardServlet", value = "/RemoveJobboardServlet")
public class RemoveJobboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployerSessionItem employerSessionItem = (EmployerSessionItem) request.getSession().getAttribute("employerSession");
        if(employerSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/ErrorServlet");
            return;
        }

        int jobboardId = Integer.parseInt(request.getParameter("id"));

        boolean result = new JobBoardBO().removeJobboard(jobboardId);
        if(result){
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"result\": \"success\"}");
        }else{
            response.setContentType("application/json");
            response.setCharacterEncoding("UTF-8");
            response.getWriter().write("{\"result\": \"fail\"}");
        }
    }
}
