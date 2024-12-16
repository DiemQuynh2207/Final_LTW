package com.webapp3rdyear.controller.web;

import com.webapp3rdyear.enity.Cart;
import com.webapp3rdyear.enity.Products;
import com.webapp3rdyear.enity.Users;
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
import jakarta.servlet.http.HttpSession;

import org.springframework.data.domain.Page;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;


@WebServlet(urlPatterns = {"/shop", "/user/cart/add", "/user/cart/dec", "/user/cart/delete"})
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private IProductService productService;
    ICartService cartService = new CartServiceImpl();
    IUserService userService = new UserServiceImpl();

    @Override
    public void init() {
        productService = new ProductServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Lấy các tham số từ request
    	String productId = request.getParameter("productId");
        String productName = request.getParameter("productName");
        String minPriceParam = request.getParameter("minPrice");
        String maxPriceParam = request.getParameter("maxPrice");
        String categoryParam = request.getParameter("category");
        String sortOrder = request.getParameter("sortOrder");
        String pageParam = request.getParameter("page");
        String sizeParam = request.getParameter("size");

        // Default values
        BigDecimal minPrice = Optional.ofNullable(minPriceParam)
                .filter(s -> !s.isEmpty())
                .map(BigDecimal::new).orElse(null);
        BigDecimal maxPrice = Optional.ofNullable(maxPriceParam)
                .filter(s -> !s.isEmpty())
                .map(BigDecimal::new).orElse(null);

        // Kiểm tra điều kiện minPrice < maxPrice
        if (minPrice != null && maxPrice != null && minPrice.compareTo(maxPrice) > 0) {
            request.setAttribute("errorMessage", "Giá tối thiểu không được lớn hơn giá tối đa.");
            minPrice = null;
            maxPrice = null;
        }

        Integer categoryId = Optional.ofNullable(categoryParam).map(this::mapCategoryToId).orElse(null);
        int page = Optional.ofNullable(pageParam).map(Integer::parseInt).orElse(0);
        int size = Optional.ofNullable(sizeParam).map(Integer::parseInt).orElse(10);

        // Determine sorting
        String sortByName = null, sortByPrice = null;
        if ("nameAsc".equals(sortOrder)) sortByName = "ASC";
        else if ("nameDesc".equals(sortOrder)) sortByName = "DESC";
        else if ("priceAsc".equals(sortOrder)) sortByPrice = "ASC";
        else if ("priceDesc".equals(sortOrder)) sortByPrice = "DESC";

        // Lấy dữ liệu sản phẩm từ service
        Page<Products> productPage = productService.filterProducts(productName, minPrice, maxPrice,
                categoryId, sortByName, sortByPrice, page, size);

        // Set attributes cho JSP
        request.setAttribute("productPage", productPage);
        request.setAttribute("currentPage", page);
        request.setAttribute("pageSize", size);

        // Giữ lại các bộ lọc
        request.setAttribute("productName", productName);
        request.setAttribute("minPrice", minPriceParam);
        request.setAttribute("maxPrice", maxPriceParam);
        request.setAttribute("category", categoryParam);
        request.setAttribute("sortOrder", sortOrder);

//        Bổ sung nội dung bên cart
        HttpSession session = request.getSession(false);
        String url = request.getRequestURI();
        Users user = (Users) session.getAttribute("user");

        List<Cart> cartList = null;
        if(url.contains("/user/cart/add")){
            int productId1d = Integer.parseInt(request.getParameter("productId"));
            Cart cart = cartService.getCartByCustomerIdAndProductId(user.getUserId(), productId1d);
            Products products = productService.findById(productId1d);
            if (user == null) {
                String msg = "You are not logged in";
                request.setAttribute("msg", msg);
            }
            else if (products.getStock() == 0){
                String msg = "Don't have enough stock";
                request.setAttribute("msg", msg);
            }
            else if (cart == null) {
                Cart newCart = new Cart(user,products,1);
                cartService.addCart(newCart);
            }
            else {
                if (cart.getQuantity() == products.getStock()) {
                    String msg = "Don't have enough stock";
                    request.setAttribute("msg", msg);
                }
                cart.setQuantity(cart.getQuantity() + 1);
                cartService.updateCart(cart);
            }
        }
        if (url.contains("/user/cart/delete")){
            int productId1 = Integer.parseInt(request.getParameter("productId"));
            Cart cart = cartService.getCartByCustomerIdAndProductId(user.getUserId(), productId1);
            cartService.removeCart(cart);
        }
        if (url.contains("/user/cart/dec")){
            int productId1 = Integer.parseInt(request.getParameter("productId"));
            Cart cart = cartService.getCartByCustomerIdAndProductId(user.getUserId(), productId1);
            Users users = userService.findById(1);
            if (users == null) {
                String msg = "You are not logged in";
                request.setAttribute("msg", msg);
            }
            else if (cart.getQuantity() == 1){
                String msg = "Quantity must be greater than 1";
                request.setAttribute("msg", msg);
            }
            else {
                cart.setQuantity(cart.getQuantity() - 1);
                cartService.updateCart(cart);
            }
        }
        cartList = cartService.getAllCartsByCustomerId(1);

        request.setAttribute("cartList", cartList);
        request.getRequestDispatcher("/view/web/shop.jsp").forward(request, response);
    }

    private Integer mapCategoryToId(String category) {
        switch (category) {
            case "Trong nhà":
                return 1;
            case "Ngoài trời":
                return 2;
            case "Để bàn":
                return 3;
            default:
                return null;
        }
    }
}