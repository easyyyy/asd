package controller;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import pojo.Department;
import pojo.Post;
import service.DepartmentService;
import service.PostService;

import java.util.List;

@Controller
@RequestMapping("")
public class PostController {
    @Autowired
    PostService postService;

    @Autowired
    DepartmentService departmentService;

    private String editPostId;

    @RequestMapping("/AllPost")
    public ModelAndView listPost(){
        ModelAndView mav = new ModelAndView();
        List<Post> posts = postService.selectAll();
        List<Department> departments = departmentService.selectAll();
        for (Post p:posts){
            p.setDepartment(postService.getDepartmentName(p.getDepID()));
        }
        mav.addObject("posts",posts);
        mav.addObject("departments",departments);
        mav.setViewName("post");
        return mav;
    }

    @RequestMapping("/post/find")
    public ModelAndView postFind(int depID,String postName){
        ModelAndView mav = new ModelAndView();
        List<Department> departments = departmentService.selectAll();
        if (postName == ""){
            List<Post> posts = postService.findByDepID(depID);
            for (Post p : posts) {
                p.setDepartment(postService.getDepartmentName(p.getDepID()));
            }
            mav.addObject("posts",posts);

        }else {
            List<Post> posts = postService.find(depID, postName);
            for (Post p : posts) {
                p.setDepartment(postService.getDepartmentName(p.getDepID()));
            }
            mav.addObject("posts",posts);

        }

        mav.addObject("departments",departments);
        mav.setViewName("post");
        return mav;
    }

    @RequestMapping(value = "/post/add",method = RequestMethod.POST)
    @ResponseBody
    public String addPost(Post post){

//        System.out.println(post);
        postService.addPost(post);

        return "ok";
    }

    @RequestMapping(value = "/post/delete")
    @ResponseBody
    public String deletePost(Integer postId){
//        System.out.println(postId);
        postService.deletePost(postId);
        return "ok";
    }

    @RequestMapping(value = "/post/getPostById")
    @ResponseBody
    public void getPostById(String postId){
        System.out.println(postId);
        this.editPostId = postId;
    }

    @RequestMapping(value = "/post/updatePost",method = RequestMethod.POST)
    @ResponseBody
    public void updatePost(Post post){

        post.setPostID(editPostId);
        System.out.println(post);
        postService.updatePost(post);
    }

}
