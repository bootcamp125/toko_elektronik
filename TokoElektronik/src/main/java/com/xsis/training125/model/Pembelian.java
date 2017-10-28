package com.xsis.training125.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public class Pembelian {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="no_faktur")
	private int noFaktur;
	@Column(name = "jumlah_barang")
	private int jumlahBarang;
	@Column(name = "total_harga")
	private int totalHarga;
	@Temporal(TemporalType.DATE)
	@Column(name = "tanggal_pembelian")
	private Date tanggalPembelian;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="pembelian")
	@Column(name="detail_pembelian")
	private List<DetailPenjualan> detailPembelian;

	public Pembelian() {
	}

	public Pembelian(int noFaktur, int jumlahBarang, int totalHarga, Date tanggalPembelian,
			List<DetailPenjualan> detailPembelian) {
		super();
		this.noFaktur = noFaktur;
		this.jumlahBarang = jumlahBarang;
		this.totalHarga = totalHarga;
		this.tanggalPembelian = tanggalPembelian;
		this.detailPembelian = detailPembelian;
	}

	public int getNoFaktur() {
		return noFaktur;
	}

	public void setNoFaktur(int noFaktur) {
		this.noFaktur = noFaktur;
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

	public List<DetailPenjualan> getDetailPembelian() {
		return detailPembelian;
	}

	public void setDetailPembelian(List<DetailPenjualan> detailPembelian) {
		this.detailPembelian = detailPembelian;
	}

	

}
