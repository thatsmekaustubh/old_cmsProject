package cms.DBConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.PreparedStatement;

public class DBConnect {
	String dbName="b201012085";
	String dbUser="root";
	String dbPass="java";
	String url= "jdbc:mysql://localhost:3306/"+dbName+"?useUnicode=true&" +
			"characterEncoding=utf-8";
	public DBConnect(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
		}catch(ClassNotFoundException ce){
			System.out.println("Driver Connect Error : "+ce.getMessage());
		}
	}
	public Connection getConnection(){
		Connection conn = null;
		try{
			conn=DriverManager.getConnection(url,dbUser,dbPass);
		}catch(SQLException se){
			System.out.println("Connection Error : "+se.getMessage());
		}
		return conn;
	}
	public void disconnect(PreparedStatement pstmt, Connection conn){
		try{
			if(pstmt!=null){
				pstmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		}catch(SQLException se){
			
		}
	}
	public void disconnect(ResultSet rs, PreparedStatement pstmt, Connection conn){
		try{
			if(rs!=null){
				rs.close();
			}
			if(pstmt!=null){
				pstmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		}catch(SQLException se){
			
		}
	}
}
