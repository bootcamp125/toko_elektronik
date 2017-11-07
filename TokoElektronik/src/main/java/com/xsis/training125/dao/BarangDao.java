package com.xsis.training125.dao;

import java.util.List;
import com.xsis.training125.model.Barang;
import com.xsis.training125.model.DetailPenjualan;
import com.xsis.training125.model.Employee;

public interface BarangDao {

	List<Barang> getAllBarang();
	
	List<Barang> getAllBarangByStock();

	void save(Barang barang);

	Barang getBarangById(int id);

	void update(Barang barang);

	void delete(int id);

	

	

}
