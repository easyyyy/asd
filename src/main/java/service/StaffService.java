package service;

import org.apache.ibatis.annotations.Param;
import pojo.Post;
import pojo.Staff;

import java.util.List;

public interface StaffService {
    public List<Staff> selectAll();
    public Post getPostName(int id);
    Staff login(Staff staff);
    List<Staff> findStaff(String staffName,Integer postId);
    void deleteStaff(Integer id);
}
