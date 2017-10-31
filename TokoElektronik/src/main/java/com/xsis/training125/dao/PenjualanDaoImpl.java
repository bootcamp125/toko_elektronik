package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.xsis.training125.model.Penjualan;

public class PenjualanDaoImpl implements PenjualanDao{

	@Autowired
	SessionFactory sessionFactory;
	
	

}
