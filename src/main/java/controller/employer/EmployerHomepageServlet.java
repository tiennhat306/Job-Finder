package controller.employer;

import DTO.EmployerSessionItem;
import DTO.MyJobBoardItem;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "EmployerHomepageServlet", value = "/EmployerHomepageServlet")
public class EmployerHomepageServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        
    	doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployerSessionItem employerSessionItem = (EmployerSessionItem) request.getSession().getAttribute("employerSession");
        int employerId;
        if(employerSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/EmployerLoginServlet");
            return;
        } else {
            employerId = employerSessionItem.getId();
        }

        String search = request.getParameter("search");
        int page = request.getParameter("page") == null ? 1 : Integer.parseInt(request.getParameter("page"));
        int status = request.getParameter("status") == null ? 0 : Integer.parseInt(request.getParameter("status"));
        if (page < 1) {
            page = 1;
        }
        if(search == null){
            search = "";
        }
        if(status < 0 || status > 5){
            status = 0;
        }

        ArrayList<MyJobBoardItem> myJobBoardList = new JobBoardBO().getMyJobBoardList(employerId, search, page, status);
        request.setAttribute("myJobBoardList", myJobBoardList);

        int totalRecords = new JobBoardBO().countMyJobBoard(employerId, search, status);
        int totalPages = (int) Math.ceil(totalRecords * 1.0 / 10);

        int todayJobBoard = new JobBoardBO().countMyTodayJobBoard(employerId);
        int lastMonthJobBoard = new JobBoardBO().countMyLastMonthJobBoard(employerId);
        int currentMonthJobBoard = new JobBoardBO().countMyCurrentMonthJobBoard(employerId);
        request.setAttribute("todayJobBoard", todayJobBoard);
        request.setAttribute("lastMonthJobBoard", lastMonthJobBoard);
        request.setAttribute("currentMonthJobBoard", currentMonthJobBoard);

        request.setAttribute("search", search);
        request.setAttribute("current", page);
        request.setAttribute("pages", totalPages);
        request.setAttribute("selectedStatus", status);

        RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/employer/homepage.jsp");
        rd.forward(request, response);
    }
}
