package dao;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class DungChung {
	public Connection cn;
	public void KetNoi () throws Exception {
		//b1: xac dinh hqtcsdl
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		//b2 ket noi 
		String url="jdbc:sqlserver://ADMIN\\SQLEXPRESS:1433;databaseName=QlSach; user=sa; password=123";
		cn= (Connection) DriverManager.getConnection(url);
		System.out.println("Da ket noi");
		
	}

}
