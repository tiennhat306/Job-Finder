package controller;

import DTO.JobListInfoItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "jobListServlet", value = "/jobListServlet")
public class jobListServlet extends HttpServlet {
    public jobListServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String indexPage = req.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        JobBoardBO jobBoardBO = new JobBoardBO();
        int count = jobBoardBO.getTotalJobList();
        int endPage = count / 5;
        if (count % 5 != 0) ++endPage;
        req.setAttribute("numJob", count);
        req.setAttribute("endPage", endPage);
        List<JobListInfoItem> list = jobBoardBO.pagingJob(index);
        req.setAttribute("jobList", list);
        req.getRequestDispatcher("candidate/jobList.jsp").forward(req, resp);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
