package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;

public class Pembelian {

	@Column(name="no_faktur")
	private int noFaktur;
	
	private Distributor idDistributor;
	
	private Barang idBarang;
	@Column(name="jumlah_barang")
	private int jumlahBarang;
	@Column(name="total_harga")
	private int totalHarga;
	@Column(name="tanggal_pembelian")
	private Date tanggalPembelian;
	
	private Karyawan idKaryawan;
	
	public Pembelian(){}

	public Pembelian(int noFaktur, Distributor idDistributor, Barang idBarang, int jumlahBarang, int totalHarga,
			Date tanggalPembelian, Karyawan idKaryawan) {
		super();
		this.noFaktur = noFaktur;
		this.idDistributor = idDistributor;
		this.idBarang = idBarang;
		this.jumlahBarang = jumlahBarang;
		this.totalHarga = totalHarga;
		this.tanggalPembelian = tanggalPembelian;
		this.idKaryawan = idKaryawan;
	}

	public int getNoFaktur() {
		return noFaktur;
	}

	public void setNoFaktur(int noFaktur) {
		this.noFaktur = noFaktur;
	}

	public Distributor getIdDistributor() {
		return idDistributor;
	}

	public void setIdDistributor(Distributor idDistributor) {
		this.idDistributor = idDistributor;
	}

	public Barang getIdBarang() {
		return idBarang;
	}

	public void setIdBarang(Barang idBarang) {
		this.idBarang = idBarang;
	}

	public int getJumlahBarang() {
		return jumlahBarang;
	}

	public void setJumlahBarang(int jumlahBarang) {
		this.jumlahBarang = jumlahBarang;
	}

	public int getTotalHarga() {
		return totalHarga;
	}

	public void setTotalHarga(int totalHarga) {
		this.totalHarga = totalHarga;
	}

	public Date getTanggalPembelian() {
		return tanggalPembelian;
	}

	public void setTanggalPembelian(Date tanggalPembelian) {
		this.tanggalPembelian = tanggalPembelian;
	}

	public Karyawan getIdKaryawan() {
		return idKaryawan;
	}

	public void setIdKaryawan(Karyawan idKaryawan) {
		this.idKaryawan = idKaryawan;
	}
	
	
	
}
