package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Distributor;
import com.xsis.training125.model.Employee;

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
		return null;
	}

	
	@Override
	public Distributor getDistributorById(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void update(Distributor distributor) {
		// TODO Auto-generated method stub
		
	}

	
	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		
	}

}
