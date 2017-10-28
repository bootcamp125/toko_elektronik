package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Barang;


@Repository
public class BarangDaoImpl implements BarangDao  {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Barang> getAllBarang() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from Barang";
		List<Barang> barang = session.createQuery(myHql).list();
		if(barang.isEmpty()){
			return null;
		}
		
		return barang;
	}

	@Override
	public void save(Barang barang) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(barang);
		session.flush();
	}

}
