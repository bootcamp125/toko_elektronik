package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.PelangganDao;
import com.xsis.training125.model.Pelanggan;

@Transactional
@Service
public class PelangganService {

	@Autowired
	PelangganDao pelangganDao;
	
	public List<Pelanggan> getAllPelanggan() {
		// TODO Auto-generated method stub
		return pelangganDao.getAllPelanggan();
	}

	public void save(Pelanggan pelanggan) {
		// TODO Auto-generated method stub
		pelangganDao.save(pelanggan);
	}

	public Pelanggan getPelangganById(int id) {
		// TODO Auto-generated method stub
		return pelangganDao.getPelangganById(id);
	}

	public void update(Pelanggan pelanggan) {
		// TODO Auto-generated method stub
		pelangganDao.update(pelanggan);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		pelangganDao.delete(id);
	}

}
