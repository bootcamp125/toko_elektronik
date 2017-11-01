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
	@ManyToOne
	@JoinColumn(name = "id_distributor")
	private Distributor distributor;
	
	public DetailPembelian() {
	}

	

	
	public DetailPembelian(int id, int jumlah, Pembelian pembelian, Barang barang, Distributor distributor) {
		super();
		this.id = id;
		this.jumlah = jumlah;
		this.pembelian = pembelian;
		this.barang = barang;
		this.distributor = distributor;
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




	public Pembelian getPembelian() {
		return pembelian;
	}




	public void setPembelian(Pembelian pembelian) {
		this.pembelian = pembelian;
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
