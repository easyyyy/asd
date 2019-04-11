package controller;


import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import pojo.Class;
import pojo.Staff;
import pojo.Student;
import service.ClassService;
import service.StaffService;
import service.StudentService;

import javax.sound.midi.Soundbank;
import java.lang.Integer;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    StaffService staffService;
    @Autowired
    ClassService classService;

    private String updateId;

    @RequestMapping("/AllStudent")
    public ModelAndView listStudent(){
        ModelAndView mav = new ModelAndView();
        List<Student> students = studentService.selectAll();
        List<Staff> staff = staffService.selectAll();
        List<Class> classes = classService.selectAll();
        for (Student s:students){
            s.setClass_(studentService.getClassName(s.getClassid()));
        }
        mav.addObject("students",students);
        mav.addObject("staffs",staff);
        mav.addObject("classes",classes);
        mav.setViewName("student");
        return mav;
    }

    @RequestMapping("student/find")
    public ModelAndView find(String stuName,Integer classid){

        ModelAndView mav = new ModelAndView();


        List<Student> students = studentService.findStudent(stuName,classid);


        if (classid==null && stuName != ""){
            students = studentService.findStudentByStuName(stuName);
        }
        if(stuName == "" && classid != null){
            System.out.println(classid);
            students = studentService.findStudentByClassId(classid);
        }
        if(stuName=="" && classid==null){
            ModelAndView mavs = new ModelAndView("redirect:/AllStudent");
            return mavs;
        }


        for (Student s:students){
            s.setClass_(studentService.getClassName(s.getClassid()));
        }
        System.out.println(students);
        mav.addObject("students",students);
        mav.setViewName("student");
        return mav;

    }



    @RequestMapping(value = "/addStudent" , method = RequestMethod.POST)
    @ResponseBody
    public Map<String,String> sendString(Student student){    //user是与页面参数对应的JavaBean
        //map集合用来存放返回值

//        System.out.println(sdf.parse(beginTime2));
        Map<String,String> map = new HashMap<String, String>();
        if(student != null) {
            map.put("result","提交成功");
            map.put("stu",student.getStuName());
            System.out.println(student.getStuName());

            Student studentLast = studentService.StudentLast();
            int newstudentCount = studentLast.getId() + 1;
            student.setId(newstudentCount);
            student.setStuCode(""+newstudentCount);
            System.out.println(student);
            studentService.addStudent(student);


        }else {
            map.put("result","提交失败");
        }
        return map;
    }


    @RequestMapping(value = "/student/delete",method = RequestMethod.POST)
    @ResponseBody
    public String deleteStu(@RequestParam("id") String stuCode){
        System.out.println(stuCode);
        studentService.deleteStudent(stuCode);
        return "ok";
    }

    @RequestMapping(value = "/student/edit",method = RequestMethod.POST)
    @ResponseBody
    public String editStu(@RequestParam("id") String stuCode){
        System.out.println(stuCode);
        updateId = stuCode;
        return "ok";
    }


    @RequestMapping(value = "/student/update",method = RequestMethod.POST)
    @ResponseBody
    public String updateStu(Student student){

        student.setStuCode(updateId);

        System.out.println(student);
        studentService.updateStudent(student);
        return "ok";
    }




}
