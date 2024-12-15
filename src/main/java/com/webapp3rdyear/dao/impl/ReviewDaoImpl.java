package com.webapp3rdyear.dao.impl;

import com.webapp3rdyear.config.JPAConfig;
import com.webapp3rdyear.dao.IReviewDao;
import com.webapp3rdyear.enity.Review;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class ReviewDaoImpl implements IReviewDao {
    IReviewDao reviewDao = new ReviewDaoImpl();
    @Override
    public void addReview(Review review) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            entityManager.persist(review);
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
    public void updateReview(Review review) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            entityManager.merge(review);
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
    public void deleteReview(Review review) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        EntityTransaction transaction = entityManager.getTransaction();
        try {
            transaction.begin();
            if (review != null) {
                entityManager.remove(review);
            }
            else {
                throw new Exception("Review is null");
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
    public List<Review> getReviewsByProductId(int productId) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        String jpql = "select re from Review re where re.ProductID.productId=:productId";
        TypedQuery<Review> query = entityManager.createQuery(jpql, Review.class);
        query.setParameter("productId", productId);
        List<Review> reviews = query.getResultList();
        entityManager.close();
        return reviews;
    }

    @Override
    public int countRatingsStar(int productId) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        String jpql = "select count(re) from Review re where re.ProductID.productId=:productId";
        TypedQuery<Integer> query = entityManager.createQuery(jpql, Integer.class);
        query.setParameter("productId", productId);
        int count = query.getSingleResult();
        entityManager.close();
        return count;
    }

    @Override
    public boolean checkOrderStatus(int productId, int orderId) {
        EntityManager entityManager = JPAConfig.getEntityManager();
        String jpql = "select case when count(re) > 0 then true else false end " +
                "from Review re where re.OrderID.orderId =: orderId and re.ProductID.productId =: productId and re.OrderID.status = 'DELIVERED'";
        TypedQuery<Boolean> query = entityManager.createQuery(jpql, Boolean.class);
        query.setParameter("productId", productId);
        query.setParameter("orderId", orderId);
        boolean status = query.getSingleResult();
        entityManager.close();
        return status;
    }
}
