package com.webapp3rdyear.enity.model;

import com.webapp3rdyear.enity.Users;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderModel {
    private int orderId;
    private String orderDate;
    private int customerID;
    private String voucherID;
    private int sellerID;
    private int shipperID;
    private boolean deliveryTime;
    private String note;
    private BigDecimal disprice;
    private BigDecimal totalprice;
    private OrderStatus status;
}
