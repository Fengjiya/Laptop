package test;

import java.sql.*;


public class Test
{
	public static void main ( String[] args) throws SQLException
	{
		connDb();
		//System.out.println(System.getProperties().get("java.library.path"));
	}
	
	public static void  connDb() throws SQLException
	{
		Connection conn = null;
		try
		{
			 Class.forName("com.mysql.jdbc.Driver");// 加载Mysql数据驱动  
	         conn = DriverManager.getConnection( "jdbc:mysql://localhost:3306/test", "root", "123456");// 创建数据连接  
			System.out.println("Database load Successfully!");
		}
		catch( ClassNotFoundException e )
		{
			System.out.println("Unable to load Database	! ");
			e.printStackTrace();
		}
		catch( SQLException e )
		{
			System.out.println("Unable to load Database	! ");
			e.printStackTrace();
		}
		finally
		{
			conn.close();
		}
	}
}
