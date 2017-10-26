package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

public class Penjualan {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="no_nota")
	private int noNota;
	private Date tanggalPenjualan;
	private Barang idBarang;
	private int totalBarang;
	private int totalHarga;
	private Karyawan idKaryawan;
	@ManyToOne
	@JoinColumn(name="id_pelanggan")
	private Pelanggan idPelanggan;
	private Diskon diskon;
	
	public Penjualan(){}
	
	public Penjualan(int noNota, Date tanggalPenjualan, Barang idBarang, int totalBarang, int totalHarga,
			Karyawan idKaryawan, Pelanggan idPelanggan, Diskon diskon) {
		super();
		this.noNota = noNota;
		this.tanggalPenjualan = tanggalPenjualan;
		this.idBarang = idBarang;
		this.totalBarang = totalBarang;
		this.totalHarga = totalHarga;
		this.idKaryawan = idKaryawan;
		this.idPelanggan = idPelanggan;
		this.diskon = diskon;
	}
	public int getNoNota() {
		return noNota;
	}
	public void setNoNota(int noNota) {
		this.noNota = noNota;
	}
	public Date getTanggalPenjualan() {
		return tanggalPenjualan;
	}
	public void setTanggalPenjualan(Date tanggalPenjualan) {
		this.tanggalPenjualan = tanggalPenjualan;
	}
	public Barang getIdBarang() {
		return idBarang;
	}
	public void setIdBarang(Barang idBarang) {
		this.idBarang = idBarang;
	}
	public int getTotalBarang() {
		return totalBarang;
	}
	public void setTotalBarang(int totalBarang) {
		this.totalBarang = totalBarang;
	}
	public Karyawan getIdKaryawan() {
		return idKaryawan;
	}
	public void setIdKaryawan(Karyawan idKaryawan) {
		this.idKaryawan = idKaryawan;
	}
	public int getTotalHarga() {
		return totalHarga;
	}
	public void setTotalHarga(int totalHarga) {
		this.totalHarga = totalHarga;
	}
	public Pelanggan getIdPelanggan() {
		return idPelanggan;
	}
	public void setIdPelanggan(Pelanggan idPelanggan) {
		this.idPelanggan = idPelanggan;
	}
	public Diskon getDiskon() {
		return diskon;
	}
	public void setDiskon(Diskon diskon) {
		this.diskon = diskon;
	}
	
	
	
}
