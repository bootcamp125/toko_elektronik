package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.DiskonDao;
import com.xsis.training125.model.Diskon;

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
	
}
