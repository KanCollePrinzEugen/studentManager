package work.stu.dao;

import work.stu.po.Student;
import work.stu.utils.DBTools;
import work.stu.vo.StuListByPage;

import java.sql.*;
import java.util.ArrayList;

/**
 * @author prinzeugen
 */
public class StuDaoImpl implements StuDao{
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    @Override
    public Student getStudent(int stuId, String stuPassword) {
        try{
            /*连接数据库*/
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentManager?useUnicode=true&characterEncoding=utf8&useSSL=true&serverTimezone=GMT","root","1145141919810");
            stmt = conn.createStatement();
            /*执行查询语句*/
            String sqlSt = "SELECT * FROM student WHERE sno ="+stuId+" AND pwd ='"+stuPassword+"'";
            System.out.println(sqlSt);
            rs = stmt.executeQuery(sqlSt);
            /*返回查询结果并包装为学生类*/
            boolean result = rs.next();
            if(result){
                int _stuId = rs.getInt(1);
                String _stuName = rs.getString(2);
                String _stuPassword = rs.getString(3);
                int _stuAge = rs.getInt(4);
                String _stuAddress = rs.getString(5);

                Student student = new Student(_stuId, _stuName, _stuPassword, _stuAge, _stuAddress);
                return student;
            } else {
                return null;
            }
        } catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public ArrayList<Student> getAllStudent() {
        try{
            /*连接数据库*/
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentManager?useUnicode=true&characterEncoding=utf8&useSSL=true&serverTimezone=GMT","root","1145141919810");
            stmt = conn.createStatement();
            /*执行查询语句*/
            String sqlSt = "SELECT * FROM student";
            rs = stmt.executeQuery(sqlSt);
            System.out.println(sqlSt);
            /*包装学生类*/
            ArrayList<Student> stuList = new ArrayList();
            if (!rs.next()) {
                return null;
            }
            do{
                int _stuId = rs.getInt(1);
                String _stuName = rs.getString(2);
                String _stuPassword = rs.getString(3);
                int _stuAge = rs.getInt(4);
                String _stuAddress = rs.getString(5);

                Student student = new Student(_stuId, _stuName, _stuPassword, _stuAge, _stuAddress);
                System.out.println(student);
                stuList.add(student);
            }while(rs.next());
            return stuList;
        } catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }

        return null;
    }

    @Override
    public int addStudent(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress) {
        try{
            /*执行添加语句*/
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentManager?useUnicode=true&characterEncoding=utf8&useSSL=true&serverTimezone=GMT","root","1145141919810");
            stmt = conn.createStatement();
            String sqlSt = "INSERT INTO student VALUES("+stuId+", '"+stuName+"', '"+stuPassword+"', "+stuAge+", '"+stuAddress+"')";
            System.out.println(sqlSt);
            return stmt.executeUpdate(sqlSt);
        } catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int deleteStudent(int stuId, String stuPassword) {
        try {
            /*执行删除语句*/
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentManager?useUnicode=true&characterEncoding=utf8&useSSL=true&serverTimezone=GMT","root","1145141919810");
            stmt = conn.createStatement();
            String sqlSt = "DELETE FROM student WHERE sno ="+stuId+" AND pwd = '"+stuPassword+"'";
            return stmt.executeUpdate(sqlSt);
        } catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public int modifyStudent(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress) {
        try{
            /*执行更新语句*/
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentManager?useUnicode=true&characterEncoding=utf8&useSSL=true&serverTimezone=GMT","root","1145141919810");
            stmt = conn.createStatement();
            String sqlSt = "UPDATE student SET sname = '"+stuName+"', pwd = '"+stuPassword+"', age = "+stuAge+", address = '"+stuAddress+"' WHERE sno = "+stuId+"";
            System.out.println(sqlSt);
            return stmt.executeUpdate(sqlSt);
        } catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return 0;
    }

    @Override
    public StuListByPage getStudentByPage(int pageNum) {
        try {
            /*连接数据库*/
            Class.forName(DBTools.DRIVER_CLASS);
            conn = DriverManager.getConnection(DBTools.CONNECT_STR, DBTools.USER, DBTools.PASSWORD);
            stmt = conn.createStatement();
            /*执行查询语句
            * 先获取表中信息数*/
            String sqlSt = "SELECT COUNT(*) FROM student";
            rs = stmt.executeQuery(sqlSt);
            rs.next();
            /*定义一个页可以显示的信息条数的值(pageSize)
            * 和数据库信息行数算出表格的页面数*/
            int pageSize = 5;
            int totalRows = rs.getInt(1);
            int totalPages;
            if (totalRows % pageSize == 0){
                totalPages = totalRows / pageSize;
            }else{
                totalPages = totalRows / pageSize + 1;
            }
            /*应对输入的非法位置*/
            if (pageNum < 1){
                pageNum = 1;
            }
            if (pageNum > totalPages){
                pageNum = totalPages;
            }
            int startPosition = (pageNum - 1) * pageSize;
            /*执行查询语句，获取制定位置的学生信息*/
            sqlSt = "SELECT * FROM student LIMIT " + startPosition + "," + pageSize;
            rs = stmt.executeQuery(sqlSt);
            /*包装学生类*/
            ArrayList<Student> getStudents = new ArrayList<>();
            do{
                int _stuId = rs.getInt(1);
                String _stuName = rs.getString(2);
                String _stuPassword = rs.getString(3);
                int _stuAge = rs.getInt(4);
                String _stuAddress = rs.getString(5);

                Student student = new Student(_stuId, _stuName, _stuPassword, _stuAge, _stuAddress);
                System.out.println(student);
                getStudents.add(student);
            }while(rs.next());
//            将学生列表、页面总数和当前位置包装为单独的一个类
            StuListByPage studentList = new StuListByPage(getStudents, pageNum, totalPages);
            return studentList;
        } catch (ClassNotFoundException e){
            e.printStackTrace();
        } catch (SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
