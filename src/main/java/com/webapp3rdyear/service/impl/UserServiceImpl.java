package com.webapp3rdyear.service.impl;

import java.util.List;

import com.webapp3rdyear.dao.IUserDao;
import com.webapp3rdyear.dao.impl.UserDaoImpl;
import com.webapp3rdyear.enity.Users;
import com.webapp3rdyear.service.IUserService;


public class UserServiceImpl implements IUserService{
	IUserDao iud = new UserDaoImpl();
	@Override
	public List<Users> findAll() {
		// TODO Auto-generated method stub
		return iud.findAll();
	}

	@Override
	public List<Users> findAll(int page, int pageSize) {
		// TODO Auto-generated method stub
		return iud.findAll(page, pageSize);
	}

	@Override
	public Users findById(int id) {
		// TODO Auto-generated method stub
		return iud.findById(id);
	}

	@Override
	public Users findByEmail(String email) {
		// TODO Auto-generated method stub
		return iud.findByEmail(email);
	}

	@Override
	public Users findByUserName(String username) {
		// TODO Auto-generated method stub
		return iud.findByUserName(username);
	}

	@Override
	public void insert(Users users) {
		// TODO Auto-generated method stub
		iud.insert(users);
	}

	@Override
	public boolean register(Users users) {
		// TODO Auto-generated method stub
		return iud.register(users);
	}

	@Override
	public boolean update(Users users) {
		// TODO Auto-generated method stub
		return iud.update(users);
	}

	@Override
	public boolean delete(String username) {
		// TODO Auto-generated method stub
		return iud.delete(username);
	}

	@Override
	public Users login(String username, String password) {
		Users user = this.get(username);
		if (user != null && password.equals(user.getAccountpassword())) {
			return user;
		}
		return null;
	}

	@Override
	public boolean softDelete(Users users) {
		// TODO Auto-generated method stub
		return iud.softDelete(users);
	}

	@Override
	public int count() {
		// TODO Auto-generated method stub
		return iud.count();
	}

	@Override
	public Users get(String username) {
		return iud.findByUserName(username);
	}

}
