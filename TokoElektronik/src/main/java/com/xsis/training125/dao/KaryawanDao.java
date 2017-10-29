package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Karyawan;

public interface KaryawanDao {

	public List<Karyawan> Login(String username, String pass);

	public List<Karyawan> getKaryawanByUsername(String username);

}
