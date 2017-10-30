package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Karyawan;

public interface KaryawanDao {

	public List<Karyawan> Login(String username, String pass);

	public List<Karyawan> getKaryawanByUsername(String username);

	public List<Karyawan> getAllKaryawan();

	public void save(Karyawan karyawan);

	public Karyawan getKaryawanById(int id);

	public void update(Karyawan karyawan);

	public void delete(int id);

}
