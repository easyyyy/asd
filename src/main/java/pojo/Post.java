package pojo;

public class Post {
    private String postID;
    private String postName;
    private int depID;
    private Department department=null;

    @Override
    public String toString() {
        return "Post{" +
                "postID=" + postID +
                ", postName='" + postName + '\'' +
                ", depID=" + depID +
                ", department=" + department +
                '}';
    }

    public String getPostID() {
        return postID;
    }

    public void setPostID(String postID) {
        this.postID = postID;
    }

    public String getPostName() {
        return postName;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    public int getDepID() {
        return depID;
    }

    public void setDepID(int depID) {
        this.depID = depID;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
}
