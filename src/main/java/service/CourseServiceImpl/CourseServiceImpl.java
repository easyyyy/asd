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
}
