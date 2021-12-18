package work.stu.servlet;

import work.stu.service.StudentService;
import work.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author prinzeugen
 */
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();
        req.setCharacterEncoding("utf-8");

        /*获取网页输入的学生信息*/
        String stuId = req.getParameter("sno");
        String stuName = req.getParameter("sname");
        String stuPassword = req.getParameter("pwd");
        String stuAge = req.getParameter("age");
        String stuAddress = req.getParameter("address");
        String verifyCode = req.getParameter("verifyCode");
        String sessionCacheData = (String) req.getSession().getAttribute("sessionCacheData");

        if(sessionCacheData == null){
            req.setAttribute("msg", "请不要重复提交");
            req.getRequestDispatcher("/register.jsp").forward(req, resp);
            return;
        }

        if(! sessionCacheData.equalsIgnoreCase(verifyCode)){
            //用户输入错误
            // * 存放request作用域
            req.setAttribute("msg", "验证码输入错误");
            // * 请求转发
            req.getRequestDispatcher("/register.jsp").forward(req, resp);

            return;
        }

        int _stuId = Integer.parseInt(stuId);
        int _stuAge = Integer.parseInt(stuAge);

        //从service返回注册信息
        int result = service.register(_stuId, stuName, stuPassword, _stuAge, stuAddress);

        if(result > 0){
            //注册成功，返回首页
            resp.sendRedirect("index.jsp");
        } else {
            //注册失败，刷新页面
            resp.sendRedirect("register.jsp");
        }
    }
}
