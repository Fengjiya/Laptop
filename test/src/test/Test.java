package test;

import java.sql.*;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Scanner;


public class Test
{
	public static void main(String[] args) throws Exception
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "123456");
		//? need the month user input.
		String sql = "select month, sale from sales where id <= ? ";
		PreparedStatement pstm = conn.prepareStatement(sql );
		
		int month = 0;
		System.out.println("Input the month you want to query : ");
		month = new Scanner(System.in).nextInt();
		while(  month < 1 || month > 12  )
		{
			//此处没有处理当month为小数的情况，需要再次处理
			System.out.println("please input the month again!");
			month = new Scanner(System.in).nextInt();
		}
		
		Map<String, Double> lhm = new LinkedHashMap<>();
		
		pstm.setInt(1, month);
		ResultSet rs = pstm.executeQuery();
		while( rs.next() )
		{
			System.out.println( rs.getString(1) + "\t" + rs.getDouble(2) );
			lhm.put(rs.getString(1), rs.getDouble(2));
			
		}
		
		System.out.println(lhm);
	}
}
