package controller.employer;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.sql.Timestamp;

@WebServlet(name = "JobboardDetailServlet", value = "/JobboardDetailServlet")
public class JobboardDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String title = "", code = "", companyName = "", companyDescription = "", website = "", address = "", jobDescription = "", requirements = "", prizeMoney = "";
        int companySize = 0, cityId = 0, jobType = 0, rank = 0, salaryType = 0, ageType = 0, requireNumber = 0, genderType = 0, qualification = 0, yearsOfExperience = 0;
        double salaryFrom = 0.0, salaryTo = 0.0;
        Timestamp postingTimestamp = new Timestamp(System.currentTimeMillis());
        Timestamp expirationTimestamp = new Timestamp(System.currentTimeMillis());

        // Convert to java.sql.Date
        java.sql.Date postingDate = new java.sql.Date(postingTimestamp.getTime());
        java.sql.Date expirationDate = new java.sql.Date(expirationTimestamp.getTime());
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
            session.setAttribute("postingDate", postingDate);
            session.setAttribute("expirationDate", expirationDate);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage2.jsp");
            dispatcher.forward(request, response);
        } else if(request.getParameter("buttonSaveStage2") != null) {
            title = (String) session.getAttribute("title");
            code = (String) session.getAttribute("code");
            companyName = (String) session.getAttribute("companyName");
            companySize = (int) session.getAttribute("companySize");
            companyDescription = (String) session.getAttribute("companyDescription");
            website = (String) session.getAttribute("website");

            cityId = Integer.parseInt(request.getParameter("cityID"));
            address = request.getParameter("address");
            jobType = Integer.parseInt(request.getParameter("job_type"));
            rank = Integer.parseInt(request.getParameter("rank"));

            salaryType = Integer.parseInt(request.getParameter("salary_type"));
            salaryFrom = Double.parseDouble(request.getParameter("salary_from"));
            salaryTo = Double.parseDouble(request.getParameter("salary_to"));

            ageType = Integer.parseInt(request.getParameter("age_type"));
            requireNumber = Integer.parseInt(request.getParameter("requireNumber"));
            genderType = Integer.parseInt(request.getParameter("gender_type"));

            jobDescription = request.getParameter("job_description");
            qualification = Integer.parseInt(request.getParameter("qualification"));
            yearsOfExperience = Integer.parseInt(request.getParameter("yearOfExperience"));
            requirements = request.getParameter("requirements");

            // Set attributes in the request
            request.setAttribute("cityId", cityId);
            request.setAttribute("address", address);
            request.setAttribute("jobType", jobType);
            request.setAttribute("rank", rank);
            request.setAttribute("salaryType", salaryType);
            request.setAttribute("salaryFrom", salaryFrom);
            request.setAttribute("salaryTo", salaryTo);
            request.setAttribute("ageType", ageType);
            request.setAttribute("requireNumber", requireNumber);
            request.setAttribute("genderType", genderType);
            request.setAttribute("jobDescription", jobDescription);
            request.setAttribute("qualification", qualification);
            request.setAttribute("yearsOfExperience", yearsOfExperience);
            request.setAttribute("requirements", requirements);
            // Retrieve other form fields as needed

            // Call the DAO method to create a job
            JobBoardBO jobBoardBO = new JobBoardBO();
            jobBoardBO.createJob(
                    title, code, companyName, companySize, companyDescription, website,
                    cityId, address, jobType, rank, salaryType, salaryFrom, salaryTo, ageType,
                    1, requireNumber, genderType, jobDescription, 1, qualification, yearsOfExperience,
                    requirements, prizeMoney, address, "empty", "empty", "empty", postingDate,
                    expirationDate, 1, 1, 1
            );
            // Forward to success page or any other desired page
            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage3.jsp");
            dispatcher.forward(request, response);
        } else if(request.getParameter("buttonSaveStage3") != null) {
            prizeMoney = request.getParameter("welfareBenefits");
            request.setAttribute("prizeMoney", prizeMoney);

            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage4.jsp");
            dispatcher.forward(request, response);
        } else if(request.getParameter("buttonSaveStage4") != null) {

            String contactName = request.getParameter("contact_name");
            String contactNumber = request.getParameter("contact_number");
            String contactEmail = request.getParameter("contact-email");


            RequestDispatcher dispatcher = request.getRequestDispatcher("/employer/stage5.jsp");
            dispatcher.forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
