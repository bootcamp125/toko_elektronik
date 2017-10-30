package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Pembelian;

public interface PembelianDao {


	void save(Pembelian pembelian);

	List<Pembelian> getAllPembelian();

	Pembelian getPembelianById(int id);

	void update(Pembelian pembelian);

	void delete(int id);

}
