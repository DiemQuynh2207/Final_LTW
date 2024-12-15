package com.webapp3rdyear.dao;

import com.webapp3rdyear.enity.Review;

import java.util.List;

public interface IReviewDao {
    void addReview(Review review);
    void updateReview(Review review);
    void deleteReview(Review review);
    List<Review> getReviewsByProductId(int productId);
    int countRatingsStar(int productId);
    boolean checkOrderStatus(int productId, int orderId);
}
