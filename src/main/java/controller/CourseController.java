package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import pojo.Course;
import service.CourseService;

import java.util.List;

@Controller
@RequestMapping("")
public class CourseController {
    @Autowired
    CourseService courseService;

    @RequestMapping("AllCourse")
    public ModelAndView listCourse(){
        ModelAndView mav = new ModelAndView();
        List<Course> courses = courseService.selectAll();
        mav.addObject("courses",courses);
        mav.setViewName("course");
        return mav;
    }

}
