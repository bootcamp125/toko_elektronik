package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.BarangDao;
import com.xsis.training125.dao.EmployeeDao;
import com.xsis.training125.model.Barang;

@Transactional
@Service
public class BarangService {

	@Autowired
	BarangDao barangDao;
	
	public List<Barang> getAllBarang() {
		// TODO Auto-generated method stub
		return barangDao.getAllBarang();
	}


}
