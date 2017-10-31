package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.EmployeeDao;
import com.xsis.training125.dao.PekerjaanDao;
import com.xsis.training125.dao.PenjualanDao;
import com.xsis.training125.model.Penjualan;


@Transactional
@Service
public class PenjualanService {

	@Autowired
	PenjualanDao penjualanDao;
/*	
	public List<Penjualan> getAllPenjualan() {
		// TODO Auto-generated method stub
		return penjualanDao.getAllPekerjaan();
	}

	public void save(Penjualan penjualan) {
		// TODO Auto-generated method stub
		
	}

	public Penjualan getPenjualanById(int id) {
		// TODO Auto-generated method stub
		return penjualanDao.getPekerjaanById(id);
	}

	public void update(Penjualan penjualan) {
		// TODO Auto-generated method stub
		penjualanDao.update(penjualan);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		penjualanDao.delete(id);
	}*/

	public List<Penjualan> getAllPenjualan() {
		// TODO Auto-generated method stub
		return penjualanDao.getAllPekerjaan();
	}
	
}
