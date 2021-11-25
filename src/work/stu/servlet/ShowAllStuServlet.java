package work.stu.servlet;

import work.stu.po.Student;
import work.stu.service.StudentService;
import work.stu.service.StudentServiceImpl;

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
public class ShowAllStuServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();
        req.getParameter("action");
        /*获取学生列表*/
        ArrayList<Student> allStu = service.getAllStudent();
        /*设置学生列表属性*/
        HttpSession allStuSession = req.getSession();
        allStuSession.setAttribute("allStudent", allStu);
        /*处理request请求*/
        req.getRequestDispatcher("showAllStu.jsp").forward(req,resp);
        /*重定向网页*/
        resp.sendRedirect("showAllStu.jsp");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
