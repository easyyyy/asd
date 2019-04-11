package service;

import org.apache.ibatis.annotations.Param;
import pojo.Class;
import pojo.Student;

import java.util.List;

public interface StudentService {
    public List<Student> selectAll();
    public Class getClassName(int id);
    public List<Student> findStudent(String stuName,Integer id);
    public List<Student> findStudentByStuName(String stuName);
    public List<Student> findStudentByClassId(Integer id);
    public Student StudentLast();
    public void addStudent(Student student);
    public void deleteStudent(String stuCode);
    public void updateStudent(Student student);
}
