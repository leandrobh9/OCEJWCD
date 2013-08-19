package main.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/main")
public class MainServlet extends HttpServlet {

	//@Resource(name="java:jboss/datasources/LeandroDS")
	@Resource(name="LeandroDS")
	DataSource dataSource;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		PrintWriter pw = resp.getWriter();
		
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement("select * from pessoa");
			ResultSet rs = ps.executeQuery();
			while (rs.next()){
				int id = rs.getInt(1);
				String nome = rs.getString(2);
				pw.println("Id: " + id + " \nNome: " + nome);
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
	}
}
