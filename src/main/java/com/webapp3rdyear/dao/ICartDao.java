package com.webapp3rdyear.dao;

import com.webapp3rdyear.enity.Cart;

import java.math.BigDecimal;
import java.util.List;

public interface ICartDao {
    void addCart(Cart cart);
    void updateCart(Cart cart);
    void deleteCart(Cart cart);
    Cart getCartByCustomerIDAndProductID(int customerID, int productID);
    List<Cart> getAllCartByCustomerID(int customerID);
    BigDecimal getTotalCartByCustomerID(int customerID);
}
