package mapper;

import org.apache.ibatis.annotations.Param;
import pojo.Department;

import java.util.List;

public interface DepartmentMapper {
    public List<Department> selectAll();

    int selectCount();

    public List<Department> selectByPage(@Param("page") Integer pageNum);

    public List<Department> findDep(String depName);

    public String addDep(String depName);

    public Department findLast();

    public int deleteDep(int id);
    public void updateDep(Department department);
}
