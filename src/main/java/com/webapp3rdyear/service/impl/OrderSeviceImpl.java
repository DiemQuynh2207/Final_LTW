package com.webapp3rdyear.service.impl;

import com.webapp3rdyear.dao.IOrderDao;
import com.webapp3rdyear.dao.IOrderDetailDao;
import com.webapp3rdyear.dao.IUserDao;
import com.webapp3rdyear.dao.impl.OrderDaoImpl;
import com.webapp3rdyear.dao.impl.OrderDetailDaoImpl;
import com.webapp3rdyear.dao.impl.UserDaoImpl;
import com.webapp3rdyear.enity.Orders;
import com.webapp3rdyear.enity.model.OrderModel;
import com.webapp3rdyear.service.IOrderService;

import java.util.List;

public class OrderSeviceImpl implements IOrderService {
    IOrderDao orderDao = new OrderDaoImpl();
    IOrderDetailDao orderDetailDao = new OrderDetailDaoImpl();
    IUserDao userDao = new UserDaoImpl();

    public List<Orders> findByUserID(int userId) {
        return orderDao.findByUserId(userId).stream().sorted((o1, o2) -> o2.getOrderId() - o1.getOrderId()).toList();
    }

    public void addOrder(OrderModel order) {
        Orders orders = new Orders();
        orders.setOrderDate(order.getOrderDate());
        orders.setCustomer(userDao.findById(order.getCustomerID()));
        if (order.getVoucherID().equals(null)) {
            orders.setVoucher(null);
        }
        orders.setNote(order.getNote());
        orders.setDisprice(order.getDisprice());
        orders.setTotalprice(order.getTotalprice());
        orders.setStatus(order.getStatus());
        orderDao.insert(orders);
    }
}
