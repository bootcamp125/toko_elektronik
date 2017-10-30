package com.xsis.training125.dao;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Barang;
import com.xsis.training125.model.Retur;

@Repository
public class ReturDaoImpl implements ReturDao{

	@Autowired
	SessionFactory sessionFactory;
	
			
			@Override
			public List<Retur> getAllRetur() {
				// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				
				// HQL (hibernate query language)
				String myHql = "from Retur";
				List<Retur> retur = session.createQuery(myHql).list();
				if(retur.isEmpty()){
					return null;
				}
				
				return retur;
			}

			@Override
			public void save(Retur retur) {
				// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				session.save(retur);
				session.flush();
			}

			@Override
			public Retur getReturById(int id) {
				// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				Retur retur = session.get(Retur.class, id);
				return retur;
			}

			@Override
			public void update(Retur retur) {
				// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				session.update(retur);
				session.flush();
			}

			@Override
			public void delete(int id) {
				// TODO Auto-generated method stub
				Session session = sessionFactory.getCurrentSession();
				Retur retur = new Retur();
				retur.setId(id);	
				session.delete(retur);
				session.flush();
			}

}
