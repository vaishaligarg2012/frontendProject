package com.frontend.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.backend.DAO.ProductDAOImpl;
import com.backend.Model.Product;

@WebServlet("/viewAllProduct")
public class viewAllProducts extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		//Product product=new Product();
		ProductDAOImpl obj=new ProductDAOImpl();
		List<Product> list =  obj.viewAllProduct();
		request.setAttribute("listProuct", list);
		RequestDispatcher dispatcher= request.getRequestDispatcher("Products.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
