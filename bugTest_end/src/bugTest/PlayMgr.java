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

import bugTest.PlayBean;


public class PlayMgr {

    private DBConnectionMgr pool = null;

    public PlayMgr() {
        try {
            pool = DBConnectionMgr.getInstance();
        } catch (Exception e) {
            System.out.println("Error !!");
        }
    }
    
 
    public Vector getPlayList() throws SQLException { //목록 DB 
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        Vector vPlay = new Vector();

        try {
            con = pool.getConnection();
            String query = "select * from play_list order by play_no desc";
            stmt = con.createStatement();
            rs = stmt.executeQuery(query);

            while (rs.next()) {
                PlayBean play = new PlayBean();
                play.setNo(rs.getInt("play_no"));
                play.setName(rs.getString("play_name"));
                play.setImage(rs.getString("play_image"));
                play.setKate(rs.getString("play_kate"));
                play.setJsp(rs.getString("play_jsp"));
                vPlay.add(play);
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vPlay;
    }
    
    public Vector getPlay(String KeyWord) throws SQLException { //검색 DB
    	  Connection con = null;
          Statement stmt = null;
          ResultSet rs = null;
          PreparedStatement pstmt = null;
          Vector vPlay = new Vector();
        
        try {
            con = pool.getConnection();
            String query = "select * from play_list where play_name =?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, KeyWord);
            rs = pstmt.executeQuery();

            if (rs.next()) {
            	PlayBean play = new PlayBean();
                play.setNo(rs.getInt("play_no"));
                play.setName(rs.getString("play_name"));
                play.setImage(rs.getString("play_image"));
                play.setKate(rs.getString("play_kate"));
                play.setJsp(rs.getString("play_jsp"));
                vPlay.add(play);
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, pstmt, rs);
        }
        return vPlay;

    }

    public Vector getPlay_kate(String KeyWord) throws SQLException { //카테고리 DB 
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        PreparedStatement pstmt = null;
        Vector vPlay = new Vector();

        try {
        	con = pool.getConnection();
            String query = "select * from play_list where play_kate =?";
            pstmt = con.prepareStatement(query);
            pstmt.setString(1, KeyWord);
            rs = pstmt.executeQuery();
            
            while (rs.next()) {
                PlayBean play = new PlayBean();
                play.setNo(rs.getInt("play_no"));
                play.setName(rs.getString("play_name"));
                play.setImage(rs.getString("play_image"));
                play.setKate(rs.getString("play_kate"));
                play.setJsp(rs.getString("play_jsp"));
                vPlay.add(play);
            }
        } catch (Exception ex) {
            System.out.println("Exception :" + ex);
        } finally {
            pool.freeConnection(con, stmt, rs);
        }
        return vPlay;
    }
    
    
    


}