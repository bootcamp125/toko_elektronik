package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Pekerjaan;

public interface PekerjaanDao {

	
	void delete(int id);

	
	void save(Pekerjaan pekerjaan);

	
	Pekerjaan getPekerjaanById(int id);

	void update(Pekerjaan pekerjaan);

	List<Pekerjaan> getAllPekerjaan();

}
