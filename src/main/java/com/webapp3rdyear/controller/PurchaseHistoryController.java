package com.webapp3rdyear.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.webapp3rdyear.enity.Orders;
import com.webapp3rdyear.enity.Products;
import com.webapp3rdyear.enity.Users;
import com.webapp3rdyear.enity.model.OrderModel;
import com.webapp3rdyear.enity.model.ProductModel;
import com.webapp3rdyear.service.IOrderService;
import com.webapp3rdyear.service.impl.OrderSeviceImpl;

@WebServlet(urlPatterns = {"/purchasehistory"})
public class PurchaseHistoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	OrderSeviceImpl od = new OrderSeviceImpl();
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		boolean ok = false;
		HttpSession session = req.getSession(false);
		int id = Integer.parseInt(req.getParameter("id"));
//		if (session != null && session.getAttribute("user") != null) {
//			Users user = (Users) session.getAttribute("user");
//			id = user.getUserId();
//			System.out.println("id khi vào purchase: "+id);
//		
		List<Orders> lp = od.findByUserID(id);
		List<OrderModel> lod = new ArrayList<>();
		lp.forEach(p ->{
			lod.add(new OrderModel(p));
		});
		req.setAttribute("lod", lod);
		req.getRequestDispatcher("/view/web/purchase-history.jsp").forward(req, resp);
//		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
