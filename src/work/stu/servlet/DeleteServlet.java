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
public class DeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        StudentService service = new StudentServiceImpl();
        /*获取要删除的学生信息*/
        String stuId = req.getParameter("sno");
        String stuPassword = req.getParameter("pwd");
        int _stuId = Integer.parseInt(stuId);
        /*从service获取删除结果*/
        int result = service.delete(_stuId, stuPassword);
        /*删除成功返回首页，否则重新载入原网页*/
        if(result> 0){
            resp.sendRedirect("index.jsp");
        } else{
            resp.sendRedirect("delete.jsp");
        }
    }
}
