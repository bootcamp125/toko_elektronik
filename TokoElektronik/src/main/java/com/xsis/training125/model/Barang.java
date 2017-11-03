package com.xsis.training125.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Barang {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_barang")
	private int id;
	@Column(name="nama_barang")
	private String namaBarang;
	private String kategori;
	private String deskripsi;
	@Column(name="tanggal_masuk")
	@Temporal(TemporalType.DATE)
	private Date tanggalMasuk;
	@Column(name="stock_barang")
	private int stock;
	@Column(name="merk_barang")
	private String merk;
	@Column(name="harga_barang")
	private int harga;
	@OneToOne(mappedBy="barang")
	private Diskon diskon;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="barang")
	private List<DetailPembelian> detailPembelian;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="barang")
	private List<DetailPenjualan> detailPenjualan;
	
	public Barang(){}
	
	
	public Barang(int id, String namaBarang, String kategori, String deskripsi, Date tanggalMasuk, int stock,
			String merk, int harga, Diskon diskon, List<DetailPembelian> detailPembelian,
			List<DetailPenjualan> detailPenjualan) {
		super();
		this.id = id;
		this.namaBarang = namaBarang;
		this.kategori = kategori;
		this.deskripsi = deskripsi;
		this.tanggalMasuk = tanggalMasuk;
		this.stock = stock;
		this.merk = merk;
		this.harga = harga;
		this.diskon = diskon;
		this.detailPembelian = detailPembelian;
		this.detailPenjualan = detailPenjualan;
	}



	public String getKategori() {
		return kategori;
	}


	public void setKategori(String kategori) {
		this.kategori = kategori;
	}


	public String getDeskripsi() {
		return deskripsi;
	}


	public void setDeskripsi(String deskripsi) {
		this.deskripsi = deskripsi;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNamaBarang() {
		return namaBarang;
	}
	public void setNamaBarang(String namaBarang) {
		this.namaBarang = namaBarang;
	}
	public Date getTanggalMasuk() {
		return tanggalMasuk;
	}
	public void setTanggalMasuk(Date tanggalMasuk) {
		this.tanggalMasuk = tanggalMasuk;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public String getMerk() {
		return merk;
	}
	public void setMerk(String merk) {
		this.merk = merk;
	}
	public int getHarga() {
		return harga;
	}
	public void setHarga(int harga) {
		this.harga = harga;
	}

	public Diskon getDiskon() {
		return diskon;
	}

	public void setDiskon(Diskon diskon) {
		this.diskon = diskon;
	}


	public List<DetailPembelian> getDetailPembelian() {
		return detailPembelian;
	}


	public void setDetailPembelian(List<DetailPembelian> detailPembelian) {
		this.detailPembelian = detailPembelian;
	}

	public List<DetailPenjualan> getDetailPenjualan() {
		return detailPenjualan;
	}

	public void setDetailPenjualan(List<DetailPenjualan> detailPenjualan) {
		this.detailPenjualan = detailPenjualan;
	}
	
	
		
	
}
