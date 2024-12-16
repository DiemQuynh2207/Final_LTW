package com.webapp3rdyear.controller.web;

import com.webapp3rdyear.enity.Products;
import com.webapp3rdyear.service.IProductService;
import com.webapp3rdyear.service.impl.ProductServiceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.data.domain.Page;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.Optional;


@WebServlet("/shop")
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private IProductService productService;

    @Override
    public void init() {
        productService = new ProductServiceImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy các tham số từ request
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