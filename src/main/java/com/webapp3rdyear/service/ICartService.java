package com.webapp3rdyear.service;

import com.webapp3rdyear.enity.Cart;

import java.math.BigDecimal;
import java.util.List;

public interface ICartService {
    void addCart(Cart cart);
    void removeCart(Cart cart);
    void updateCart(Cart cart);
    Cart getCartByCustomerIdAndProductId(int customerId, int productId);
    List<Cart> getAllCartsByCustomerId(int customerId);
    BigDecimal getCartTotal(int customerId);
}
