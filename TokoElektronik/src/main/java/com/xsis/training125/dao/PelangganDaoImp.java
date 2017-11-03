package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.xsis.training125.model.Pelanggan;

@Repository
public class PelangganDaoImp implements PelangganDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Pelanggan> getAllPelanggan() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();

		// HQL (hibernate query language)
		String myHql = "from Pelanggan";
		List<Pelanggan> pelanggan = session.createQuery(myHql).list();
		if (pelanggan.isEmpty()) {
			return null;
		}

		return pelanggan;
	}

	@Override
	public void save(Pelanggan pelanggan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.save(pelanggan);
		session.flush();
	}

	@Override
	public Pelanggan getPelangganById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Pelanggan pelanggan = session.get(Pelanggan.class, id);
		return pelanggan;
	}

	@Override
	public void update(Pelanggan pelanggan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(pelanggan);
		session.flush();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Pelanggan pelanggan = new Pelanggan();
		pelanggan.setId(id);	
		session.delete(pelanggan);
		session.flush();
	}

}
