package service;

import pojo.Post;
import pojo.Staff;

import java.util.List;

public interface StaffService {
    public List<Staff> selectAll();
    public Post getPostName(int id);
    Staff login(Staff staff);
}
