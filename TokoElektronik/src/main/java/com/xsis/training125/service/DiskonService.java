package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.DiskonDao;
<<<<<<< HEAD
import com.xsis.training125.model.Diskon;

@Transactional
@Service
public class DiskonService {

	@Autowired
	DiskonDao diskonDao;
	
	public List<Diskon> getAllDiskon() {
		// TODO Auto-generated method stub
		return diskonDao.getAllDiskon();
	}

	public void save(Diskon diskon) {
		// TODO Auto-generated method stub
		diskonDao.save(diskon);
		
	}

	public Diskon getDiskonById(int id) {
		// TODO Auto-generated method stub
		return diskonDao.getDiskonById(id);
	}

	public void update(Diskon diskon) {
		// TODO Auto-generated method stub
		diskonDao.update(diskon);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		diskonDao.delete(id);
	}

=======
import com.xsis.training125.dao.ReturDao;
import com.xsis.training125.model.Diskon;
import com.xsis.training125.model.Retur;

@Transactional
@Service
public class DiskonService {

	@Autowired
	DiskonDao diskonDao;
	
	public void save(Diskon diskon){
		diskonDao.save(diskon);
	}
	
	public List<Diskon> getAllDiskon(){
		return diskonDao.getAllDiskon();
	}
	
	public Diskon getDiskonById(int id){
		return diskonDao.getDiskonById(id);
	}
	

	public void update(Diskon diskon) {
		// TODO Auto-generated method stub
		diskonDao.update(diskon);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		diskonDao.delete(id);
	}
	
>>>>>>> branch 'master' of https://github.com/bootcamp125/toko_elektronik.git
}
