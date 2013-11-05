package Server;

import Database.Database_Handler;
import javax.ejb.Stateless;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;
import java.sql.*;

@WebService(serviceName = "Server")
@Stateless()
public class Server {
    Database_Handler hand =new Database_Handler();
    
    /*
    * User log in: insert new sessionID into the databas
    */
    @WebMethod(operationName = "login")
    public String login(   @WebParam(name = "userID")       String id, 
                           @WebParam(name = "password")     String pwd, 
                           @WebParam(name = "sessionID")    String sessionID) 
    {
        String result = "error";
        
        //Get the User's login infos
        ResultSet data = hand.getUserData(id);
        
        //Check if the password is valid
        try{
            if(data.next()){
                if(data.getString(2).equals(pwd)){
                    //Set new SessionID
                    result = hand.setSessionID(id, sessionID);
                } else {
                    result = "Invalid ID or password!";
                };
            } else {
                result = "Invalid ID or password!";
            };
        } catch(Exception ex){
            result = ex.getMessage();
        }
        
        return result;
    }

    @WebMethod(operationName = "logout")
    public String logout(   @WebParam(name = "userID")      String id) 
    {
        String result = "error";
        //Check if the password is valid
        try{
            result = hand.setSessionID(id, null);
        } catch(Exception ex){
            result = ex.getMessage();
        }
        
        return result;
    }
}
