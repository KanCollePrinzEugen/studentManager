package work.stu.servlet;

import work.stu.service.StudentService;
import work.stu.service.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 查询学生信息的servlet
 * @author prinzeugen
 */
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();

        /*获取网页输入的学生信息*/
        String stuId = req.getParameter("sno");
        String stuPassword = req.getParameter("pwd");

        int _stuId = Integer.parseInt(stuId);

//        Student student = service.modify(_stuId, stuPassword);

//        if(student != null){
//            resp.sendRedirect("modify.jsp");
//        } else{
//            resp.sendRedirect("search.jsp");
//        }
    }
}
