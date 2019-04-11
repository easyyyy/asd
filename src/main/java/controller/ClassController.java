package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.Class;
import pojo.Course;
import service.ClassService;
import service.CourseService;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("")
public class ClassController {

    @Autowired
    private ClassService classService;

    @Autowired
    private CourseService courseService;

    private Integer editId;


    @RequestMapping("/AllClass")
    public ModelAndView listClass(){
        ModelAndView mav = new ModelAndView();
        List<Class> classes = classService.selectAll();
//        List<Course> course = classService.getCourseName(2);
        for (Class c:classes){
            c.setCourse(classService.getCourseName(c.getLessonTypeId()));
        }
        List<Course> courseList = courseService.selectAll();
        mav.addObject("classes",classes);
        mav.addObject("courseList",courseList);
        mav.setViewName("class");
//        System.out.println(course.get(0).getLessonName());
        return mav;
    }

    @RequestMapping("/class/find")
    @ResponseBody
    public ModelAndView find(String className, String state, String time){
        ModelAndView mav = new ModelAndView();
        if (className=="" && time==""){
            System.out.println("error");
            List<Class> classes = classService.findByState(state);
            List<Course> courseList = courseService.selectAll();
            for (Class c:classes){
                c.setCourse(classService.getCourseName(c.getLessonTypeId()));
            }
            mav.addObject("classes",classes);
            mav.addObject("courseList",courseList);
            mav.setViewName("class");
            //        System.out.println(course.get(0).getLessonName());
            return mav;

        }else {
//        System.out.println(className+state+time);
            List<Class> classes = classService.findByCond(className,state);
            List<Course> courseList = courseService.selectAll();
            for (Class c:classes){
                c.setCourse(classService.getCourseName(c.getLessonTypeId()));
            }
            mav.addObject("classes",classes);
            mav.addObject("courseList",courseList);
            mav.setViewName("class");
    //        System.out.println(course.get(0).getLessonName());
            return mav;
        }
    }

    @RequestMapping("/class/add")
    @ResponseBody
    public void addClass(Class class_){

        System.out.println(class_);
        classService.addClass(class_);
    }

    @RequestMapping("/class/getClassId")
    @ResponseBody
    public void getClassId(Integer id) {

        System.out.println(id);
        editId = id;
    }

    @RequestMapping("/class/update")
    @ResponseBody
    public void updateClass(Class class_) {
        class_.setId(editId);
        System.out.println(class_);
        classService.updateClass(class_);

    }

    @RequestMapping("/class/delete")
    @ResponseBody
    public void deleteClass(Integer id){
        classService.deleteClass(id);
    }
}
