package work.stu.vo;

import work.stu.po.Student;

import java.util.ArrayList;

/**
 * @author prinzeugen
 */
public class StuListByPage {
    private ArrayList<Student> studentList;
    private int pageNum;
    private int totalPages;

    public StuListByPage(ArrayList<Student> studentList, int pageNum, int totalPages) {
        this.studentList = studentList;
        this.pageNum = pageNum;
        this.totalPages = totalPages;
    }

    public ArrayList<Student> getStudentList() {
        return studentList;
    }

    public int getPageNum() {
        return pageNum;
    }

    public int getTotalPages() {
        return totalPages;
    }
}
