package bugTest;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


public class BoardMgr {

    private DBConnectionMgr pool = null;

    public BoardMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }

    public boolean insertBoard(HttpServletRequest req) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;
        try {
          String uploadDir =this.getClass().getResource("").getPath();
        	uploadDir =	   uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"SmartProject_Sample/WebContent/data";
            MultipartRequest multi = new MultipartRequest(req, uploadDir, 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());

            con = pool.getConnection();
            String query = "insert into Board(title, detail, date, name)"
                    + "values(?, ?, now(),?)";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, multi.getParameter("title"));
            pstmt.setString(2, multi.getParameter("detail"));
            pstmt.setString(3, multi.getParameter("name"));
            int count = pstmt.executeUpdate();
            if (count == 1) result = true;

        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }

    public BoardBean getBoard(String no) {
        Connection con = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        BoardBean product = null;

        try {
            con = pool.getConnection();
            String query = "select * from Board where no=?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, no);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                product = new BoardBean();
                product.setNo(rs.getInt("no"));
                product.setTitle(rs.getString("title"));
                product.setDetail(rs.getString("detail"));
                product.setDate(rs.getString("date"));
                product.setName(rs.getString("name"));
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return product;

    }

    public boolean updateBoard(HttpServletRequest req) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;
        
        String uploadDir =this.getClass().getResource("").getPath();
     	uploadDir =	   uploadDir.substring(1,uploadDir.indexOf(".metadata"))+"SmartProject_Sample/WebContent/data";

        try {
            con = pool.getConnection();
            MultipartRequest multi = new MultipartRequest(req, uploadDir, 5 * 1024 * 1024, "UTF-8", new DefaultFileRenamePolicy());
                String query = "update Board set title =? , detail = ? where no = ?";
                
                pstmt = con.prepareStatement(query);
                pstmt.setString(1, multi.getParameter("name"));
                pstmt.setString(2, multi.getParameter("detail"));
            
            int count = pstmt.executeUpdate();
            if (count == 1) result = true;
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }

    

    public Vector getBoardList() throws SQLException {
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vProduct = new Vector();

        try {
            con = pool.getConnection();
            String query = "select * from Board order by no desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
            	BoardBean product = new BoardBean();
                product.setNo(rs.getInt("no"));
                product.setTitle(rs.getString("title"));
                product.setDetail(rs.getString("detail"));
                product.setDate(rs.getString("date"));
                product.setName(rs.getString("name"));
                vProduct.add(product);
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vProduct;
    }


    public boolean deleteBoard(String no) {
        Connection con = null;
        PreparedStatement pstmt = null;
        boolean result = false;

        try {
            con = pool.getConnection();
            String query = "delete from Board where no = ?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, no);
            int count = pstmt.executeUpdate();
            if (count == 1) result = true;
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt);
        }
        return result;
    }


}