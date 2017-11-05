package com.xsis.training125.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class DetailPenjualan {


	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE)
	private int id;
	private int jumlah;
	private int harga;
	@ManyToOne
	@JoinColumn(name="id_penjualan")
	private Penjualan penjualan;
	@ManyToOne
	@JoinColumn(name = "id_barang")
	private Barang barang;
	@OneToOne
	@JoinColumn(name="id_diskon", unique=true)
	private Diskon diskon;

	public DetailPenjualan(){}

	
	public DetailPenjualan(int id, int jumlah, int harga, Penjualan penjualan, Barang barang, Diskon diskon) {
		super();
		this.id = id;
		this.jumlah = jumlah;
		this.harga = harga;
		this.penjualan = penjualan;
		this.barang = barang;
		this.diskon = diskon;
	}



	public int getHarga() {
		return harga;
	}


	public void setHarga(int harga) {
		this.harga = harga;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public int getJumlah() {
		return jumlah;
	}

	public void setJumlah(int jumlah) {
		this.jumlah = jumlah;
	}
	
	public Penjualan getPenjualan() {
		return penjualan;
	}


	public void setPenjualan(Penjualan penjualan) {
		this.penjualan = penjualan;
	}
	
	public Diskon getDiskon() {
		return diskon;
	}


	public void setDiskon(Diskon diskon) {
		this.diskon = diskon;
	}

	public Barang getBarang() {
		return barang;
	}

	public void setBarang(Barang barang) {
		this.barang = barang;
	}
	
	
}
