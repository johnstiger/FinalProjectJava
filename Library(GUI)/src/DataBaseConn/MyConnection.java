/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DataBaseConn;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *

 */
public class MyConnection {
     public static Connection getMyConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/librarydatabase","root","");
            System.out.println("Success");
        }catch(Exception err){
            System.out.println("Got an exception");
            err.printStackTrace();
        }
        return con;
    }
}
