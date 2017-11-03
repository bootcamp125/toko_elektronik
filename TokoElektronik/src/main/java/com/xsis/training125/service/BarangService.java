package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.BarangDao;
import com.xsis.training125.model.Barang;
import com.xsis.training125.model.Employee;

@Transactional
@Service
public class BarangService {

	@Autowired
	BarangDao barangDao;
	
	public List<Barang> getAllBarang() {
		// TODO Auto-generated method stub
		return barangDao.getAllBarang();
	}

	public void save(Barang barang) {
		// TODO Auto-generated method stub		
			barangDao.save(barang);

		
	}

	public Barang getBarangById(int id) {
		// TODO Auto-generated method stub
		return barangDao.getBarangById(id);
	}

	public void update(Barang barang) {
		// TODO Auto-generated method stub
		barangDao.update(barang);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		barangDao.delete(id);
	}

	public List<Barang> getAllBarangByStock() {
		// TODO Auto-generated method stub
		return barangDao.getAllBarangByStock();
	}

	


}
