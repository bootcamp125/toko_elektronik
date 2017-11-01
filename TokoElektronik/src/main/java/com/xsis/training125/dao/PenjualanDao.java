package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Penjualan;

public interface PenjualanDao {

	List<Penjualan> getAllPenjualan();

	Penjualan getPenjualanById(int id);

	void save(Penjualan penjualan);

	void update(Penjualan penjualan);

	void delete(int id);

	
	

}
