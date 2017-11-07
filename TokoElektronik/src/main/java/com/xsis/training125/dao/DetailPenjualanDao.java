package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.DetailPenjualan;

public interface DetailPenjualanDao {

	
	void save(DetailPenjualan detailPenjualan);

	
	List<DetailPenjualan> getAllDetailPenjualan();

	
	DetailPenjualan getDetailPenjualanById(int id);

	
	void update(DetailPenjualan detailPenjualan);

	
	void delete(int id);


	List<DetailPenjualan> getDetailPenjualanByIdPenjualan(int id);


	

}
