package controller;


import javafx.geometry.Pos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.Post;
import pojo.Staff;
import service.PostService;
import service.StaffService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("")
public class StaffController {
    @Autowired
    private StaffService staffService;

    @Autowired
    private PostService postService;

    @RequestMapping("/AllStaff")
    public ModelAndView listStaff(){
        ModelAndView mav = new ModelAndView();
        List<Staff> staffs = staffService.selectAll();
        for (Staff s:staffs){
            s.setPost(staffService.getPostName(s.getPostID()));
        }
        List<Post> postList = postService.selectAll();
        mav.addObject("postList",postList);
        mav.addObject("staffs",staffs);

        mav.setViewName("staff");
        return mav;
    }


    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String usercode,String password, Model model,
                        HttpSession session) {
// 通过账号和密码查询用户
        Staff staff = new Staff();
        staff.setLoginName(usercode);
        staff.setLoginPwd(password);
//        System.out.println(staff);
        Staff user = staffService.login(staff);
        if(user != null){
// 将用户对象添加到 Session
//            System.out.println(user);
            session.setAttribute("USER_SESSION", user);
// 跳转到主页面
            return "forward:/AllDepartment";//跳转到部门列表页面
        }
        model.addAttribute("msg", "账号或密码错误，请重新输入！");
// 返回到登录页面
        return "login";
    }
    /**
     * 退出登录
     */
    @RequestMapping(value = "/logout")
    public String logout(HttpSession session) {
// 清除 Session
        session.invalidate();
// 重定向到登录页面的跳转方法
        return "redirect:/login";
    }
    /**
     * 向用户登陆页面跳转
     */
//    @RequestMapping(value = "/login.action", method = RequestMethod.GET)
//    public String toLogin() {
//        return "login";
//    }
    @RequestMapping("/staff/find")
    @ResponseBody
    public ModelAndView find(String staffName,Integer postID,String time){
        System.out.println(staffName+","+postID+","+time);
        if (staffName.equals("") && postID == null && time.equals("")){
            return new ModelAndView("redirect:/AllStaff");
        }
        ModelAndView mav = new ModelAndView();
        List<Staff> staffs = staffService.findStaff(staffName,postID);
        List<Post> postList = postService.selectAll();
        mav.addObject("postList",postList);
        mav.addObject("staffs",staffs);
        mav.setViewName("staff");
        return mav;
    }

    @RequestMapping("/staff/delete")
    @ResponseBody
    public void deleteStaff(Integer id){
        System.out.println(id);
        staffService.deleteStaff(id);
    }

    @RequestMapping("/staff/add")
    @ResponseBody
    public void addStaff(Staff staff){
        System.out.println(staff);

    }
}
