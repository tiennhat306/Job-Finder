package controller.employer;

import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import DTO.EmployerSessionItem;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.bean.Career;
import model.bean.City;
import model.bo.*;

@WebServlet(name = "PostNewJobServlet", value = "/PostNewJobServlet")
public class PostNewJobServlet extends HttpServlet{
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher rd = request.getServletContext().getRequestDispatcher("/employer/stage1.jsp");
        rd.forward(request, response);   
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        EmployerSessionItem employerSessionItem = (EmployerSessionItem) request.getSession().getAttribute("employerSession");
        int employerId;
        if(employerSessionItem == null){
            response.sendRedirect(request.getContextPath() + "/ErrorServlet");
            return;
        } else {
            employerId = employerSessionItem.getId();
        }

        ArrayList<City> cityList = null;
        cityList = new CityBO().getAllCity();
        request.setAttribute("cityList", cityList);

        ArrayList<Career> careerList = null;
        careerList = new CareerBO().getAllCareer();
        request.setAttribute("careerList", careerList);


    	HttpSession session = request.getSession();
    	String title = "", code = "", companyName = "", companyDescription = "", website = "", address = "", jobDescription = "", requirements = "", benefits = "";
    	int companySize = 0, cityId = 0, jobType = 0, rank = 0, salaryType = 0, ageType = 0, requireNumber = 0, genderType = 0, qualification = 0, yearsOfExperience = 0;
    	double salaryFrom = 0.0, salaryTo = 0.0;
        int ageFrom = 0, ageTo = 0;
        String careerId = "";
//    	Timestamp postingTimestamp = new Timestamp(System.currentTimeMillis());
//        Timestamp expirationTimestamp = new Timestamp(System.currentTimeMillis());
//
//        // Convert to java.sql.Date
//        java.sql.Date postingDate = new java.sql.Date(postingTimestamp.getTime());
//        java.sql.Date expirationDate = new java.sql.Date(expirationTimestamp.getTime());

//        Date postingDate = null;
//        Date expirationDate = null;
        Date postingDate = new Date(System.currentTimeMillis());
        Date expirationDate = new Date(System.currentTimeMillis());

