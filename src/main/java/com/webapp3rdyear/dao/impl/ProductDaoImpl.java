package com.webapp3rdyear.dao.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.webapp3rdyear.config.JPAConfig;
import com.webapp3rdyear.dao.IProductDao;
import com.webapp3rdyear.enity.Products;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.*;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.PageRequest;

public class ProductDaoImpl implements IProductDao{

	@Override
	public List<Products> findAll() {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Products> query = enma.createNamedQuery("Products.findAll", Products.class);
		return query.getResultList();
	}

	@Override
	public List<Products> findAll(int page, int pageSize) {
		EntityManager enma = JPAConfig.getEntityManager();
		TypedQuery<Products> query = enma.createNamedQuery("Products.findAll", Products.class);
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	@Override
	public Products findById(int id) {
		EntityManager enma = JPAConfig.getEntityManager();
		Products product = enma.find(Products.class, id);
		return product;
	}

	@Override
	public void insert(Products product) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.persist(product);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
		}finally {
			enma.close();
		}
		
	}

	@Override
	public boolean update(Products product) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			enma.merge(product);
			trans.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			return false;
		}finally {
			enma.close();
		}
		return true;
	}

	@Override
	public boolean delete(int id) {
		EntityManager enma = JPAConfig.getEntityManager();
		EntityTransaction trans = enma.getTransaction();
		try {
			trans.begin();
			Products catego = enma.find(Products.class, id);
			if(catego!=null)
				enma.remove(catego);
			trans.commit();
		} catch (Exception e) {
			e.printStackTrace();
			trans.rollback();
			return false;
		}finally {
			enma.close();
		}
		return true;
	}

	@Override
	public List<Products> findByName(String keyword) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Products p WHERE p.PName like :productname";
		TypedQuery<Products> query = enma.createQuery(jpql, Products.class);
		query.setParameter("productname", "%"+keyword+"%");
		
		return query.getResultList();
	}

	@Override
	public List<Products> findByName(String keyword, int page, int pageSize) {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT p FROM Products p WHERE p.PName like :productname";
		TypedQuery<Products> query = enma.createQuery(jpql, Products.class);
		query.setParameter("productname", "%"+keyword+"%");
		query.setFirstResult(page*pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	@Override
	public boolean softDelete(Products Products) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public int count() {
		EntityManager enma = JPAConfig.getEntityManager();
		String jpql = "SELECT count(p) FROM Products p";
		Query query = enma.createQuery(jpql);
		return ((Long)query.getSingleResult()).intValue();
	}

	@Override
	public Page<Products> filterProducts(String pname, BigDecimal minPrice, BigDecimal maxPrice, Integer categoryId,
										 String sortByName, String sortByPrice, int page, int size) {
		EntityManager enma = JPAConfig.getEntityManager();
		CriteriaBuilder cb = enma.getCriteriaBuilder();

		// Main Query for fetching products
		CriteriaQuery<Products> cq = cb.createQuery(Products.class);
		Root<Products> productRoot = cq.from(Products.class);

		List<Predicate> predicates = new ArrayList<>();

		// Filtering conditions
		if (pname != null && !pname.isEmpty()) {
			predicates.add(cb.like(productRoot.get("pname"), "%" + pname + "%"));
		}
		if (minPrice != null) {
			predicates.add(cb.greaterThanOrEqualTo(productRoot.get("price"), minPrice));
		}
		if (maxPrice != null) {
			predicates.add(cb.lessThanOrEqualTo(productRoot.get("price"), maxPrice));
		}
		if (categoryId != null) {
			predicates.add(cb.equal(productRoot.get("categoryID"), categoryId));
		}

		cq.where(predicates.toArray(new Predicate[0]));

		// Sorting conditions
		List<Order> orders = new ArrayList<>();
		if ("ASC".equalsIgnoreCase(sortByPrice)) {
			orders.add(cb.asc(productRoot.get("price")));
		} else if ("DESC".equalsIgnoreCase(sortByPrice)) {
			orders.add(cb.desc(productRoot.get("price")));
		}

		if ("ASC".equalsIgnoreCase(sortByName)) {
			orders.add(cb.asc(productRoot.get("pname")));
		} else if ("DESC".equalsIgnoreCase(sortByName)) {
			orders.add(cb.desc(productRoot.get("pname")));
		}

		cq.orderBy(orders);

		// Execute main query
		Query query = enma.createQuery(cq);
		query.setFirstResult(page * size);
		query.setMaxResults(size);
		List<Products> products = query.getResultList();

		// Count Query
		CriteriaQuery<Long> countQuery = cb.createQuery(Long.class);
		Root<Products> countRoot = countQuery.from(Products.class);
		countQuery.select(cb.count(countRoot));
		countQuery.where(predicates.toArray(new Predicate[0]));

		Long totalRecords = enma.createQuery(countQuery).getSingleResult();
		enma.close();

		return new PageImpl<>(products, PageRequest.of(page, size), totalRecords);
	}

}
