package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Class;
import pojo.Course;

import java.util.List;

public interface ClassMapper {
    public List<Class> selectAll();
    public Course getCourseName(int id);
    List<Class> findByCond(@Param("className") String className,@Param("state") String state);
    List<Class> findByState(String state);
    void addClass(Class class_);
    void updateClass(Class class_);
    void deleteClass(Integer id);
}
