package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.xsis.training125.dao.KaryawanDao;
import com.xsis.training125.model.Employee;
import com.xsis.training125.model.Karyawan;

@Transactional
@Service
public class KaryawanService {

	@Autowired
	KaryawanDao karyawanDao;
	
	public List<Karyawan> Login(String username, String pass) {
		// TODO Auto-generated method stub
		return karyawanDao.Login(username,pass);
	}

	public List<Karyawan> getKaryawanByUsername(String username) {
		// TODO Auto-generated method stub
		return karyawanDao.getKaryawanByUsername(username);
	}

}
