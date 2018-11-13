package com.frontend.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.backend.DAO.CategoryDAOImpl;
import com.backend.DAO.UserDaoImpl;
import com.backend.Model.Category;
@SuppressWarnings("serial")

@WebServlet("/AddCategory")
public class AddCategoryController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");
			Category obj=new Category();
			String catName= request.getParameter("name");
			String des= request.getParameter("des");
			obj.setCategoryName(catName);
			obj.setCategoryDesc(des);
			CategoryDAOImpl category= new CategoryDAOImpl();
		 	category.addCategory(obj);
			System.out.println(category) ;
			//HttpSession session=request.getSession();  
	        request.setAttribute("msg","Category Added");
	    	RequestDispatcher rd=request.getRequestDispatcher("AddCategory.jsp");
	    	rd.forward(request, response);

	}

}
