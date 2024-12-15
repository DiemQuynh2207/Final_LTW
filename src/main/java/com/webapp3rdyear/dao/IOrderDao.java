package com.webapp3rdyear.dao;

import com.webapp3rdyear.enity.Orders;

import java.util.List;

public interface IOrderDao {
    List<Orders> findByUserId(int userId);

    List<Orders> findByUserId(int userId, int page, int pageSize);

    List<Orders> findByStatus(int userId, String status);

    List<Orders> findByStatus(int userId, String status, int page, int pageSize);

    List<Orders> findAll();

    List<Orders> findAll(int page, int pageSize);

    Orders findById(int id);

    void insert(Orders product);

    boolean update(Orders product);

    boolean delete(int id);

    boolean softDelete(Orders Orders);

    int count();
}
