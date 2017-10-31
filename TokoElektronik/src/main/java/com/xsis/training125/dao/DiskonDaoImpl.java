package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Diskon;
import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Retur;

@Repository
public class DiskonDaoImpl implements DiskonDao{

	@Autowired
	SessionFactory sessionFactory;

	
	@Override
	public void save(Diskon diskon) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(diskon);
		session.flush();
	}

	
	@Override
	public List<Diskon> getAllDiskon() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from Diskon";
		List<Diskon> diskon = session.createQuery(myHql).list();
		if(diskon.isEmpty()){
			return null;
		}
		
		return diskon;
	}


	@Override
	public Diskon getDiskonById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Diskon diskon = session.get(Diskon.class, id);
		return diskon;
	}

	
	@Override
	public void update(Diskon diskon) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(diskon);
		session.flush();
	}

	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Diskon diskon = new Diskon();
		diskon.setId(id);	
		session.delete(diskon);
		session.flush();
	}
	
	
	
}
