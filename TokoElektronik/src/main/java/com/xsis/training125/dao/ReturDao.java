package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Retur;

public interface ReturDao {

	
	void save(Retur retur);

	List<Retur> getAllRetur();

	
	Retur getReturById(int id);

	void update(Retur retur);

	void delete(int id);

}
