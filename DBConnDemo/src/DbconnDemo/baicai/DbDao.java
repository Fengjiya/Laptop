package DbconnDemo.baicai;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;


public class DbDao
{
	private Connection conn;
	private  String driver;
	private  String url;
	private  String username;
	private  String password;
//	private final String dbDriver = "DbDriver.ini";
	
	private void initParam() throws IOException
	{
		Properties prop = new Properties();
		prop.load(new FileInputStream("DbDriver.ini"));
		
		driver = prop.getProperty("dirver");
		url = prop.getProperty("url");
		username = prop.getProperty("username");
		password = prop.getProperty("password");
	}
	
	public Connection getConnection() throws Exception
	{
		initParam();//首先初始化数据库的几个参数
		
		if( conn == null )
		{
			Class.forName( this.driver );
			conn = DriverManager.getConnection(url, username, password );
		}
		
		return conn;
	}
	
	public ResultSet query( String sql, Object... args ) throws Exception
	{
		PreparedStatement pstm = getConnection().prepareStatement(sql);
		for( int i = 0; i < args.length; i++ )
		{
			pstm.setObject(i+1, args[i]);
		}
		
		return pstm.executeQuery();
	}
	
	public void modify(String sql, Object...objects ) throws Exception
	{
		PreparedStatement pstm = getConnection().prepareStatement(sql);
		for( int i = 0; i < objects.length; i++ )
		{
			pstm.setObject(i+1, objects[i]);
		}
		
		pstm.executeUpdate();
		
		pstm.close();
	}
	
	public void closeConn() throws Exception
	{
		if( conn != null && conn.isClosed())
			conn.close();
	}
	
	public String getUrl() {
		return url;
	}
	

}
