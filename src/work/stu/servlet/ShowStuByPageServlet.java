package work.stu.servlet;

import work.stu.po.Student;
import work.stu.service.StudentService;
import work.stu.service.StudentServiceImpl;
import work.stu.vo.StuListByPage;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * @author prinzeugen
 */
public class ShowStuByPageServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();
        HttpSession httpSession = req.getSession();

        int reqPageNum = Integer.parseInt(req.getParameter("pageNum"));
        StuListByPage stuListAndPage = service.getStudentListByPage(reqPageNum);
        ArrayList<Student> stuList = stuListAndPage.getStudentList();
        int totalPages = stuListAndPage.getTotalPages();
        int currentPageNum = stuListAndPage.getPageNum();

        httpSession.setAttribute("totalPages", totalPages);
        httpSession.setAttribute("currentPageNum", currentPageNum);
        httpSession.setAttribute("stuList", stuList);

        resp.sendRedirect("showAllStu.jsp");
    }
}
