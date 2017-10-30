package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.PembelianDao;
import com.xsis.training125.dao.ReturDao;
import com.xsis.training125.model.Pembelian;
import com.xsis.training125.model.Retur;

@Transactional
@Service
public class PembelianService {

	@Autowired
	PembelianDao pembelianDao;
	
	public void save(Pembelian pembelian){
		pembelianDao.save(pembelian);
	}
	
	public List<Pembelian> getAllPembelian(){
		return pembelianDao.getAllPembelian();
	}
	
	public Pembelian getPembelianById(int id){
		return pembelianDao.getPembelianById(id);
	}
	

	public void update(Pembelian pembelian) {
		// TODO Auto-generated method stub
		pembelianDao.update(pembelian);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		pembelianDao.delete(id);
	}
}
