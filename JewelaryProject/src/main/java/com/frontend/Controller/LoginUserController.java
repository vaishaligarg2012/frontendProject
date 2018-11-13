package com.frontend.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.backend.DAO.UserDaoImpl;
import com.backend.Model.Users;

@WebServlet("/Login")
public class LoginUserController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = -2558903941303199209L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		response.setContentType("text/html");

		String email=request.getParameter("email");
		String pass=request.getParameter("pass");

		Users obj=new Users();
		obj.setEmail(email);
		obj.setPassword(pass);

		UserDaoImpl login=new UserDaoImpl();
		Users user =login.validateUser(email, pass);

             if(user!=null) {
					//HttpSession session=request.getSession();  
			     //session.setAttribute("name",user.getFName());
			       
			        if(user.getRole().equals("Admin")) {
			        	//request.getRequestDispatcher("Header.jsp");
						//rd1.forward(request, response);
						RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
				    	rd.forward(request, response);

					}
			        
				}
				if(user.getRole().equals("User")) {
					
				}
		}
		
	}


