package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Post;
import pojo.Staff;

import java.util.List;

public interface StaffMapper {
    public List<Staff> selectAll();
    public Post getPostName(int id);
    public List<String> getAllStaffName();
    Staff login(Staff staff);
    List<Staff> findStaff(@Param("staffName") String staffName,@Param("postId") Integer postId);
    void deleteStaff(Integer id);
    void addStaff(Staff staff);
}
