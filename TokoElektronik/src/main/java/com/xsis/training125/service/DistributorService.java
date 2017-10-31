package com.xsis.training125.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.DistributorDao;
import com.xsis.training125.model.Distributor;



@Transactional
@Service
public class DistributorService {

	@Autowired
	DistributorDao distributorDao;
	
	public void save(Distributor distributor){
		distributorDao.save(distributor);
	}
	
	public List<Distributor> getAllDistributor(){
		return distributorDao.getAllDistributor();
	}
	
	public Distributor getDistributorById(int id){
		return distributorDao.getDistributorById(id);
	}
	

	public void update(Distributor distributor) {
		// TODO Auto-generated method stub
		distributorDao.update(distributor);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		distributorDao.delete(id);
	}
}
