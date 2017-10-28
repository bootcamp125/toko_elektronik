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
	private int jumlah;
	@ManyToOne
	@JoinColumn(name="no_faktur")
	private Pembelian pembelian;
	@ManyToOne
	@JoinColumn(name = "id_barang")
	private Barang barang;

	public DetailPembelian() {
	}

	public DetailPembelian(int id, int jumlah, Pembelian pembelian, Barang barang) {
		super();
		this.id = id;
		this.jumlah = jumlah;
		this.pembelian = pembelian;
		this.barang = barang;
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

	public Barang getBarang() {
		return barang;
	}

	public void setBarang(Barang barang) {
		this.barang = barang;
	}

	public Pembelian getPembelian() {
		return pembelian;
	}

	public void setPembelian(Pembelian pembelian) {
		this.pembelian = pembelian;
	}	

}
