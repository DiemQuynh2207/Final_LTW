package com.webapp3rdyear.service;

import com.webapp3rdyear.enity.Review;

import java.util.List;

public interface IReviewService {
    void addReview(Review review);
    void updateReview(Review review);
    void deleteReview(Review review);
    List<Review> getReviewsByCustomerId(int customerId);
    int getReviewsByProductIdCount(int customerId);
    boolean checkOrderStatus(int customerId, int orderId);
}
