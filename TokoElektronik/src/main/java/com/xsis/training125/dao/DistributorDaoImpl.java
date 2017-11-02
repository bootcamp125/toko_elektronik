package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Distributor;

@Repository
public class DistributorDaoImpl implements DistributorDao {

	@Autowired
	SessionFactory sessionFactory;
	
	public void save(Distributor distributor) {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		session.save(distributor);
		session.flush();
	}


	@Override
	public List<Distributor> getAllDistributor() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from Distributor";
		List<Distributor> distributor = session.createQuery(myHql).list();
		if(distributor.isEmpty()){
			return null;
		}
		
		return distributor;
	}

	
	@Override
	public Distributor getDistributorById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Distributor distributor = session.get(Distributor.class, id);
		return distributor;
	}


	@Override
	public void update(Distributor distributor) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(distributor);
		session.flush();
	}

	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Distributor distributor = new Distributor();
		distributor.setId(id);	
		session.delete(distributor);
		session.flush();
	}

}
