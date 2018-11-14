package com.frontend.Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
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
		Category cad=new Category();
		ArrayList<Category> list=new ArrayList<Category>();
		ArrayList<Category> listDetails=new ArrayList<Category>();
		CategoryDAOImpl obj=new CategoryDAOImpl();
		list =  (ArrayList<Category>) obj.getAllCategory();
	   // System.out.print("List"+list);
	    for (Category u : list) {
	    	System.out.println(u.getCategoryName());
	         Category category=new Category();
			category.setId(u.getId());
			category.setCategoryName(u.getCategoryName());
			category.setCategoryDesc(u.getCategoryDesc());
			listDetails.add(category);
	    }
	    
	    request.setAttribute("listCategory", listDetails);
	    
        RequestDispatcher dispatcher = request.getRequestDispatcher("Products.jsp");
        dispatcher.forward(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
