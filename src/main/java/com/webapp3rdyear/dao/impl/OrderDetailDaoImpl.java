package com.webapp3rdyear.dao.impl;

import com.webapp3rdyear.config.JPAConfig;
import com.webapp3rdyear.dao.IOrderDetailDao;
import com.webapp3rdyear.enity.OrderDetail;
import jakarta.persistence.EntityManager;

import java.util.List;

public class OrderDetailDaoImpl implements IOrderDetailDao {
    public List<OrderDetail> findAllByOrderId(int orderId, int page, int pageSize) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createQuery("SELECT od FROM OrderDetail od WHERE od.order.orderId = :orderId", OrderDetail.class)
                .setParameter("orderId", orderId)
                .setFirstResult(page * pageSize)
                .setMaxResults(pageSize)
                .getResultList();
    }

    public List<OrderDetail> findAllByOrderId(int orderId) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createQuery("SELECT od FROM OrderDetail od WHERE od.order.orderId = :orderId", OrderDetail.class)
                .setParameter("orderId", orderId)
                .getResultList();
    }

    public void insert(OrderDetail orderDetail) {
        EntityManager enma = JPAConfig.getEntityManager();
        try {
            enma.getTransaction().begin();
            enma.persist(orderDetail);
            enma.getTransaction().commit();
        } catch (Exception e) {
            enma.getTransaction().rollback();
            e.printStackTrace();
        } finally {
            enma.close();
        }
    }

    public boolean update(OrderDetail orderDetail) {
        EntityManager enma = JPAConfig.getEntityManager();
        try {
            enma.getTransaction().begin();
            enma.merge(orderDetail);
            enma.getTransaction().commit();
            return true;
        } catch (Exception e) {
            enma.getTransaction().rollback();
            e.printStackTrace();
            return false;
        } finally {
            enma.close();
        }
    }

    public boolean delete(int id) {
        EntityManager enma = JPAConfig.getEntityManager();
        try {
            enma.getTransaction().begin();
            OrderDetail orderDetail = enma.find(OrderDetail.class, id);
            enma.remove(orderDetail);
            enma.getTransaction().commit();
            return true;
        } catch (Exception e) {
            enma.getTransaction().rollback();
            e.printStackTrace();
            return false;
        } finally {
            enma.close();
        }
    }
}
