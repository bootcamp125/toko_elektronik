package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Barang;
import com.xsis.training125.model.Penjualan;

@Repository
public class PenjualanDaoImpl implements PenjualanDao{

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Penjualan> getAllPenjualan() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String myHql = "from Penjualan";
		List<Penjualan> penjualan = session.createQuery(myHql).list();
		if(penjualan.isEmpty()){
			return null;
		}
		return penjualan;
	}


	@Override
	public Penjualan getPenjualanById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Penjualan penjualan = session.get(Penjualan.class, id);
		return penjualan;
	}

	@Override
	public void save(Penjualan penjualan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(penjualan);
		session.flush();
	}

	@Override
	public void update(Penjualan penjualan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(penjualan);
		session.flush();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Penjualan penjualan = new Penjualan();
		penjualan.setNoNota(id);		
		session.delete(penjualan);
		session.flush();
	}




	
	
	

}
