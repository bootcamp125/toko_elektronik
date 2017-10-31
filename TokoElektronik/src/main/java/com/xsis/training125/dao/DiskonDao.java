package com.xsis.training125.dao;

import java.util.List;

import com.xsis.training125.model.Diskon;
<<<<<<< HEAD
=======
import com.xsis.training125.model.Retur;
>>>>>>> branch 'master' of https://github.com/bootcamp125/toko_elektronik.git

public interface DiskonDao {

<<<<<<< HEAD
	List<Diskon> getAllDiskon();

	void save(Diskon diskon);
=======
	
	void save(Diskon diskon);

	List<Diskon> getAllDiskon();
>>>>>>> branch 'master' of https://github.com/bootcamp125/toko_elektronik.git

	Diskon getDiskonById(int id);

	void update(Diskon diskon);

	void delete(int id);

}
