package com.webapp3rdyear.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.webapp3rdyear.enity.Products;
import com.webapp3rdyear.service.IProductService;
import com.webapp3rdyear.service.impl.ProductServiceImpl;

@WebServlet(urlPatterns = { "/product/details", "/product/details/addcmt", "/product/details/pay"})
public class DetailsProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	IProductService sv = new ProductServiceImpl();
       
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String id = req.getParameter("id");
			int idso = Integer.parseInt(id);
			Products pd = sv.findById(idso);
			req.setAttribute("pd", pd);
			req.setAttribute("id", pd.getProductId());
			req.setAttribute("pname", pd.getPname());
			req.setAttribute("price", pd.getPrice() + "VND");
			req.setAttribute("stock", pd.getStock());
			req.setAttribute("des", pd.getDescription());
			req.setAttribute("images", "http://localhost:8080/DAWEBB/image?from=product&fname="+ pd.getImage());
//			List<RatingModel> rmodels = new ArrayList<>();
//			pd.getRatings().forEach(r->{
//				rmodels.add(new RatingModel(r));
//			});
//			req.setAttribute("rating", rmodels);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		req.getRequestDispatcher("/view/web/detail-products.jsp").forward(req, resp);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
