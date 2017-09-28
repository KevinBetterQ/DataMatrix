package com.neusoft.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestSky
 */
@WebServlet("/TestSky")
public class TestSky extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestSky() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		String aString = request.getParameter("data")+"\n";
		System.out.println(aString);
		
		//File txt = new File("D:\\F(data)\\F\\Unversity\\大学活动\\Important\\软件杯2017\\datasky\\WIFIdata.txt");
		/*File txt = new File(".");
		String path = txt.getCanonicalPath();
		path += "\\Test";*/
		String path = "/home/hadoop/apache-tomcat-8.5.15/wifiData/"+ Math.random() +"sky.txt";
		File txt = new File(path); 
		
		byte[] bytes = new byte[1024];
		bytes = aString.getBytes();
		int length = aString.length();
		FileOutputStream fileOutputStream = new FileOutputStream(txt,true);
		fileOutputStream.write(bytes, 0, length);
		fileOutputStream.close();
		
			
		
	}

}
