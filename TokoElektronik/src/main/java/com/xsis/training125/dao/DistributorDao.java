package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Distributor;

public interface DistributorDao {

	
	void save(Distributor distributor);


	List<Distributor> getAllDistributor();

	
	Distributor getDistributorById(int id);

	void update(Distributor distributor);


	void delete(int id);

	
}
