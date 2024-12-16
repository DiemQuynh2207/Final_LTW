package com.webapp3rdyear.dao.impl;

import com.webapp3rdyear.config.JPAConfig;
import com.webapp3rdyear.dao.ICartDao;
import com.webapp3rdyear.enity.Cart;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.math.BigDecimal;
import java.util.List;

public class CartDaoImpl implements ICartDao {
    @Override
    public void addCart(Cart cart) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            Cart cart1 = entityManager.merge(cart);
            entityManager.persist(cart1);
            transaction.commit();
        }catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            throw e;
        }finally {
            entityManager.close();
        }

    }

    @Override
    public void updateCart(Cart cart) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            entityManager.merge(cart);
            transaction.commit();
        }catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
            throw e;
        }finally {
            entityManager.close();
        }
    }

    @Override
    public void deleteCart(Cart cart) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            if (cart != null) {
                Cart cart1 = entityManager.merge(cart);
                entityManager.remove(cart1);
            }
            else {
                throw new Exception("Cart is null");
            }
            transaction.commit();
        }catch (Exception e) {
            transaction.rollback();
            e.printStackTrace();
        }finally {
            entityManager.close();
        }

    }

    @Override
    public Cart getCartByCustomerIDAndProductID(int customerID, int productID) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        String jpql = "select c from Cart c where c.CustomerID.userId=:customerID and c.ProductID.productId=:productID";
        try {
            TypedQuery<Cart> query = entityManager.createQuery(jpql, Cart.class);
            query.setParameter("customerID", customerID);
            query.setParameter("productID", productID);
            return query.getSingleResult();
        }catch (Exception e) {
            e.printStackTrace();
        }finally {
            entityManager.close();
        }
        return null;
    }

    @Override
    public List<Cart> getAllCartByCustomerID(int customerID) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        String jpql = "select c from Cart c where c.CustomerID.userId=:customerID";
        TypedQuery<Cart> query = entityManager.createQuery(jpql, Cart.class);
        query.setParameter("customerID", customerID);
        List<Cart> carts = query.getResultList();
        entityManager.close();
        return carts;
    }

    @Override
    public BigDecimal getTotalCartByCustomerID(int customerID) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        String jpql = "select sum(c.ProductID.price * c.quantity) from Cart c where c.CustomerID.userId=:customerID";
        TypedQuery<BigDecimal> query = entityManager.createQuery(jpql, BigDecimal.class);
        query.setParameter("customerID", customerID);
        BigDecimal total = query.getSingleResult();
        return total;
    }
}
