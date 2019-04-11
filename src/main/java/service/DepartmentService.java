package service;

import pojo.Department;

import java.util.List;

public interface DepartmentService {

    public List<Department> selectAll();
    int selectCount();
    public List<Department> findDep(String depName);
    public void addDep(String depName);
    public Department findLast();
    public void deleteDep(int id);
    public void updateDep(Department department);
    public List<Department> selectByPage(int pageNum);

}
