package work.stu.service;

import work.stu.po.Student;
import work.stu.vo.StuListByPage;

import java.util.ArrayList;

/**
 * @author 何逸哲
 */
public interface StudentService {

    public int register(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress);

    public int modify(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress);

    public int delete(int stuId, String stuPassword);

    public Student login(int stuId, String stuPassword);

    public ArrayList<Student> getAllStudent();

    public StuListByPage getStudentListByPage(int pageNum);
}
