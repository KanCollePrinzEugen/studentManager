package work.stu.po;

/**
 * 从数据库返回显示的学生类
 * @author prinzeugen
 */
public class Student {
    private int stuId;
    private String stuName;
    private String stuPassword;
    private int stuAge;
    private String stuAddress;

    public Student(int stuId, String stuName, String stuPassword, int stuAge, String stuAddress){
        this.stuId = stuId;
        this.stuName = stuName;
        this.stuPassword = stuPassword;
        this.stuAge = stuAge;
        this.stuAddress = stuAddress;
    }

    public Student() {
    }

    public String getStuName() {
        return stuName;
    }

    public int getStuAge() {
        return stuAge;
    }

    public String getStuAddress() {
        return stuAddress;
    }

    @Override
    public String toString() {
        return "Student{" +
                "学号=" + stuId +
                ", 姓名='" + stuName + '\'' +
                ", 密码='" + stuPassword + '\'' +
                ", 年龄=" + stuAge +
                ", 地址='" + stuAddress + '\'' +
                '}';
    }
}
