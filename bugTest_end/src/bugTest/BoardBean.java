package bugTest;


public class BoardBean {

    private int no = 0;
    private String name = null;
    private String detail = null;
    private String date = null;
    private String title = null;

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
    
    public void setTitle(String title) {
    	this.title = title;
    }
    
    public String getTitle() {
    	return title;
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
    
    

}
