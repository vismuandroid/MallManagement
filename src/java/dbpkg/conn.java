/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package dbpkg;
import java.sql.*;


public class conn{
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;

    public conn(){
            
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con= DriverManager.getConnection("jdbc:mysql://localhost/db_mall", "root", "root");

        } catch (Exception ex) {
            System.out.println(ex);
        }
}

    public boolean executeCommand(String str) {
        boolean bol = false;
        try {

            st = con.createStatement();
            st.executeUpdate(str);
            bol = true;

        } catch (Exception ex) {
            System.out.println(ex);
        }
        return bol;
    }


    public ResultSet selectCommand(String selQry) {
        try {
            st = con.createStatement();
            rs = st.executeQuery(selQry);
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return rs;
    }
}



