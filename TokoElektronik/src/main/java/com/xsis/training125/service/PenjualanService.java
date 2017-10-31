package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.PenjualanDao;
import com.xsis.training125.model.Penjualan;


@Transactional
@Service
public class PenjualanService {

	@Autowired
	PenjualanDao penjualanDao;
	
	public void save(Penjualan penjualan){
		penjualanDao.save(penjualan);
	}
	
	public List<Penjualan> getAllPenjualan(){
		return penjualanDao.getAllPenjualan();
	}
	
	public Penjualan getPenjualanById(int id){
		return penjualanDao.getPenjualanById(id);
	}
	

	public void update(Penjualan penjualan) {
		// TODO Auto-generated method stub
		penjualanDao.update(penjualan);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		penjualanDao.delete(id);
	}
}
