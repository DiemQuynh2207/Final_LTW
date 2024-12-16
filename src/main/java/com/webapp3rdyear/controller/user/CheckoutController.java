package com.webapp3rdyear.controller.user;

import com.webapp3rdyear.enity.Cart;
import com.webapp3rdyear.service.ICartService;
import com.webapp3rdyear.service.IProductService;
import com.webapp3rdyear.service.IUserService;
import com.webapp3rdyear.service.impl.CartServiceImpl;
import com.webapp3rdyear.service.impl.ProductServiceImpl;
import com.webapp3rdyear.service.impl.UserServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/user/checkout"})
public class CheckoutController extends HttpServlet {
    IProductService productService = new ProductServiceImpl();
    ICartService cartService = new CartServiceImpl();
    IUserService userService = new UserServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        List<Cart> cartList = new ArrayList<>();
        BigDecimal total = BigDecimal.ZERO;
        if (uri.contains("/user/checkout")) {
            // Lấy danh sách các ID sản phẩm được chọn từ URL
            String[] selectedProductIds = req.getParameterValues("selectedProductIds");

            if (selectedProductIds != null) {
                // Lọc các sản phẩm đã chọn dựa trên ID
                for (String productId : selectedProductIds) {
                    int productid = Integer.parseInt(productId);
                    Cart cart = cartService.getCartByCustomerIdAndProductId(1, productid);
                    cartList.add(cart);
                    total = total.add(cart.getProductID().getPrice().multiply(new BigDecimal(cart.getQuantity())));
                }
            }
        }
        req.setAttribute("cartList", cartList);
        req.setAttribute("totalOfCart", total);
        req.getRequestDispatcher("/view/web/payment-info-user.jsp").forward(req, resp);
    }
}
