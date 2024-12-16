package com.webapp3rdyear.service.impl;

import com.webapp3rdyear.dao.ICartDao;
import com.webapp3rdyear.dao.impl.CartDaoImpl;
import com.webapp3rdyear.enity.Cart;
import com.webapp3rdyear.service.ICartService;

import java.math.BigDecimal;
import java.util.List;

public class CartServiceImpl implements ICartService {
    ICartDao cartDao = new CartDaoImpl();
    @Override
    public void addCart(Cart cart) {
        if (cartDao.getCartByCustomerIDAndProductID(cart.getCustomerID().getUserId(),cart.getProductID().getProductId()) == null) {
            cartDao.addCart(cart);
        }else
        {
            cartDao.updateCart(cart);
        }
    }

    @Override
    public void removeCart(Cart cart) {
        cartDao.deleteCart(cart);
    }

    @Override
    public void updateCart(Cart cart) {
        if (cartDao.getCartByCustomerIDAndProductID(cart.getCustomerID().getUserId(),cart.getProductID().getProductId()) != null) {
            cartDao.updateCart(cart);
        }
    }

    @Override
    public Cart getCartByCustomerIdAndProductId(int customerId, int productId) {
        return cartDao.getCartByCustomerIDAndProductID(customerId,productId);
    }

    @Override
    public List<Cart> getAllCartsByCustomerId(int customerId) {
        return cartDao.getAllCartByCustomerID(customerId);
    }

    @Override
    public BigDecimal getCartTotal(int customerId) {
        return cartDao.getTotalCartByCustomerID(customerId);
    }
}
