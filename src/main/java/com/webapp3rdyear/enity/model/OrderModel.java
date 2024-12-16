package com.webapp3rdyear.enity.model;

import com.webapp3rdyear.enity.Orders;
import com.webapp3rdyear.enity.Users;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderModel {
    private int orderId;
    private Date orderDate;
    private int customerID;
    private String voucherID;
    private int sellerID;
    private int shipperID;
    private boolean deliveryTime;
    private String note;
    private BigDecimal disprice;
    private BigDecimal totalprice;
    private OrderStatus status;
    public OrderModel(Orders od) {
    	orderId = od.getOrderId();
    	orderDate = od.getOrderDate();
    	customerID = od.getCustomer().getUserId();
    	voucherID = od.getVoucher().getVoucherID();
    	sellerID = od.getSellerID().getUserId();
    	shipperID = od.getShipperID().getUserId();
    	deliveryTime = od.isDeliveryTime();
    	note = od.getNote();
    	disprice = od.getDisprice();
    	totalprice = od.getTotalprice();
    	status = od.getStatus();
    }
}
