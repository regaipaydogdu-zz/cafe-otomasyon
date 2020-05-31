/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Regaip Aydoğdu
 */
public class User {
    public static int user_id =1;
    public static String username =null;
    public static String name=null;
    public static String surname=null;
    public static String role=null;
    public static int auth=0;
    
    public static String GetUser() 
    { 
        
        if (username != null) 
        { 
            return name+" "+surname;
        } 
        return null; 
    } 
    public static int GetUserID(){
        if (username != null) 
        { 
            return user_id; 
        } 
        return 0;
        
    }
    

}
