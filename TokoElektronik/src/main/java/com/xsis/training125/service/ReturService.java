package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.ReturDao;
import com.xsis.training125.model.Retur;

@Transactional
@Service
public class ReturService {

	@Autowired
	ReturDao returDao;
	
	public void save(Retur retur){
		returDao.save(retur);
	}
	
	public List<Retur> getAllRetur(){
		return returDao.getAllRetur();
	}
}
