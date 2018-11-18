package com.frontend.Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.backend.DAO.CategoryDAO;
import com.backend.DAO.CategoryDAOImpl;
import com.backend.DAO.ProductDAOImpl;
import com.backend.Model.Category;
import com.backend.Model.Product;

@SuppressWarnings("serial")
@WebServlet("/addProduct")
public class AddProductController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		response.setContentType("text/html");
	
		String OptionValueCategoryName=	request.getParameter("categoryNameGet");
	    String name=request.getParameter("name");
	    double price=Double.parseDouble(request.getParameter("price"));
	    int quantity=Integer.parseInt(request.getParameter("quantity"));
	    String des=request.getParameter("des");
	    System.out.println(OptionValueCategoryName+" "+price+" "+quantity+" "+des);
	    
	    
	    Product product = new Product();
	    CategoryDAO daoImpl=new CategoryDAOImpl();
	    List<Category> list=daoImpl.getAllCategory();
	    for(Category cat:list) {
	    	if(cat.getCategoryId()==Integer.parseInt(OptionValueCategoryName)) {
	    		product.setCategory(cat);
	    	}
	    		
	    }
	    
	    
	    
	    product.setProductName(name);
	    product.setPrice(price);
	    product.setQuantity(quantity);	
	    product.setDescription(des);
	    
	    ProductDAOImpl obj=new ProductDAOImpl();
	    boolean d=obj.addProduct(product);
	    if(d) {
	       request.setAttribute("msg","Product Added");
	       RequestDispatcher rd= request.getRequestDispatcher("/Products.jsp");
	       rd.forward(request, response);
	    }else {
	    	   request.setAttribute("msg","Please try again, Not Added");
		       RequestDispatcher rd= request.getRequestDispatcher("/Products.jsp");
		       rd.forward(request, response);
		    	
	    }
	    

	}

}
