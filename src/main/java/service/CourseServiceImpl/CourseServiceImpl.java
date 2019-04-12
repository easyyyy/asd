package service.CourseServiceImpl;

import mapper.CourseMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Course;
import service.CourseService;

import java.util.List;

@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    CourseMapper courseMapper;

    public List<Course> selectAll(){
        return courseMapper.selectAll();
    }

    @Override
    public List<Course> find(String lessonName) {
        return courseMapper.find(lessonName);
    }

    @Override
    public void add(Course course) {
        courseMapper.add(course);
    }

    @Override
    public void delete(Integer id) {
        courseMapper.delete(id);
    }

    @Override
    public void update(Course course) {
        courseMapper.update(course);
    }
}
