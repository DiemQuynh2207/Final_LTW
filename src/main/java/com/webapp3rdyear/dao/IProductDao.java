package com.webapp3rdyear.dao;

import java.math.BigDecimal;
import java.util.List;

import com.webapp3rdyear.enity.Products;
import org.springframework.data.domain.Page;


public interface IProductDao {
	List<Products> findAll();
	
	List<Products> findAll(int page, int pageSize);
	
	Products findById(int id);
	
	void insert(Products product);
		 
	boolean update(Products product); 
	
	boolean delete(int id);
	
	List<Products> findByName(String keyword);
	
	List<Products> findByName(String keyword, int page, int pageSize);
	
	boolean softDelete(Products product);
	
	int count();

	Page<Products> filterProducts(String pname, BigDecimal minPrice, BigDecimal maxPrice, Integer categoryId,
								  String sortByName, String sortByPrice, int page, int size);
}
