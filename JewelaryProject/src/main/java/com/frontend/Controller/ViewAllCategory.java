package com.frontend.Controller;

import java.io.IOException;
import java.util.List;

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
	    CategoryDAOImpl category=new CategoryDAOImpl();
		List<Category> list=category.getAllCategory();
		
		for(Category x:list) {
			System.out.println(x.getCategoryName()+" "+x.getId());
				
		}
		request.setAttribute("listCategory", list);
        RequestDispatcher dispatcher= request.getRequestDispatcher("/AddCategory.jsp");
        dispatcher.forward(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
