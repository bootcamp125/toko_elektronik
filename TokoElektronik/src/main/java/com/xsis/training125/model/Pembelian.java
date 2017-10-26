package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

public class Pembelian {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="no_faktur")
	private int noFaktur;
	
	private Barang idBarang;
	@Column(name="jumlah_barang")
	private int jumlahBarang;
	@Column(name="total_harga")
	private int totalHarga;
	@Column(name="tanggal_pembelian")
	private Date tanggalPembelian;
	
	
	
	
	public Pembelian(int noFaktur, Barang idBarang, int jumlahBarang, int totalHarga, Date tanggalPembelian) {
		super();
		this.noFaktur = noFaktur;
		this.idBarang = idBarang;
		this.jumlahBarang = jumlahBarang;
		this.totalHarga = totalHarga;
		this.tanggalPembelian = tanggalPembelian;
	}


	public int getNoFaktur() {
		return noFaktur;
	}


	public void setNoFaktur(int noFaktur) {
		this.noFaktur = noFaktur;
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


	public Pembelian(){}

	
	
}
