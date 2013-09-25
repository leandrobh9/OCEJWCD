

package com;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import javax.servlet.annotation.WebServlet;

@WebServlet(urlPatterns={"/dispatcher"})
public class TesteDispatcher extends HttpServlet {
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException{
	
		/*
		RequestDispatcher rd = req.getRequestDispatcher("/WEB-INF/invisivel1.jsp");
		
		System.out.println("start");
		
		if (rd != null) {
			System.out.println("before forward");
			rd.forward(req, resp);
			System.out.println("after forward");
		}
		
		System.out.println("end");
		*/
		
		int i = 28;
		int f = (5 * i + 1 ) / 4;
		int res = f % 7;
		System.out.println("Anda " + res + " dias");
	}
}
