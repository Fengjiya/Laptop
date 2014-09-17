package baicai;

import java.sql.*;


public class DbDao
{
	private Connection conn;
	private String driver;
	private String url;
	private String username;
	private String pass;
	
	public DbDao()
	{
	}
	
	public DbDao(String driver, String url, String user, String pass )
	{
		this.driver = driver;
		this.url = url;
		this.username = user;
		this.pass = pass;
	}

	/**
	 * @return the driver
	 */
	public String getDriver() {
		return driver;
	}

	/**
	 * @param driver the driver to set
	 */
	public void setDriver(String driver) {
		this.driver = driver;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * @return the user
	 */
	public String getUser() {
		return username;
	}

	/**
	 * @param user the user to set
	 */
	public void setUser(String user) {
		this.username = user;
	}

	/**
	 * @return the pass
	 */
	public String getPass() {
		return pass;
	}

	/**
	 * @param pass the pass to set
	 */
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	//To get db's connection
	public Connection getConnection() throws Exception
	{
		if( conn == null )
		{
			Class.forName(this.driver);
			conn = DriverManager.getConnection(url, username, pass);
		}
		return conn;
	}
	
	//Insert data
	public ResultSet query(String sql,Object... args) throws Exception
	{
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for( int i = 0; i < args.length; i++ )
		{
			pstmt.setObject( i+1, args[i]);
		}
		return pstmt.executeQuery();
	}
	
	//update data
	public void modify(String sql, Object... args) throws Exception
	{
		PreparedStatement pstmt = getConnection().prepareStatement(sql);
		for( int i = 0; i< args.length; i++ )
		{
			pstmt.setObject(i+1, args[i]);
		}
		pstmt.executeUpdate();
		pstmt.close();
	}
	
	//To close the connection
	public void closeConn() throws Exception
	{
		if( conn != null && conn.isClosed() )
		{
			conn.close();
		}
	}

}
