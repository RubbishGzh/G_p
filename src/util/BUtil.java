package util;
import java.sql.*;
public class BUtil {		// BUtil公用的数据库类
	private static String driver="com.mysql.jdbc.Driver"; //以下属性皆用static修饰
	private static String url="jdbc:mysql://localhost:3306/g_p";
	private static String user="root";
	private static String password="root";
	static PreparedStatement ps=null;
	static Connection con=null;
	static ResultSet rs=null;
	
	public static boolean idu_util(String sql,Object [] params){ // idu_util公用的增删改方法
		try{
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,password);
			ps=con.prepareStatement(sql);
			if(params!=null){//若增删改中有条件
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1,params[i]);
			}}
			int count=ps.executeUpdate();
					if(count>0) return true;
					else return false;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
	public static ResultSet sel_util(String sql,Object [] params){//sel_util公用的查询方法
		try{
			Class.forName(driver);
			con=DriverManager.getConnection(url,user,password);
			ps=con.prepareStatement(sql);
			
			if(params!=null){//如果查询中有条件
			for(int i=0;i<params.length;i++){
				ps.setObject(i+1,params[i]);
			}}
			
			rs=ps.executeQuery();
			return rs;
			
		}catch(Exception e){e.printStackTrace();}
		return null;
	}
	
	public static int count_util(String sql){//公用的查询总数的方法
		int count=-1;
		try{
			rs=BUtil.sel_util(sql, null);
			 if(rs.next()){
				count = rs.getInt(1);
			 }
		}catch(Exception e){e.printStackTrace();}
		return count;
	}
}
