package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Diskon;

public interface DiskonDao {
	
	void save(Diskon diskon);

	List<Diskon> getAllDiskon();

	Diskon getDiskonById(int id);

	void update(Diskon diskon);

	void delete(int id);

}
