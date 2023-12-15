package controller.candidate;

import DTO.JobListInfoItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bean.Career;
import model.bean.City;
import model.bo.CareerBO;
import model.bo.CityBO;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "JobListServlet", value = "/JobListServlet")
public class JobListServlet extends HttpServlet {
    public JobListServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String searchText = req.getParameter("searchText");
        String location = req.getParameter("location");
        String career = req.getParameter("career");
        String jobtype = req.getParameter("job_type");
        if (searchText == null || searchText.isEmpty()) {
            searchText = "";
        }
        int location_id = 0, jobtype_id = 0;
        if (location != null) {
            location_id = Integer.parseInt(location);
        }
        if (career == null || career.isEmpty()) {
            career = "";
        }
        if (jobtype != null) {
            jobtype_id = Integer.parseInt(jobtype);
        }
        String indexPage = req.getParameter("index");
        if (indexPage == null) {
            indexPage = "1";
        }
        int index = Integer.parseInt(indexPage);
        JobBoardBO jobBoardBO = new JobBoardBO();
        int count = jobBoardBO.getTotalJobList(searchText, location_id, career, jobtype_id);
        int endPage = count / 5;
        if (count % 5 != 0) ++endPage;
        req.setAttribute("numJob", count);
        req.setAttribute("endPage", endPage);
        List<Integer> listJBID = jobBoardBO.pagingJob(index, searchText, location_id, career, jobtype_id);
        List<JobListInfoItem> list = new ArrayList<>();
        for (int i = 0; i < listJBID.size(); ++i) {
            JobListInfoItem temp = jobBoardBO.getDetailInfoByEmployerID(listJBID.get(i));
            list.add(temp);
        }
        req.setAttribute("jobList", list);

        CityBO cityBO = new CityBO();
        ArrayList<City> listCity = cityBO.getAllCity();
        req.setAttribute("listCity", listCity);

        CareerBO careerBO = new CareerBO();
        ArrayList<Career> listCareer = careerBO.getAllCareer();
        req.setAttribute("listCareer", listCareer);

        req.setAttribute("searchText", searchText);
        req.setAttribute("location_id", location_id);
        req.setAttribute("career_id", career);
        req.setAttribute("jobtype_id", jobtype_id);
        req.getRequestDispatcher("candidate/jobList.jsp").forward(req, resp);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
