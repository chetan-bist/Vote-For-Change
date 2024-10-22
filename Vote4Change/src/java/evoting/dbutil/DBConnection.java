/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package evoting.dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Chetabist
 */
public class DBConnection {
    private static Connection conn=null;
    static
    {
        try
        {
            Class.forName("oracle.jdbc.OracleDriver");
            conn=DriverManager.getConnection("jdbc:oracle:thin:@//LAPTOP-GVLHK2B7:1521/XE", "evoting", "evoting");
            System.out.println("Driver loaded successfully!");
   
        }
        catch(ClassNotFoundException cnfe)
        {
            cnfe.printStackTrace();
        }
        catch(SQLException sqlex)
        {
            sqlex.printStackTrace();
        }     
    }
     public static Connection getConnection()
     {
            return conn;
     }
     public static void closeConnection()
     {
         try
         {
             if(conn!=null)
                 conn.close();
         }
         catch(SQLException sqlex)
         {
             sqlex.printStackTrace();
         }
     }
}
