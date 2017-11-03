package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Pelanggan;

public interface PelangganDao {

	List<Pelanggan> getAllPelanggan();

	void save(Pelanggan pelanggan);

	Pelanggan getPelangganById(int id);

	void update(Pelanggan pelanggan);

	void delete(int id);

}
