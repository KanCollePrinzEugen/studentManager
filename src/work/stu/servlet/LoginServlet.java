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
        String verifyCode = req.getParameter("verifyCode");
        String sessionCacheData = (String) req.getSession().getAttribute("sessionCacheData");

        if(sessionCacheData == null){
            req.setAttribute("msg", "请不要重复提交");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }

        if(! sessionCacheData.equalsIgnoreCase(verifyCode)){
            //用户输入错误
            // * 存放request作用域
            req.setAttribute("msg", "验证码输入错误");
            // * 请求转发
            req.getRequestDispatcher("/login.jsp").forward(req, resp);

            return;
        }

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
