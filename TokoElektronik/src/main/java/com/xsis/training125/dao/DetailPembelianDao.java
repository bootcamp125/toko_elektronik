package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.DetailPembelian;
import com.xsis.training125.model.Employee;

public interface DetailPembelianDao {

	
	void save(DetailPembelian detailPembelian);

	
	DetailPembelian getDetailPembelianById(int id);

	
	List<DetailPembelian> getAllDetailPembelian();

	
	void update(DetailPembelian detailPembelian);
	
	void delete(int id);
/*
	public void save(DetailPembelian detailPembelian);

	public List<DetailPembelian> getAllDetailPembelian();

	public DetailPembelian getDetailPembelianById(int id);

	public void update(DetailPembelian detailPembelian);

	public void delete(int id);*/
}
