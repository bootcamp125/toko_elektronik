package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.DetailPembelian;


@Repository
public class DetailPembelianDaoImpl implements DetailPembelianDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public void save(DetailPembelian detailPembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(detailPembelian);
		session.flush();
	}

	
	@Override
	public DetailPembelian getDetailPembelianById(int id) {
		Session session = sessionFactory.getCurrentSession();
		DetailPembelian detailPembelian = session.get(DetailPembelian.class, id);
		return detailPembelian;
	}

	
	@Override
	public List<DetailPembelian> getAllDetailPembelian() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from DetailPembelian";
		List<DetailPembelian> detailPembelian = session.createQuery(myHql).list();
		if(detailPembelian.isEmpty()){
			return null;
		}
		
		return detailPembelian;
	}


	@Override
	public void update(DetailPembelian detailPembelian) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(detailPembelian);
		session.flush();
	}

	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		DetailPembelian detailPembelian = new DetailPembelian();
		detailPembelian.setId(id);	
		session.delete(detailPembelian);
		session.flush();
	}

}
