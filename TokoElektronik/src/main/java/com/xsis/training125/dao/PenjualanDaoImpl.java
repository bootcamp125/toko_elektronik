package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Penjualan;

@Repository
public class PenjualanDaoImpl implements PenjualanDao{

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Penjualan> getAllPekerjaan() {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
