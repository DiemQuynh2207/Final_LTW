package com.webapp3rdyear.service.impl;

import com.webapp3rdyear.dao.IReviewDao;
import com.webapp3rdyear.dao.impl.ReviewDaoImpl;
import com.webapp3rdyear.enity.Review;
import com.webapp3rdyear.service.IReviewService;

import java.util.List;

public class ReviewServiceImpl implements IReviewService {
    IReviewDao reviewDao = new ReviewDaoImpl();
    @Override
    public void addReview(Review review) {
        if (reviewDao.checkOrderStatus(review.getProductID().getProductId(),review.getOrderID().getOrderId())){
            reviewDao.addReview(review);
        }
    }

    @Override
    public void updateReview(Review review) {
        if (reviewDao.checkOrderStatus(review.getProductID().getProductId(),review.getOrderID().getOrderId())){
            reviewDao.updateReview(review);
        }
    }

    @Override
    public void deleteReview(Review review) {
        reviewDao.deleteReview(review);
    }

    @Override
    public List<Review> getReviewsByCustomerId(int customerId) {
        return reviewDao.getReviewsByProductId(customerId);
    }

    @Override
    public int getReviewsByProductIdCount(int productId) {
        return reviewDao.countRatingsStar(productId);
    }

    @Override
    public boolean checkOrderStatus(int customerId, int orderId) {
        return reviewDao.checkOrderStatus(customerId,orderId);
    }
}
