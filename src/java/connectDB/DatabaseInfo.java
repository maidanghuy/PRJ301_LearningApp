/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package connectDB;

/**
 *
 * @author macbookpro
 */
public interface DatabaseInfo {
    final public static String DRIVERNAME = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    final public static String DBNAMESEVER = "QUANLE";
    final public static String DBNAME = "ElearningDB";
    final public static String DBURL = "jdbc:sqlserver://"
            + DBNAMESEVER
            + ";databaseName="
            + DBNAME
            + ";encrypt=false;trustServerCertificate=true";
    final public static String DBUSER = "sa";
    final public static String DBPASS = "Lequan322004.";
    
}
