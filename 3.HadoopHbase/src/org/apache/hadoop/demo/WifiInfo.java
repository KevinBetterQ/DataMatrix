package org.apache.hadoop.demo;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DecimalFormat;

public class WifiInfo {
	public static String driver = "com.mysql.jdbc.Driver";
	public static String url = "jdbc:mysql://182.254.130.103:3306/wifi";
	public static String user = "root";
	public static String password = "111111";
	public static Connection connection;
	
	public static void main(String[] args) throws Exception {

		DataBase dataBase = new DataBase();
//		String sql = "insert into analysis (pid, data, keliu) values (1, '21', 1);";
//		int num = dataBase.insert(sql);
//		System.out.println(num);
//		DataBase dataBase2 = new DataBase();
//		sql = "select * from analysis;";
//		ResultSet resultSet = dataBase2.select(sql);
//		while(resultSet.next()){
//			System.out.println(resultSet.getString(1)+"  "+resultSet.getString(2));
//		}
		String sql = "delete from user";
		dataBase.delete(sql);
//		ResultSet resultSet = dataBase.select(sql);
//		resultSet.next();
//		System.out.println(resultSet.getInt(1));

//		Class.forName(driver);
//		connection = DriverManager.getConnection(url, user, password);
//		String sql = "insert into mac (mac) values ('1');"
//				+ "insert into mac (mac) values ('2');"
//				+ "insert into mac (mac) values ('3');";
//		PreparedStatement preparedStatement = connection.prepareStatement(sql);
//		int num = preparedStatement.executeUpdate();
//		preparedStatement.close();
	}


}
