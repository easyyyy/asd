package controller;

import com.fasterxml.jackson.annotation.JsonTypeInfo;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.ibatis.annotations.Param;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.Department;
import service.DepartmentService;

import java.util.List;

@Controller
@RequestMapping("")
public class DepartmentController {
    @Autowired
    DepartmentService departmentService;

    private Integer page=1;
    private Integer pageNum = 0;



    private int editId;

    @RequestMapping("/AllDepartment")
    public ModelAndView listDepartment(Integer page){

        if (page!=null){
            this.page = page;
            if (this.page==1){
                this.pageNum = 0;
            }
            else {
                this.pageNum = (page-1)*10;
            }
        }else {
            this.pageNum = (this.page-1)*10;
        }

//        System.out.println(page);
        ModelAndView mav = new ModelAndView();
        List<Department> departments = departmentService.selectByPage(this.pageNum);
        int countPage = (departmentService.selectCount()/10)+1;
//        System.out.println(countPage);
        mav.addObject("departments",departments);
        mav.addObject("page",this.page);
        mav.addObject("countPage",countPage);
        mav.setViewName("dep");
        return mav;
    }

    @RequestMapping("/department/find")
    public ModelAndView findDep(String depName){
        ModelAndView mav = new ModelAndView();
        if (depName == ""){
//            List<Department> departments =  departmentService.selectAll();
//            mav.addObject("departments",departments);
//            mav.setViewName("dep");
//            return mav;
            return new ModelAndView("redirect:/AllDepartment");
        }
//        System.out.println(depName);
        List<Department> departments =  departmentService.findDep(depName);
        mav.addObject("departments",departments);
        mav.setViewName("dep");
        return mav;
    }

    @RequestMapping("/addDep")
    @ResponseBody
    public String addDep(@RequestParam("depname") String depName){

        departmentService.addDep(depName);
        return "ok";
    }

    @RequestMapping(value = "/department/delete",method = RequestMethod.POST)
    @ResponseBody
    public String deleteDep(int id){

        departmentService.deleteDep(id);
        return "ok";
    }

    @RequestMapping(value = "/department/edit",method = RequestMethod.POST)
    @ResponseBody
    public String editDep(int id){
        editId = id;
        return "ok";
    }

    @RequestMapping(value = "/department/update",method = RequestMethod.POST)
    @ResponseBody
    public String updateDep(Department department){
        department.setId(editId);

        departmentService.updateDep(department);
        return "ok";
    }


}
