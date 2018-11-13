package com.frontend.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.backend.DAO.CategoryDAOImpl;
import com.backend.Model.Category;

@WebServlet("/ViewAllCategory")
public class ViewAllCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		CategoryDAOImpl obj=new CategoryDAOImpl();
		Category c=(Category) obj.viewAllCategory();
	    System.out.print(c+"on controller");
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