    	if (request.getParameter("buttonSaveStage1") != null) {
            // Retrieve data from the form - Stage 1
            title = request.getParameter("title");
            code = request.getParameter("code");
            companyName = request.getParameter("companyName");
            companyDescription = request.getParameter("summary");
            companySize = Integer.parseInt(request.getParameter("employeeNumber"));

            website = request.getParameter("Website");


            // Save data to session
            session.setAttribute("title", title);
            session.setAttribute("code", code);
            session.setAttribute("companyName", companyName);
            session.setAttribute("companySize", companySize);
            session.setAttribute("companyDescription", companyDescription);
            session.setAttribute("website", website);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage2.jsp");
            dispatcher.forward(request, response);
        } else if(request.getParameter("buttonSaveStage2") != null) {
            careerId = request.getParameter("JobID");

            cityId = Integer.parseInt(request.getParameter("cityID"));
            address = request.getParameter("address");
            jobType = Integer.parseInt(request.getParameter("job_type"));
            rank = Integer.parseInt(request.getParameter("rank"));

            salaryType = Integer.parseInt(request.getParameter("salary_type"));
            if(request.getParameter("salary_from") == null || request.getParameter("salary_from").equals("")) {
                salaryFrom = 0.0;
            } else {
                salaryFrom = Double.parseDouble(request.getParameter("salary_from"));
            }
            if(request.getParameter("salary_to") == null || request.getParameter("salary_to").equals("")) {
                salaryTo = 0.0;
            } else {
                salaryTo = Double.parseDouble(request.getParameter("salary_to"));
            }

            ageType = Integer.parseInt(request.getParameter("age_type"));
            if(request.getParameter("age_from") == null || request.getParameter("age_from").equals("")) {
                ageFrom = 0;
            } else {
                ageFrom = Integer.parseInt(request.getParameter("age_from"));
            }
            if(request.getParameter("age_to") == null || request.getParameter("age_to").equals("")) {
                ageTo = 0;
            } else {
                ageTo = Integer.parseInt(request.getParameter("age_to"));
            }

            requireNumber = Integer.parseInt(request.getParameter("requireNumber"));
            genderType = Integer.parseInt(request.getParameter("gender_type"));

            jobDescription = request.getParameter("job_description");
            qualification = Integer.parseInt(request.getParameter("qualification"));
            yearsOfExperience = Integer.parseInt(request.getParameter("yearOfExperience"));
            requirements = request.getParameter("requirements");
            
         // Set attributes in the request
            session.setAttribute("careerId", careerId);

            session.setAttribute("cityId", cityId);
            session.setAttribute("address", address);
            session.setAttribute("jobType", jobType);
            session.setAttribute("rank", rank);
            session.setAttribute("salaryType", salaryType);
            session.setAttribute("salaryFrom", salaryFrom);
            session.setAttribute("salaryTo", salaryTo);
            session.setAttribute("ageType", ageType);
            session.setAttribute("ageFrom", ageFrom);
            session.setAttribute("ageTo", ageTo);
            session.setAttribute("requireNumber", requireNumber);
            session.setAttribute("genderType", genderType);
            session.setAttribute("jobDescription", jobDescription);
            session.setAttribute("qualification", qualification);
            session.setAttribute("yearsOfExperience", yearsOfExperience);
            session.setAttribute("requirements", requirements);
            // Retrieve other form fields as needed

            // Forward to success page or any other desired page
            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage3.jsp");
            dispatcher.forward(request, response);
        } else if(request.getParameter("buttonSaveStage3") != null) {
            if(request.getParameter("welfareBenefits") == null || request.getParameter("welfareBenefits").equals("")) {
                benefits = "";
            } else {
                benefits = request.getParameter("welfareBenefits");
            }
        	session.setAttribute("benefits", benefits);
            
            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage4.jsp");
            dispatcher.forward(request, response);
        } else if(request.getParameter("buttonSaveStage4") != null) {
            
        	String contactName = request.getParameter("contact_name");
            String contactAddress = request.getParameter("contact_address");
        	String contactNumber = request.getParameter("contact_number");
        	String contactEmail = request.getParameter("contact-email");

            session.setAttribute("contactName", contactName);
            session.setAttribute("contactAddress", contactAddress);
            session.setAttribute("contactNumber", contactNumber);
            session.setAttribute("contactEmail", contactEmail);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage5.jsp");
            dispatcher.forward(request, response);
        } else if (request.getParameter("buttonSaveStage5") != null) {
            title = (String) session.getAttribute("title");
            code = (String) session.getAttribute("code");
            companyName = (String) session.getAttribute("companyName");
            companySize = (int) session.getAttribute("companySize");
            companyDescription = (String) session.getAttribute("companyDescription");
            website = (String) session.getAttribute("website");

            careerId = (String) session.getAttribute("careerId");
            cityId = (int) session.getAttribute("cityId");
            address = (String) session.getAttribute("address");
            jobType = (int) session.getAttribute("jobType");
            rank = (int) session.getAttribute("rank");
            salaryType = (int) session.getAttribute("salaryType");
            salaryFrom = (double) session.getAttribute("salaryFrom");
            salaryTo = (double) session.getAttribute("salaryTo");
            ageType = (int) session.getAttribute("ageType");
            ageFrom = (int) session.getAttribute("ageFrom");
            ageTo = (int) session.getAttribute("ageTo");
            requireNumber = (int) session.getAttribute("requireNumber");
            genderType = (int) session.getAttribute("genderType");
            jobDescription = (String) session.getAttribute("jobDescription");
            qualification = (int) session.getAttribute("qualification");
            yearsOfExperience = (int) session.getAttribute("yearsOfExperience");
            requirements = (String) session.getAttribute("requirements");

            benefits = (String) session.getAttribute("benefits");
            String contactName = (String) session.getAttribute("contactName");
            String contactAddress = (String) session.getAttribute("contactAddress");
            String contactNumber = (String) session.getAttribute("contactNumber");
            String contactEmail = (String) session.getAttribute("contactEmail");


            // get
            String postingDateString = request.getParameter("postingDate");
            String expirationDateString = request.getParameter("expirationDate");
            System.out.println(postingDateString);
            System.out.println(expirationDateString);
            // format string date to yyyy-mm-dd by using
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            try {
                java.util.Date postingDateUtil = sdf.parse(postingDateString);
                java.util.Date expirationDateUtil = sdf.parse(expirationDateString);
                postingDate = new Date(postingDateUtil.getTime());
                expirationDate = new Date(expirationDateUtil.getTime());
            } catch (Exception e) {
                e.printStackTrace();
            }
//            postingDate = Date.valueOf(request.getParameter("postingDate"));
//            expirationDate = Date.valueOf(request.getParameter("expirationDate"));

            // Call the DAO method to create a job


            JobBoardBO jobBoardBO = new JobBoardBO();
            int addedJobBoardID = jobBoardBO.createJob(
                    title, code, companyName, companySize, companyDescription, website,
                    cityId, address, jobType, rank, salaryType, salaryFrom, salaryTo, ageType, ageFrom, ageTo,
                    genderType, jobDescription, requireNumber, qualification, yearsOfExperience, requirements, benefits,
                    contactAddress, contactEmail, contactNumber, contactName, postingDate,
                    expirationDate, 1, 0, employerId
            );

            if(addedJobBoardID != -1) {
                boolean addedCareer = new CareerGroupBO().addCareerGroup(addedJobBoardID, careerId);
                if(addedCareer) {
                    response.sendRedirect(request.getContextPath() + "/EmployerHomepageServlet");
                } else {
                    new JobBoardBO().removeJobboard(addedJobBoardID);
                    response.sendRedirect(request.getContextPath() + "/ErrorServlet");
                }
            } else {
            	response.sendRedirect(request.getContextPath() + "/ErrorServlet");
            }


        }
    }
}
