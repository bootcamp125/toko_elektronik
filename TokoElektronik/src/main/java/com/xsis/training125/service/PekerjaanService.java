package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.KaryawanDao;
import com.xsis.training125.dao.PekerjaanDao;
import com.xsis.training125.model.Karyawan;
import com.xsis.training125.model.Pekerjaan;

@Transactional
@Service
public class PekerjaanService {

	@Autowired
	PekerjaanDao pekerjaanDao;
	@Autowired
	KaryawanDao karyawanDao;
	
	public List<Pekerjaan> getAllPekerjaan() {
		// TODO Auto-generated method stub
		return pekerjaanDao.getAllPekerjaan();
	}

	public void save(Pekerjaan pekerjaan) {
		// TODO Auto-generated method stub		
		pekerjaanDao.save(pekerjaan);
		
		for(Karyawan karyawan : pekerjaan.getKaryawan()){
			karyawan.setPekerjaan(pekerjaan);
			karyawanDao.save(karyawan);
		}
	}

	public Pekerjaan getPekerjaanById(int id) {
		// TODO Auto-generated method stub
		return pekerjaanDao.getPekerjaanById(id);
	}

	public void update(Pekerjaan pekerjaan) {
		// TODO Auto-generated method stub
		pekerjaanDao.update(pekerjaan);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		pekerjaanDao.delete(id);
	}
}
