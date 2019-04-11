package service.PostServiceImpl;

import mapper.PostMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Department;
import pojo.Post;
import service.PostService;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    PostMapper postMapper;

    public List<Post> selectAll(){
        return postMapper.selectAll();
    }

    @Override
    public Department getDepartmentName(int id) {
        return postMapper.getDepartmentName(id);
    }

    @Override
    public List<Post> find(int depID, String postName) {
        return postMapper.find(depID,postName);
    }

    @Override
    public List<Post> findByDepID(int depID) {
        return postMapper.findByDepID(depID);
    }

    @Override
    public void addPost(Post post) {
        postMapper.addPost(post);
    }

    @Override
    public void deletePost(Integer postId) {
        postMapper.deletePost(postId);
    }

    @Override
    public void updatePost(Post post) {
        postMapper.updatePost(post);
    }
}
