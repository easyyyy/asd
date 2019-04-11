package service.DepartmentServiceImpl;

import mapper.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Department;
import service.DepartmentService;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {
    @Autowired
    DepartmentMapper departmentMapper;

    public List<Department> selectAll(){
        return departmentMapper.selectAll();
    }

    @Override
    public int selectCount() {
        return departmentMapper.selectCount();
    }

    @Override
    public List<Department> findDep(String depName) {
        return departmentMapper.findDep(depName);
    }

    @Override
    public void addDep(String depName) {
        departmentMapper.addDep(depName);
    }

    @Override
    public Department findLast() {
        return departmentMapper.findLast();
    }

    @Override
    public void deleteDep(int id) {
        departmentMapper.deleteDep(id);
    }

    @Override
    public void updateDep(Department department) {
        departmentMapper.updateDep(department);
    }


    @Override
    public List<Department> selectByPage(int pageNum) {
        return departmentMapper.selectByPage(pageNum);
    }


}
