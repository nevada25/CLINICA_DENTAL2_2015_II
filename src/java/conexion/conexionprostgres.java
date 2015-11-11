
package conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class conexionprostgres {
public static Connection conectar(){
    Connection cn=null;
    
        try {
             Class.forName("org.postgresql.Driver");
            cn=DriverManager.getConnection("jdbc:postgresql://localhost:5432/dentista","postgres","root");
        } catch (Exception e) {
               System.out.println("ERROR CONEXION"+e.getMessage());
               e.printStackTrace();
        }
    
    return cn;
    }
       
    }
    

