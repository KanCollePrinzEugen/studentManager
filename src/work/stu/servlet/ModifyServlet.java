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
public class ModifyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();
        req.setCharacterEncoding("utf-8");
        String stuId = req.getParameter("sno");
        String stuName = req.getParameter("sname");
        String stuPassword = req.getParameter("pwd");
        String stuAge = req.getParameter("age");
        String stuAddress = req.getParameter("address");

        int _stuId = Integer.parseInt(stuId);
        int _stuAge = Integer.parseInt(stuAge);

        int result = service.modify(_stuId, stuName, stuPassword, _stuAge, stuAddress);

        if(result > 0){
            resp.sendRedirect("index.jsp");
        } else {
            resp.sendRedirect("modify.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }
}
