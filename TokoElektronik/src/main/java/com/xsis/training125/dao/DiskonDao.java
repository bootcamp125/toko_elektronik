package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Diskon;

public interface DiskonDao {

	List<Diskon> getAllDiskon();

	void save(Diskon diskon);

	Diskon getDiskonById(int id);

	void update(Diskon diskon);

	void delete(int id);

}
