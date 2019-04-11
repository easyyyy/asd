package service;

import pojo.Class;
import pojo.Course;

import java.util.List;

public interface ClassService {
    public List<Class> selectAll();
    public Course getCourseName(int id);
    List<Class> findByCond(String className,String state);
    void addClass(Class class_);
    List<Class> findByState(String state);
    void updateClass(Class class_);
    void deleteClass(Integer id);
}
