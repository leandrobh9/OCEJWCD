
package com;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class Main extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		//resp.getWriter().println(req.getMethod());
		
		doPost(req, resp);
		
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
		
		resp.getWriter().println("in post...");
		resp.getWriter().println(req.getMethod());
		resp.getWriter().println("pos post...");
	}

}