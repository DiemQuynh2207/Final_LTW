package com.webapp3rdyear.service;

import java.math.BigDecimal;
import java.util.List;

import com.webapp3rdyear.enity.Products;
import org.springframework.data.domain.Page;


public interface IProductService {
List<Products> findAll();
	
	List<Products> findAll(int page, int pageSize);
	
	Products findById(int id);
	
	void insert(Products Product);
	 
	boolean update(Products Product);
	
	boolean delete(int id);
	
	List<Products> findByName(String keyword);
	
	List<Products> findByName(String keyword, int page, int pageSize);
	
	boolean softDelete(Products Product);
	
	int count();

	Page<Products> filterProducts(String pname, BigDecimal minPrice, BigDecimal maxPrice, Integer categoryId,
								  String sortByName, String sortByPrice, int page, int size);
}
