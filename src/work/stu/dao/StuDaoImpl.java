package work.stu.dao;

import work.stu.po.Student;

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
            //"UPDATE student SET sname = '"+stuName+"', pwd = '"+stuPassword+"', age = '"+stuAge+"', address = '"+stuAddress+"' WHERE sno = "+stuId+"";
            System.out.println(sqlSt);
            return stmt.executeUpdate(sqlSt);
        } catch(ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return 0;
    }
}
