package com.webapp3rdyear.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.webapp3rdyear.enity.Users;
import com.webapp3rdyear.service.IUserService;
import com.webapp3rdyear.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
@WebServlet(urlPatterns = "/login") 
public class LoginController extends HttpServlet {
	IUserService us = new UserServiceImpl();
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			Users user = (Users) session.getAttribute("user");
			return;
		}
		req.getRequestDispatcher("/view/login.jsp").forward(req, resp);
	}

	private void saveRemeber(HttpServletRequest req, Users user) {
		HttpSession session = req.getSession();
		session.setAttribute("user", user);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		boolean isRememberMe = false;
		String remember = req.getParameter("remember");
		if ("on".equals(remember)) {
			isRememberMe = true;
		}
		if (username == null || password == null) {
			req.setAttribute("type", "Login"); 
			req.getRequestDispatcher("login.jsp").forward(req, resp);
			return;
		}

		System.out.println(1);
		Users user = us.login(username, password);

		System.out.println(2);
		if (user != null) {
			HttpSession session = req.getSession(true);
			session.setAttribute("user", user);
			saveRemeber(req, user);
			System.out.println("User "+username+" login to web");
			resp.sendRedirect(req.getContextPath() + "/home");
			
		}
		System.out.println(3);
	}

}
