package service.StaffServiceImpl;

import mapper.StaffMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Post;
import pojo.Staff;
import service.StaffService;
import utils.MD5Util;

import java.util.List;

@Service
public class StaffServiceImpl implements StaffService {

    @Autowired
    private StaffMapper staffMapper;

    public List<Staff> selectAll(){
        return staffMapper.selectAll();
    }

    @Override
    public Post getPostName(int id) {
        return staffMapper.getPostName(id);
    }

    public Staff login(Staff staff) {
        String loginPwd = MD5Util.getMD5Value(staff.getLoginPwd());
        staff.setLoginPwd(loginPwd);
        return staffMapper.login(staff);
    }

    @Override
    public List<Staff> findStaff(String staffName, Integer postId) {
        return staffMapper.findStaff(staffName, postId);
    }

    @Override
    public void deleteStaff(Integer id) {
        staffMapper.deleteStaff(id);
    }
}
