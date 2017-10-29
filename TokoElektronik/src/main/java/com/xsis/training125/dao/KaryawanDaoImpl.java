package com.xsis.training125.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Karyawan;

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

}
