package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Department;
import pojo.Post;

import java.util.List;

public interface PostMapper {
    public List<Post> selectAll();
    public Department getDepartmentName(int id);
    public List<Post> find(@Param("depID") int depID,@Param("postName") String postName);
    public List<Post> findByDepID(@Param("depID") int depID);
    public int addPost(Post post);
    int deletePost(Integer postId);
    int updatePost(Post post);
}
