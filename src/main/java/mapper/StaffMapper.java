package mapper;

import pojo.Post;
import pojo.Staff;

import java.util.List;

public interface StaffMapper {
    public List<Staff> selectAll();
    public Post getPostName(int id);
    public List<String> getAllStaffName();
    Staff login(Staff staff);
}
