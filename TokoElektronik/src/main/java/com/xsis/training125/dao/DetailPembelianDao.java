package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.DetailPembelian;

public interface DetailPembelianDao {

	
	void save(DetailPembelian detailPembelian);

	
	DetailPembelian getDetailPembelianById(int id);

	
	List<DetailPembelian> getAllDetailPembelian();

	
	void update(DetailPembelian detailPembelian);
	
	void delete(int id);

}
