package controller.admin;

import DTO.AdminSessionItem;
import DTO.EmployerItem;
import DTO.UpdatedJobBoardItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.EmployerBO;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "EmployerViewServlet", value = "/EmployerViewServlet")
public class EmployerViewServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AdminSessionItem adminSessionItem = (AdminSessionItem) request.getSession().getAttribute("adminSession");
        if(adminSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/AdminLoginServlet");
            return;
        }

        String search = request.getParameter("search");
        int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
        if (page < 1) {
            page = 1;
        }
        if(search == null){
            search = "";
        }

        ArrayList<EmployerItem> employerList = new EmployerBO().getAllEmployer(search, page);
        request.setAttribute("employerList", employerList);

        int totalRecords = new EmployerBO().countEmployer(search);
        int totalPages = (int) Math.ceil(totalRecords * 1.0 / 1);

        request.setAttribute("search", search);
        request.setAttribute("current", page);
        request.setAttribute("pages", totalPages);

        RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/admin/employer.jsp");
        rd.forward(request, response);
    }
}
