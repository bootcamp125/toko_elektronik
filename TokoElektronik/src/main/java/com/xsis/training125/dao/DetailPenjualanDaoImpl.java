package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.DetailPenjualan;

@Repository
public class DetailPenjualanDaoImpl implements DetailPenjualanDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void save(DetailPenjualan detailPenjualan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detailPenjualan);
		session.flush();
	}

	
	@Override
	public List<DetailPenjualan> getAllDetailPenjualan() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from DetailPenjualan";
		List<DetailPenjualan> detailPenjualan = session.createQuery(myHql).list();
		if(detailPenjualan.isEmpty()){
			return null;
		}
		
		return detailPenjualan;
	}

	
	@Override
	public DetailPenjualan getDetailPenjualanById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		DetailPenjualan detailPenjualan = session.get(DetailPenjualan.class, id);
		return detailPenjualan;
	}

	
	@Override
	public void update(DetailPenjualan detailPenjualan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(detailPenjualan);
		session.flush();
	}

	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		DetailPenjualan detailPenjualan = new DetailPenjualan();
		detailPenjualan.setId(id);	
		session.delete(detailPenjualan);
		session.flush();
	}

}
