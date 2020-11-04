package bugTest;


public class CommentBean {

    private String title_no = null;
    private int no = 0;
    private String name = null;
    private String detail = null;
    private String date = null;


    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
    
    public void setTitle_no(String title_no) {
    	this.title_no = title_no;
    }
    
    public String getTitle_no() {
    	return title_no;
    }
    
    

}
