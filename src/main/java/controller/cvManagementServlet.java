package controller;

import DTO.CVComboboxItem;
import DTO.CVDataItem;
import DTO.CVInfoItem;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.bo.JobBoardBO;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/cvManagementServlet")
public class cvManagementServlet extends HttpServlet {
    public cvManagementServlet() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("def");
        JobBoardBO jobBoardBO = new JobBoardBO();
        List<CVComboboxItem> listTitle = jobBoardBO.getTitleByEmployerId(1);
        List<CVInfoItem> listCvInfo = new ArrayList<CVInfoItem>();
        List<CVDataItem> listCvData = new ArrayList<CVDataItem>();
        String str_id = req.getParameter("id");
        String str_type = req.getParameter("status");
        String str_range = req.getParameter("received");
        System.out.println(str_id);
        if (str_id == null) {
            if (listTitle.size() != 0) {
                listCvInfo = jobBoardBO.getInfoByJBId(listTitle.get(0).getId());
                Date postDay = listCvInfo.get(listCvInfo.size() - 1).getPublishDay();
                System.out.println(postDay);
                listCvData = jobBoardBO.getDataCV(listTitle.get(0).getId(), 0, 0, postDay);
            }
        } else {
            int id = Integer.parseInt(str_id);
            int status = 0, range = 0;
            if (str_type != null) status = Integer.parseInt(str_type);
            if (str_range != null) range = Integer.parseInt(str_range);
            listCvInfo = jobBoardBO.getInfoByJBId(id);
            Date postDay = listCvInfo.get(listCvInfo.size() - 1).getPublishDay();
            System.out.println(postDay);
            listCvData = jobBoardBO.getDataCV(id, status, range, postDay);
        }
        req.setAttribute("listTitle", listTitle);
        req.setAttribute("listCvInfo", listCvInfo);
        req.setAttribute("listCvData", listCvData);
        req.getRequestDispatcher("employer/cvManagement.jsp").forward(req, resp);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
