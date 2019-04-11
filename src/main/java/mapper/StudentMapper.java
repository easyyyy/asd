package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Class;
import pojo.Student;

import java.util.List;

public interface StudentMapper {
    public List<Student> selectAll();
    public Class getClassName(Integer id);
    public List<Student> findStudent(@Param("stuName") String stuName,@Param("id") Integer id);
    public List<Student> findStudentByStuName(@Param("stuName") String stuName);
    public List<Student> findStudentByClassId(@Param("id") Integer id);
    public Student StudentLast();
    public int addStudent(Student student);
    public int deleteStudent(String stuCode);
    public void updateStudent(Student student);
}
