package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Pekerjaan;

@Repository
public class PekerjaanDaoImpl implements PekerjaanDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<Pekerjaan> getAllPekerjaan() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from Pekerjaan";
		List<Pekerjaan> pekerjaan = session.createQuery(myHql).list();
		if(pekerjaan.isEmpty()){
			return null;
		}
		
		return pekerjaan;
	}

	@Override
	public void save(Pekerjaan pekerjaan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(pekerjaan);
		session.flush();
	}
	
	@Override
	public Pekerjaan getPekerjaanById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Pekerjaan pekerjaan = session.get(Pekerjaan.class, id);
		return pekerjaan;
	}

	@Override
	public void update(Pekerjaan pekerjaan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(pekerjaan);
		session.flush();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Pekerjaan pekerjaan = new Pekerjaan();
		pekerjaan.setId(id);	
		session.delete(pekerjaan);
		session.flush();
	}
}
