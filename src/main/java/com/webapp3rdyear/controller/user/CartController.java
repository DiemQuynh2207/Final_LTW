//package com.webapp3rdyear.controller.user;
//
//import com.webapp3rdyear.enity.Cart;
//import com.webapp3rdyear.enity.Products;
//import com.webapp3rdyear.enity.Users;
//import com.webapp3rdyear.service.ICartService;
//import com.webapp3rdyear.service.IProductService;
//import com.webapp3rdyear.service.IUserService;
//import com.webapp3rdyear.service.impl.CartServiceImpl;
//import com.webapp3rdyear.service.impl.ProductServiceImpl;
//import com.webapp3rdyear.service.impl.UserServiceImpl;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//import java.io.IOException;
//import java.math.BigDecimal;
//import java.util.List;
//
//@WebServlet(urlPatterns = {"/user/carts", "/user/cart/add", "/user/cart/dec", "/user/cart/delete"})
//public class CartController extends HttpServlet {
//    private static final long serialVersionUID = 1L;
//    IProductService productService = new ProductServiceImpl();
//    ICartService cartService = new CartServiceImpl();
//    IUserService userService = new UserServiceImpl();
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String uri = req.getRequestURI();
//        List<Cart> cartList = null;
//        BigDecimal total = BigDecimal.ZERO;
//        if (uri.contains("/user/carts")) {
//            cartList = cartService.getAllCartsByCustomerId(1);
//            total = cartService.getCartTotal(1);
//        }
//        else if(uri.contains("/user/cart/add")) {
//            int productId = Integer.parseInt(req.getParameter("productId"));
//            Cart cart = cartService.getCartByCustomerIdAndProductId(1, productId);
//            Products products = productService.findById(productId);
//            Users users = userService.findById(1);
//            if (users == null) {
//                String msg = "You are not logged in";
//                req.setAttribute("msg", msg);
//            }
//            else if (products.getStock() == 0){
//                String msg = "Don't have enough stock";
//                req.setAttribute("msg", msg);
//            }
//            else if (cart == null) {
//                Cart newCart = new Cart(users,products,1);
//                products.setStock(products.getStock() - 1);
//                cartService.addCart(newCart);
//                productService.update(products);
//            }
//            else {
//                cart.setQuantity(cart.getQuantity() + 1);
//                products.setStock(products.getStock() - 1);
//                cartService.updateCart(cart);
//                productService.update(products);
//            }
//            cartList = cartService.getAllCartsByCustomerId(1);
//            total = cartService.getCartTotal(1);
//        }
//        else if (uri.contains("/user/cart/dec")) {
//            int productId = Integer.parseInt(req.getParameter("productId"));
//            Cart cart = cartService.getCartByCustomerIdAndProductId(1, productId);
//            Products products = productService.findById(productId);
//            Users users = userService.findById(1);
//            if (users == null) {
//                String msg = "You are not logged in";
//                req.setAttribute("msg", msg);
//            }
//            else if (cart.getQuantity() == 1){
//                String msg = "Quantity must be greater than 1";
//                req.setAttribute("msg", msg);
//            }
//            else {
//                cart.setQuantity(cart.getQuantity() - 1);
//                products.setStock(products.getStock() + 1);
//                cartService.updateCart(cart);
//                productService.update(products);
//            }
//            cartList = cartService.getAllCartsByCustomerId(1);
//            total = cartService.getCartTotal(1);
//        }
//        else {
//            int productId = Integer.parseInt(req.getParameter("productId"));
//            Cart cart = cartService.getCartByCustomerIdAndProductId(1, productId);
//            cartService.removeCart(cart);
//            cartList = cartService.getAllCartsByCustomerId(1);
//            total = cartService.getCartTotal(1);
//        }
//        req.setAttribute("cartList", cartList);
//        req.setAttribute("total", total);
//        req.getRequestDispatcher("/view/web/shop.jsp").forward(req, resp);
//    }
//}
