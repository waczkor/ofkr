package Database;

import java.sql.*;
import java.util.Map;

public class Database_Handler {
    Connection con = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    
    //Connect to the database
    public Database_Handler(){
        try {
            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/ofkr";
            String user = "root";
            String password = "admin";
            
            if(con == null){
                Class.forName(driverName).newInstance();
                con = DriverManager.getConnection(url, user, password);
            };
        } catch (Exception ex) {
            System.out.print(ex);
        }
    }
    
   // Get a given user's information
   public ResultSet getUserData(String id){
        try {
            String getData = "SELECT userID, Password, Role, sessionID FROM users "
                                + "WHERE userID = ?";
            st = con.prepareStatement(getData);
            st.setString(1, id);
            rs = st.executeQuery();
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return rs;
   };
   
   //Set new SessionID for user
   public String setSessionID(String id, String sessionID){
        try {
            String getData = "UPDATE users SET sessionID = ? WHERE userID = ?";
            st = con.prepareStatement(getData);
            st.setString(1, sessionID);
            st.setString(2, id);
            st.executeUpdate();
        } catch (Exception ex) {
            return ex.getMessage();
        }
        return "success";
   };
}
