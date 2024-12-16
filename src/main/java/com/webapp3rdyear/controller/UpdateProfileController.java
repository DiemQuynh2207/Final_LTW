package com.webapp3rdyear.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.webapp3rdyear.enity.Users;
import com.webapp3rdyear.service.IUserService;
import com.webapp3rdyear.service.impl.UserServiceImpl;
import com.webapp3rdyear.utils.Utils;

@MultipartConfig(fileSizeThreshold = 1024 * 1024, maxFileSize = 1024 * 1024 * 5, maxRequestSize = 1024 * 1024 * 5 * 5)
@WebServlet(urlPatterns = { "/update", "/updateprofile" })
public class UpdateProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    IUserService us = new UserServiceImpl();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		boolean ok = false;
		String url = req.getRequestURI();
		HttpSession session = req.getSession(false);
		if (session != null && session.getAttribute("user") != null) {
			Users user = (Users) session.getAttribute("user");
			if (url.endsWith("/update")) {
				session.setAttribute("fullname", user.getFullname());
				session.setAttribute("username", user.getUsername());
				session.setAttribute("image", user.getAvatar());
				session.setAttribute("role", user.getRole().getRoleId());
				session.setAttribute("address", user.getAddress());
				session.setAttribute("area", user.getArea());
				session.setAttribute("phone", user.getPhone());
				session.setAttribute("email", user.getEmail());
				System.out.println("role:"+ user.getRole().getRoleId());
				System.out.println("fullname:"+user.getFullname());
				System.out.println("session: " +req.getSession());

				req.getRequestDispatcher("/view/web/edit-profile.jsp").forward(req, resp);
				ok = true;
			}
			
		}
		if (!ok) {
			return;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		Users userg = (Users) req.getAttribute("user");
		System.out.println("===================================== ok");
		if (userg==null)
			return;
		System.out.println("===================================== ok go 2222");
		String url = req.getRequestURI();
		String fullname = req.getParameter("fullname");
		String phone = req.getParameter("phone");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String area = req.getParameter("arae");
		Users user = userg;
		if (url.contains("/updateprofile")) {
			user.setFullname(fullname);
			user.setPhone(phone);
			user.setEmail(email);
			user.setAddress(address);
			user.setArea(area);
			String img = "";
			if (user.getAvatar()!= null && user.getAvatar().length()>0) {
				img = Utils.uploadFileImage(req, 2,
				user.getAvatar().substring(0, user.getAvatar().length() - 5));
				
			}else 
				img = Utils.uploadFileImage(req, 2, Utils.generateRandomString(20));
			System.out.println("update image url: "+img);
			if (img!=null && img.trim().length()>0)
				user.setAvatar(img);
			
			System.out.println("change info");
		}
		resp.sendRedirect(req.getContextPath() + "/update");
	}

}
