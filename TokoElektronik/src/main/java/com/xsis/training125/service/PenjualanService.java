package com.xsis.training125.service;

import java.util.EmptyStackException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xsis.training125.dao.BarangDao;
import com.xsis.training125.dao.DetailPenjualanDao;
import com.xsis.training125.dao.EmployeeDao;
import com.xsis.training125.dao.PekerjaanDao;
import com.xsis.training125.dao.PenjualanDao;
import com.xsis.training125.model.Barang;
import com.xsis.training125.model.DetailPenjualan;
import com.xsis.training125.model.Pekerjaan;
import com.xsis.training125.model.Penjualan;

@Transactional
@Service
public class PenjualanService {

	@Autowired
	PenjualanDao penjualanDao;
	@Autowired
	DetailPenjualanDao detailPenjualanDao;
	@Autowired
	BarangDao barangDao;

	public List<Penjualan> getAllPenjualan() {
		// TODO Auto-generated method stuba
		return penjualanDao.getAllPenjualan();
	}

	public Penjualan getPenjualanById(int id) {
		// TODO Auto-generated method stub
		return penjualanDao.getPenjualanById(id);
	}

	public void update(Penjualan penjualan) {
		// TODO Auto-generated method stub
		penjualanDao.update(penjualan);
	}

	public void delete(int id, Penjualan penjualan) {
		// TODO Auto-generated method stub
		for (DetailPenjualan detailPenjualan : penjualan.getDetailPenjualan()) {
			int idPenjualan = detailPenjualan.getId();
			detailPenjualanDao.delete(idPenjualan);
		}
		penjualanDao.delete(id);
	}

	public void save(Penjualan penjualan) {
		// TODO Auto-generated method stub
		penjualanDao.save(penjualan);
		for (DetailPenjualan detailPenjualan : penjualan.getDetailPenjualan()) {
			detailPenjualan.setPenjualan(penjualan);
			detailPenjualanDao.save(detailPenjualan);
			
			Barang barang = barangDao.getBarangById(detailPenjualan.getBarang().getId());
			barang.setStock(barang.getStock()-detailPenjualan.getJumlah());
			barangDao.update(barang);
		}
		
	}

}
