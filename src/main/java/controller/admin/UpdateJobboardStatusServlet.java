package controller.admin;

import DTO.AdminSessionItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "UpdateJobboardStatusServlet", value = "/UpdateJobboardStatusServlet")
public class UpdateJobboardStatusServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int adminId;
        AdminSessionItem adminSessionItem = (AdminSessionItem) request.getSession().getAttribute("adminSession");
        if(adminSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/AdminLoginServlet");
            return;
        } else {
            adminId = adminSessionItem.getId();
        }

        int jobBoardId = Integer.parseInt(request.getParameter("id"));
        int status = Integer.parseInt(request.getParameter("status"));


        boolean result = new model.bo.JobBoardBO().updateJobBoardStatus(jobBoardId, adminId, status);
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
