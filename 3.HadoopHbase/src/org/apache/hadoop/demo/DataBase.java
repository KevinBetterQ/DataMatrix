package org.apache.hadoop.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

public class DataBase {
	public static String driver = "com.mysql.jdbc.Driver";
	public static String url = "jdbc:mysql://182.254.130.103:3306/wifi";
	public static String user = "root";
	public static String password = "111111";
	public static Connection connection;
//	public static Connection connection;
	
	public DataBase() throws Exception{
		Class.forName(driver);
		connection = DriverManager.getConnection(url, user, password);
	}
	
	public ResultSet select(String sql) throws Exception{
//		Class.forName(driver);

//		Connection connection = DriverManager.getConnection(url, user, password);
		Statement statement = connection.createStatement();
		ResultSet resultSet = statement.executeQuery(sql);
//		while(resultSet.next()){
//			System.out.println(resultSet.getString(1)+" "+resultSet.getString(2));
//		}
//		connection.close();
		return resultSet;
	}
	
	public int insert(String sql) throws Exception{
//		Class.forName(driver);

//		Connection connection = DriverManager.getConnection(url, user, password);
		
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		int num = preparedStatement.executeUpdate();
		preparedStatement.close();
//		connection.close();
		return num;
	}

	public int delete(String sql) throws Exception{
//		Connection connection = DriverManager.getConnection(url, user, password);
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		int num = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return num;
	}
	
	public int update(String sql) throws Exception{
//		Connection connection = DriverManager.getConnection(url, user, password);
		PreparedStatement preparedStatement = connection.prepareStatement(sql);
		int num = preparedStatement.executeUpdate();
		preparedStatement.close();
		connection.close();
		return num;
	}
	public void Close() throws SQLException{
		connection.close();
	}

}
