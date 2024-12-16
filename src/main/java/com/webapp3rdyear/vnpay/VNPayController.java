package com.webapp3rdyear.vnpay;

import com.webapp3rdyear.service.IOrderService;
import com.webapp3rdyear.service.impl.OrderSeviceImpl;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import java.io.IOException;
import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet(urlPatterns = {"/user/checkout/vnpay", "/vnpay-payment-return"})
public class VNPayController extends HttpServlet {
    VNPayService vnpayService = new VNPayService();
    IOrderService orderService = new OrderSeviceImpl();

    // Chuyển hướng người dùng đến cổng thanh toán VNPAY
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String uri = req.getRequestURI();
        if (uri.contains("/user/checkout/vnpay")) {
            String baseUrl = req.getScheme() + "://" + req.getServerName() + ":" + req.getServerPort();
            BigDecimal totalPriceToPayment = BigDecimal.ZERO;
            // Lấy và kiểm tra tham số `totalOfCart`
            String totalOfCartParam = req.getParameter("totalOfCart");
            if (totalOfCartParam != null && !totalOfCartParam.isEmpty()) {
                try {
                    totalPriceToPayment = new BigDecimal(totalOfCartParam);
                } catch (NumberFormatException e) {
                    e.printStackTrace();
                    // Gửi thông báo lỗi nếu cần thiết
                    resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid total amount.");
                    return;
                }
            } else {
                resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Total amount is missing.");
                return;
            }
            // Tạo URL thanh toán từ VNPAY
            try {
                String vnpayUrl = vnpayService.createOrder(req, totalPriceToPayment.intValue(), baseUrl);
                resp.sendRedirect(vnpayUrl); // Chuyển hướng người dùng đến URL VNPAY
            } catch (Exception e) {
                e.printStackTrace();
                // Xử lý lỗi khi tạo URL thanh toán
                resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Unable to create payment order.");
            }
        }
        else {
            int paymentStatus = vnpayService.orderReturn(req);

//        String orderInfo = request.getParameter("vnp_OrderInfo");
            String orderInfo = req.getParameter("vnp_OrderInfo");
            String paymentTime = req.getParameter("vnp_PayDate");
            String transactionId = req.getParameter("vnp_TransactionNo");
            String totalPrice = req.getParameter("vnp_Amount");

            // Định dạng đầu vào
            DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyyMMddHHmmss");

            // Định dạng đầu ra
            DateTimeFormatter outputFormatter = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");

            // Chuyển chuỗi sang LocalDateTime
            LocalDateTime dateTime = LocalDateTime.parse(paymentTime, inputFormatter);

            // Chuyển LocalDateTime sang chuỗi định dạng mới
            String formattedDate = dateTime.format(outputFormatter);

            String totalPriceVND = totalPrice.substring(0, totalPrice.length() - 2);

            req.setAttribute("orderId", orderInfo);
            req.setAttribute("totalPrice", totalPriceVND);
            req.setAttribute("paymentTime", formattedDate);
            req.setAttribute("orderInfo", orderInfo);
            req.setAttribute("transactionId",transactionId);

            if (paymentStatus == 1){
//                orderService.();
            }
            String view = paymentStatus == 1 ? "/web/user/payment-complete.jsp" : "/web/user/payment-fail.jsp";
            req.getRequestDispatcher(view).forward(req, resp);
        }
    }
}

