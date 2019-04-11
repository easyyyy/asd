package pojo;

import java.util.Date;
import java.util.List;

public class Class {
    private int id;
    private String className;
    private int lessonTypeId;
    private String beginTime;
    private String endTime;
    private String state;
    private int totalCount;
    private int goCount;
    private int leaveCount;
    private Course course;
    private String remark;

    @Override
    public String toString() {
        return "Class{" +
                "id=" + id +
                ", className='" + className + '\'' +
                ", lessonTypeId=" + lessonTypeId +
                ", beginTime=" + beginTime +
                ", endTime=" + endTime +
                ", state='" + state + '\'' +
                ", totalCount=" + totalCount +
                ", goCount=" + goCount +
                ", leaveCount=" + leaveCount +
                ", course=" + course +
                '}';
    }

    public int getLeaveCount() {
        return leaveCount;
    }

    public void setLeaveCount(int leaveCount) {
        this.leaveCount = leaveCount;
    }

    public int getGoCount() {
        return goCount;
    }

    public void setGoCount(int goCount) {
        this.goCount = goCount;
    }

    public int getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getEndTime() {
        return endTime;
    }

    public void setEndTime(String endTime) {
        this.endTime = endTime;
    }

    public String getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(String beginTime) {
        this.beginTime = beginTime;
    }

    public String getClassName() {
        return className;
    }

    public void setClassName(String className) {
        this.className = className;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLessonTypeId() {
        return lessonTypeId;
    }

    public void setLessonTypeId(int lessonTypeId) {
        this.lessonTypeId = lessonTypeId;
    }


    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
