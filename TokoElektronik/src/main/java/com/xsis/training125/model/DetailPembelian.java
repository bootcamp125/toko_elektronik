package com.xsis.training125.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class DetailPembelian {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String produk;
	private String kategori;
	private String deskripsi;
	private int jumlah;
	/*@ManyToOne
	@JoinColumn(name="no_faktur")
	private Pembelian pembelian;*/
	private int harga;
	@ManyToOne
	@JoinColumn(name = "id_barang")
	private Barang barang;
	@ManyToOne
	@JoinColumn(name = "id_distributor")
	private Distributor distributor;
	
	public DetailPembelian() {
	}

	
	public DetailPembelian(int id, String produk, String kategori, String deskripsi, int jumlah, Pembelian pembelian,
			int harga, Barang barang, Distributor distributor) {
		super();
		this.id = id;
		this.produk = produk;
		this.kategori = kategori;
		this.deskripsi = deskripsi;
		this.jumlah = jumlah;
		/*this.pembelian = pembelian;*/
		this.harga = harga;
		this.barang = barang;
		this.distributor = distributor;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getProduk() {
		return produk;
	}


	public void setProduk(String produk) {
		this.produk = produk;
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


	public int getJumlah() {
		return jumlah;
	}


	public void setJumlah(int jumlah) {
		this.jumlah = jumlah;
	}


/*	public Pembelian getPembelian() {
		return pembelian;
	}


	public void setPembelian(Pembelian pembelian) {
		this.pembelian = pembelian;
	}
*/

	public int getHarga() {
		return harga;
	}


	public void setHarga(int harga) {
		this.harga = harga;
	}


	public Barang getBarang() {
		return barang;
	}


	public void setBarang(Barang barang) {
		this.barang = barang;
	}


	public Distributor getDistributor() {
		return distributor;
	}


	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}
	
	

}
