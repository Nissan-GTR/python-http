package com.gt.zaz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OPSWelcomeServlet
 */
public class OPSWelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public OPSWelcomeServlet() {
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		// Set response content type
	      response.setContentType("text/html");

	      PrintWriter out = response.getWriter();
	      String title = "Welcome Mate !!!! ";
	      
	      Welcome come = new Welcome();
	  	  String fname = request.getParameter("first_name") ;
	  	  String lname = request.getParameter("last_name") ;
	  	  String gender = request.getParameter("gender") ;
	  	
	      String greets = come.sayHola(fname + " " + lname, gender);
	  	
	      
	      String docType =
	         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
	       
	      
	      
	      out.println(docType +
	         "<html>\n" +
	            "<head><title>" + title + "</title></head>\n" +
	            "<body bgcolor = \"#f0f0f0\">\n" +
	               "<h1 align = \"center\">" + title + "</h1>\n" +
	               "<ul>\n" +
	                  "  Greetings : "
	                  + greets + "\n" +
	               "</ul>\n" +
	            "</body>" +
	         "</html>"
	      );
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
