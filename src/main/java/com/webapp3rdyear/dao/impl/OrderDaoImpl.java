package com.webapp3rdyear.dao.impl;

import com.webapp3rdyear.config.JPAConfig;
import com.webapp3rdyear.dao.IOrderDao;
import com.webapp3rdyear.enity.Orders;
import com.webapp3rdyear.enity.Products;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class OrderDaoImpl implements IOrderDao {
    @Override
    public List<Orders> findByUserId(int userId) {
    	EntityManager enma = JPAConfig.getEntityManager();
//        String jpql = "SELECT od FROM Orders od WHERE od.customer.userId = :userId";
//        TypedQuery<Orders> query = enma.createQuery(jpql, Orders.class);
//        query.setParameter("userId", userId);
//        try {
//            return query.getResultList();
//        } catch (Exception e) {
//            e.printStackTrace();  // Log the exception for debugging
//            return null;
//        }
        try {
            return enma.createQuery("SELECT od FROM Orders od WHERE od.customer.userId = :userId", Orders.class)
                       .setParameter("userId", userId)
                       .getResultList();
        } catch (Exception e) {
            e.printStackTrace();  // Log the exception for debugging
            return null;  // Return null or empty list depending on your use case
        }
    }

    @Override
    public List<Orders> findByUserId(int userId, int page, int pageSize) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createQuery("SELECT od FROM Orders od WHERE od.customer.userId = :userId AND od.status = :status", Orders.class)
                .setParameter("userId", userId)
                .setFirstResult(page * pageSize)
                .setMaxResults(pageSize)
                .getResultList();
    }

    @Override
    public List<Orders> findByStatus(int userId, String status) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createQuery("SELECT od FROM Orders od WHERE od.customer.userId = :userId AND od.status = :status", Orders.class)
                .setParameter("userId", userId)
                .setParameter("status", status)
                .getResultList();
    }

    @Override
    public List<Orders> findByStatus(int userId, String status, int page, int pageSize) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createQuery("SELECT od FROM Orders od WHERE od.customer.userId = :userId AND od.status = :status", Orders.class)
                .setParameter("userId", userId)
                .setParameter("status", status)
                .setFirstResult(page * pageSize)
                .setMaxResults(pageSize)
                .getResultList();
    }

    @Override
    public List<Orders> findAll() {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createNamedQuery("Orders.findAll", Orders.class).getResultList();
    }

    @Override
    public List<Orders> findAll(int page, int pageSize) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.createNamedQuery("Orders.findAll", Orders.class)
                .setFirstResult(page * pageSize)
                .setMaxResults(pageSize)
                .getResultList();
    }

    @Override
    public Orders findById(int id) {
        EntityManager enma = JPAConfig.getEntityManager();
        return enma.find(Orders.class, id);
    }

    @Override
    public void insert(Orders order) {
        EntityManager enma = JPAConfig.getEntityManager();
        EntityTransaction trans = enma.getTransaction();
        try {
            trans.begin();
            enma.persist(order);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
        } finally {
            enma.close();
        }

    }

    @Override
    public boolean update(Orders product) {
        EntityManager enma = JPAConfig.getEntityManager();
        EntityTransaction trans = enma.getTransaction();
        try {
            trans.begin();
            enma.merge(product);
            trans.commit();

        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return false;
        } finally {
            enma.close();
        }
        return true;
    }

    @Override
    public boolean delete(int id) {
        EntityManager enma = JPAConfig.getEntityManager();
        EntityTransaction trans = enma.getTransaction();
        try {
            trans.begin();
            Orders catego = enma.find(Orders.class, id);
            if (catego != null)
                enma.remove(catego);
            trans.commit();
        } catch (Exception e) {
            e.printStackTrace();
            trans.rollback();
            return false;
        } finally {
            enma.close();
        }
        return true;
    }

    @Override
    public boolean softDelete(Orders Orders) {
        // TODO Auto-generated method stub
        return false;
    }

    @Override
    public int count() {
        EntityManager enma = JPAConfig.getEntityManager();
        String jpql = "SELECT count(p) FROM Orders p";
        Query query = enma.createQuery(jpql);
        return ((Long) query.getSingleResult()).intValue();
    }
}
