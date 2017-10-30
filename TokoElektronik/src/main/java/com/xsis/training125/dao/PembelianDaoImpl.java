package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Pembelian;
import com.xsis.training125.model.Retur;

@Repository
public class PembelianDaoImpl implements PembelianDao{

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void save(Pembelian pembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(pembelian);
		session.flush();
	}

	@Override
	public List<Pembelian> getAllPembelian() {
		// TODO Auto-generated method stub
		return null;
	}

	
	@Override
	public Pembelian getPembelianById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Pembelian pembelian = session.get(Pembelian.class, id);
		return pembelian;
	}

	
	@Override
	public void update(Pembelian pembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(pembelian);
		session.flush();
	}

	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Pembelian pembelian = new Pembelian();
		pembelian.setId(id);	
		session.delete(pembelian);
		session.flush();
	}

}
