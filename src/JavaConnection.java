import java.sql.*;
import javax.swing.JOptionPane;

public class JavaConnection {
    Connection con;
    public static Connection connectDb(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
       Connection con=DriverManager.getConnection("jdbc:mysql://localhost/libmanagement","root","");
             return con;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null,e);
            return null;
        }
    }
}
