package service.ClassServiceImpl;

import mapper.ClassMapper;
import mapper.DepartmentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Class;
import pojo.Course;
import service.ClassService;

import java.util.List;

@Service
public class ClassServiceImpl implements ClassService {
    @Autowired
    private ClassMapper classMapper;

    public List<Class> selectAll(){
        return classMapper.selectAll();
    }

    public Course getCourseName(int id){
        return classMapper.getCourseName(id);
    }

    @Override
    public List<Class> findByCond(String className, String state) {
        return classMapper.findByCond(className,state);
    }

    @Override
    public void addClass(Class class_) {
        classMapper.addClass(class_);
    }

    @Override
    public List<Class> findByState(String state) {
        return classMapper.findByState(state);
    }

    @Override
    public void updateClass(Class class_) {
        classMapper.updateClass(class_);
    }

    @Override
    public void deleteClass(Integer id) {
        classMapper.deleteClass(id);
    }
}
