package pojo;

import java.util.Date;

public class Job {
    private int id;
    private String stuCode;
    private String stuName;
    private String gender;
    private int classid;
    private int jobcomid;
    private String location;
    private String activeCode;
    private int jobState;
    private Date jobTime;
    private String remark;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getStuCode() {
        return stuCode;
    }

    public void setStuCode(String stuCode) {
        this.stuCode = stuCode;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public int getClassid() {
        return classid;
    }

    public void setClassid(int classid) {
        this.classid = classid;
    }

    public int getJobcomid() {
        return jobcomid;
    }

    public void setJobcomid(int jobcomid) {
        this.jobcomid = jobcomid;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getActiveCode() {
        return activeCode;
    }

    public void setActiveCode(String activeCode) {
        this.activeCode = activeCode;
    }

    public int getJobState() {
        return jobState;
    }

    public void setJobState(int jobState) {
        this.jobState = jobState;
    }

    public Date getJobTime() {
        return jobTime;
    }

    public void setJobTime(Date jobTime) {
        this.jobTime = jobTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
