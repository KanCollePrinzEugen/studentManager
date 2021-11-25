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
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();

        String stuId = req.getParameter("sno");
        String stuPassword = req.getParameter("pwd");

        int _stuId = Integer.parseInt(stuId);

        Student stu = service.login(_stuId, stuPassword);

        if (stu != null){
            HttpSession stuSession = req.getSession();
            stuSession.setAttribute("student", stu);
            resp.sendRedirect("main.jsp");
        } else{
            resp.sendRedirect("login.jsp");
        }
    }
}
