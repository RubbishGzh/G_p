package util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.*;
public class BaseDao {
		
		public static Connection getConnection(){
			String driver="com.mysql.jdbc.Driver";
			String url="jdbc:mysql://localhost:3306/g_p";
			String user="root";
			String password="root";
			Connection conn=null;
			
			try{
				Class.forName(driver);
				conn=DriverManager.getConnection(url,user,password);
				System.out.println("数据库连接成功！");
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("连接失败");
			}
			return conn;
		}
		
		public static void colseAll(Connection conn,Statement st,ResultSet rs){
			try{
				if(rs!=null){
					rs.close();
				}
				if(st!=null){
					st.close();
				}
				if(conn!=null){
					conn.close();
				}
			}catch(Exception e){
				
			}
			
		}
	}

