package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
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
	@Column(name="id_barang",nullable=false)
	private int id;
	@Column(name="nama_barang")
	private String namaBarang;
	@Column(name="tanggal_masuk")
	@Temporal(TemporalType.DATE)
	private Date tanggalMasuk;
	@Column(name="stock_barang")
	private int stock;
	@Column(name="merk_barang")
	private String merk;
	@Column(name="harga_barang")
	private int harga;
	@OneToOne
	@JoinColumn(name="id_diskon", unique=true)
	private Diskon diskon;
	
	
	public Barang(){}
	
	public Barang(int id, String namaBarang, Date tanggalMasuk, int stock, String merk, int harga) {
		super();
		this.id = id;
		this.namaBarang = namaBarang;
		this.tanggalMasuk = tanggalMasuk;
		this.stock = stock;
		this.merk = merk;
		this.harga = harga;
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
	
	
	
	
	
	
}
