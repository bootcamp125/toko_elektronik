package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.model.Pekerjaan;

@Repository
public class KaryawanDaoImpl implements KaryawanDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<Karyawan> Login(String username, String pass) {
		Session session = sessionFactory.getCurrentSession();
		String myHql = "from Karyawan e where e.usernameK = '" + username + "' and e.passwordK = '" + pass + "'";
		List<Karyawan> karyawan = session.createQuery(myHql).list();
		if (karyawan.isEmpty()) {
			return null;
		}
		return karyawan;

	}

	@Override
	public List<Karyawan> getKaryawanByUsername(String username) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		String myHql = "from Karyawan e where e.usernameK = '" + username + "'";
		List<Karyawan> karyawan = session.createQuery(myHql).list();
		if (karyawan.isEmpty()) {
			return null;
		}
		return karyawan;
	}

	@Override
	public List<Karyawan> getAllKaryawan() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		// HQL (hibernate query language)
		String myHql = "from Karyawan";
		List<Karyawan> karyawan = session.createQuery(myHql).list();
		if(karyawan.isEmpty()){
			return null;
		}
		return karyawan;
	}

	@Override
	public void save(Karyawan karyawan) {
		// TODO Auto-generated method stub
		
		Session session = sessionFactory.getCurrentSession();
		/*int id = (int) session.save(karyawan);
		karyawan.setId(id);
		
		Pekerjaan pekerjaan = new Pekerjaan();
		pekerjaan.setId(id);
		pekerjaan.setDeskripsi(karyawan.getPekerjaan().getDeskripsi());*/
		
		session.save(karyawan);
		session.flush();
	}

	@Override
	public Karyawan getKaryawanById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		
		Karyawan karyawan = session.get(Karyawan.class, id);
		return karyawan;
	}

	@Override
	public void update(Karyawan karyawan) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(karyawan);
		session.flush();
	}

	@Override
	public void delete(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Karyawan karyawan = new Karyawan();
		karyawan.setId(id);
		session.delete(karyawan);
		session.flush();
	}

}
