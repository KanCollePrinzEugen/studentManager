package work.stu.dao;

import work.stu.po.Student;
import work.stu.vo.StuListByPage;

import java.util.ArrayList;

/**
 * @author prinzeugen
 */
public interface StuDao {

    /**
     * 根据输入的学生学号和密码获取学生信息，打包成学生类返回
     * @param stuId         输入的查询学生学号
     * @param stuPassword   输入的学生密码
     * @return              获取的学生信息打包的学生类
     */
    public Student getStudent(int stuId, String stuPassword);

    /**
     *获取所有学生信息，打包成学生类列表返回
     * @return              获取所有学生信息打包的学生类列表
     */
    public ArrayList<Student> getAllStudent();

    /**
     * 添加一个学生信息
     * @param stuId         添加的学生学号
     * @param studentName   添加的学生姓名
     * @param stuPassword   添加的学生密码
     * @param stuAge        添加的学生年龄
     * @param stuAddress    添加的学生地址
     * @return  返回1添加成功，返回0添加失败
     */
    public int addStudent(int stuId, String studentName, String stuPassword, int stuAge, String stuAddress);

    /**
     * 删除一个学生信息
     * @param stuId         提交删除的学生学号
     * @param stuPassword   提交删除的学生密码
     * @return  返回1删除成功，返回0删除失败
     */
    public int deleteStudent(int stuId, String stuPassword);

    /**
     * 修改一个学生信息
     * @param stuId         提交修改的学生学号（仅作为查询索引，学生学号为主键不可修改）
     * @param studentName   提交修改的学生姓名
     * @param stuPassword   提交修改的学生密码
     * @param stuAge        提交修改的学生年龄
     * @param stuAddress    提交修改的学生地址
     * @return  返回1修改成功，返回0修改失败
     */
    public int modifyStudent(int stuId, String studentName, String stuPassword, int stuAge, String stuAddress);

    /**
     * 按页获取学生信息
     * @param pageNum       提交查询的页号
     * @return  获取该页学生信息打包的学生类列表
     */
    public StuListByPage getStudentByPage(int pageNum);
}
