package service.StudentServiceImpl;

import mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Class;
import pojo.Student;
import service.StudentService;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentMapper studentMapper;

    public List<Student> selectAll(){
        return studentMapper.selectAll();
    }

    @Override
    public Class getClassName(int id) {
        return studentMapper.getClassName(id);
    }

    @Override
    public List<Student> findStudent(String stuName,Integer id) {

        return studentMapper.findStudent(stuName,id);
    }

    @Override
    public List<Student> findStudentByStuName(String stuName) {
        return studentMapper.findStudentByStuName(stuName);
    }

    @Override
    public List<Student> findStudentByClassId(Integer id) {
        return studentMapper.findStudentByClassId(id);
    }

    @Override
    public Student StudentLast(){

        return studentMapper.StudentLast();
    }

    @Override
    public void addStudent(Student student) {
        System.out.println(student);
        studentMapper.addStudent(student);
    }

    @Override
    public void deleteStudent(String stuCode) {
         studentMapper.deleteStudent(stuCode);
    }

    @Override
    public void updateStudent(Student student) {
        studentMapper.updateStudent(student);
    }
}
