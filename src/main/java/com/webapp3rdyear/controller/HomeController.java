package com.webapp3rdyear.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.webapp3rdyear.enity.Roles;
import com.webapp3rdyear.enity.Users;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/home") 
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		boolean ok = false;
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			Users user = (Users) session.getAttribute("user");
			session.setAttribute("fullname", user.getFullname());
			session.setAttribute("id", user.getUserId());
			session.setAttribute("image", user.getAvatar());
			session.setAttribute("role", user.getRole().getRoleId());
			session.setAttribute("image", user.getAvatar());
			System.out.println("role:"+ user.getRole().getRoleId());
			System.out.println("fullname:"+user.getFullname());
			System.out.println("id:"+user.getUserId());
			System.out.println("session: " +req.getSession());
				
			ok = true;
		}
		req.getRequestDispatcher("/view/web/homepage.jsp").forward(req, resp);
		if (!ok) {
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
