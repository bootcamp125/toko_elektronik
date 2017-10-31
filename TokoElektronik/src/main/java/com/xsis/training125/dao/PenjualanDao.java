package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Penjualan;

public interface PenjualanDao {

	
	void delete(int id);

	void save(Penjualan penjualan);

	List<Penjualan> getAllPenjualan();

	Penjualan getPenjualanById(int id);

	void update(Penjualan penjualan);

}
