package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.DetailPembelianDao;
import com.xsis.training125.model.DetailPembelian;

;

@Transactional
@Service
public class DetailPembelianService {

	@Autowired
	DetailPembelianDao detailPembelianDao;
	
	public void save(DetailPembelian detailPembelian){
		detailPembelianDao.save(detailPembelian);
	}
	
	public List<DetailPembelian> getAllDetailPembelian(){
		return detailPembelianDao.getAllDetailPembelian();
	}
	
	public DetailPembelian getDetailPembelianById(int id){
		return detailPembelianDao.getDetailPembelianById(id);
	}
	

	public void update(DetailPembelian detailPembelian) {
		// TODO Auto-generated method stub
		detailPembelianDao.update(detailPembelian);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		detailPembelianDao.delete(id);
	}

	
	/*
	public void save(DetailPembelian detailPembelian){
		detailPembelianDao.save(detailPembelian);
	}

	public List<DetailPembelian> getAllDetailPembelian() {
		// TODO Auto-generated method stub
		return detailPembelianDao.getAllDetailPembelian();
	}

	public DetailPembelian getDetailPembelianById(int id) {
		// TODO Auto-generated method stub
		return detailPembelianDao.getDetailPembelianById(id);
	}

	public void update(DetailPembelian detailPembelian) {
		// TODO Auto-generated method stub
		detailPembelianDao.update(detailPembelian);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		detailPembelianDao.delete(id);
	}*/

}
