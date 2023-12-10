package controller.employer;

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
        System.out.println("RemoveJobboardServlet");
        int jobboardId = Integer.parseInt(request.getParameter("id"));

        boolean result = new JobBoardBO().removeJobboard(jobboardId);

    }
}
