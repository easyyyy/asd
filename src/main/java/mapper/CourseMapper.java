package mapper;

import pojo.Course;

import java.util.List;

public interface CourseMapper {
    public List<Course> selectAll();
    List<Course> find(String lessonName);
    void add(Course course);
    void delete(Integer id);
    void update(Course course);
}
