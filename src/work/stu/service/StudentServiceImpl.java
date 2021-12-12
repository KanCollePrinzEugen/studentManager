package work.stu.service;

import work.stu.dao.StuDao;
import work.stu.dao.StuDaoImpl;
import work.stu.po.Student;
import work.stu.vo.StuListByPage;

import java.util.ArrayList;

/**
 * @author prinzeugen
 */
public class StudentServiceImpl implements StudentService {
    StuDao dao = new StuDaoImpl();
    @Override
    public int register(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress) {
        return dao.addStudent(stuId, stuName, stuPassword, stuAge, stuAddress);
    }

    @Override
    public int modify(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress) {
        return dao.modifyStudent(stuId, stuName, stuPassword, stuAge, stuAddress);
    }

    /**
     * 删除学生信息
     * @param stuId 学生学号
     * @param stuPassword 学生密码
     * @return
     */
    @Override
    public int delete(int stuId, String stuPassword) {
        return dao.deleteStudent(stuId, stuPassword);
    }

    @Override
    public Student login(int stuId, String stuPassword) {
        return dao.getStudent(stuId, stuPassword);
    }

    @Override
    public ArrayList<Student> getAllStudent() {
        return dao.getAllStudent();
    }

    @Override
    public StuListByPage getStudentListByPage(int pageNum) {
        return dao.getStudentByPage(pageNum);
    }


}
