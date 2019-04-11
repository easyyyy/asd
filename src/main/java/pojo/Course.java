package pojo;

public class Course {
    private int ID;
    private String lessonName;
    private double lessoncost;
    private int totalTime;
    private String remark;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public double getLessoncost() {
        return lessoncost;
    }

    public void setLessoncost(double lessoncost) {
        this.lessoncost = lessoncost;
    }

    public int getTotalTime() {
        return totalTime;
    }

    public void setTotalTime(int totalTime) {
        this.totalTime = totalTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }
}
