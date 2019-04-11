package service.JobServiceImpl;

import mapper.JobMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pojo.Job;
import service.JobService;

import java.util.List;

@Service
public class JobServiceImpl implements JobService {

    @Autowired
    JobMapper jobMapper;

    public List<Job> selectAll(){
        return jobMapper.selectAll();
    }
}
