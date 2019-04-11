package service;


import pojo.Department;
import pojo.Post;

import java.util.List;

public interface PostService {
    List<Post> selectAll();
    Department getDepartmentName(int id);
    List<Post> find(int depID,String postName);
    List<Post> findByDepID( int depID);

    void addPost(Post post);
    void deletePost(Integer postId);
    void updatePost(Post post);
}
