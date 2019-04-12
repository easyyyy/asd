package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.Course;
import service.CourseService;

import java.util.List;

@Controller
@RequestMapping("")
public class CourseController {
    @Autowired
    CourseService courseService;

    private Integer editId;

    @RequestMapping("AllCourse")
    public ModelAndView listCourse(){
        ModelAndView mav = new ModelAndView();
        List<Course> courses = courseService.selectAll();
        mav.addObject("courses",courses);
        mav.setViewName("course");
        return mav;
    }

    @RequestMapping("course/find")
    public ModelAndView find(String lessonName){
        if (lessonName == ""){
            return new ModelAndView("redirect:/AllCourse");
        }
        List<Course> courses = courseService.find(lessonName);
        ModelAndView mav = new ModelAndView();
        mav.addObject("courses",courses);
        mav.setViewName("course");
        return mav;
    }

    @RequestMapping("course/add")
    @ResponseBody
    public void addCourse(Course course){
//        System.out.println(course);
        courseService.add(course);
    }

    @RequestMapping("course/delete")
    public void deleteCourse(Integer id){
        courseService.delete(id);
    }

    @RequestMapping("course/getLessonTypeById")
    public void getLessonTypeById(Integer id){
        editId = id;
    }

    @RequestMapping("course/update")
    @ResponseBody
    public void updateCourse(Course course){
        course.setID(editId);
        System.out.println(editId);
        courseService.update(course);
    }

}
