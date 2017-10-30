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
	public void save(Retur retur) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(retur);
		session.flush();
	}

	/* (non-Javadoc)
	 * @see com.xsis.training125.dao.ReturDao#getAllRetur()
	 */
	@Override
	public List<Retur> getAllRetur() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String myHql ="from RETUR";
		List<Retur> returs = session.createQuery(myHql).list();
		if(returs.isEmpty()){
			return null;
		}
		return returs;
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
