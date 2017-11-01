package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.DetailPenjualanDao;
import com.xsis.training125.model.DetailPenjualan;

@Transactional
@Service
public class DetailPenjualanService {

	@Autowired
	DetailPenjualanDao detailPenjualanDao;
	
	public void save(DetailPenjualan detailPenjualan){
		detailPenjualanDao.save(detailPenjualan);
	}
	
	public List<DetailPenjualan> getAllDetailPenjualan(){
		return detailPenjualanDao.getAllDetailPenjualan();
	}
	
	public DetailPenjualan getDetailPenjualanById(int id){
		return detailPenjualanDao.getDetailPenjualanById(id);
	}
	

	public void update(DetailPenjualan detailPenjualan) {
		// TODO Auto-generated method stub
		detailPenjualanDao.update(detailPenjualan);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		detailPenjualanDao.delete(id);
	}
}
