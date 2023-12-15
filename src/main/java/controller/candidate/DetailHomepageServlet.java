package controller.candidate;

import java.io.IOException;
import java.util.ArrayList;

import DTO.JobBoardItem;
import DTO.TopEmployerItem;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bean.Career;
import model.bean.City;
import model.bo.CareerBO;
import model.bo.CityBO;
import model.bo.EmployerBO;
import model.bo.JobBoardBO;

@WebServlet(name = "DetailHomepageServlet",  value = "/DetailHomepageServlet")
public class DetailHomepageServlet extends HttpServlet{
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<City> cityList = null;
        cityList = new CityBO().getAllCity();
        request.setAttribute("cityList", cityList);

        ArrayList<Career> careerList = null;
        careerList = new CareerBO().getAllCareer();
        request.setAttribute("careerList", careerList);

        ArrayList<TopEmployerItem> topEmployerList = null;
        topEmployerList = new EmployerBO().getTopEmployer();
        request.setAttribute("topEmployerList", topEmployerList);

        ArrayList<JobBoardItem> jobBoardList = null;
        jobBoardList = new JobBoardBO().getAllJobBoardItem();
        request.setAttribute("jobBoardList", jobBoardList);
        RequestDispatcher rd = request.getRequestDispatcher("candidate/index.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
