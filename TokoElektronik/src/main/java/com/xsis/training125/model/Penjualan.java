package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Penjualan {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="no_nota")
	private int noNota;
	private Date tanggalPenjualan;
	
	private int totalBarang;
	private int totalHarga;

	
	public Penjualan(){}
	


	public Penjualan(int noNota, Date tanggalPenjualan, int totalBarang, int totalHarga) {
		super();
		this.noNota = noNota;
		this.tanggalPenjualan = tanggalPenjualan;
		this.totalBarang = totalBarang;
		this.totalHarga = totalHarga;
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


	public int getTotalBarang() {
		return totalBarang;
	}


	public void setTotalBarang(int totalBarang) {
		this.totalBarang = totalBarang;
	}


	public int getTotalHarga() {
		return totalHarga;
	}


	public void setTotalHarga(int totalHarga) {
		this.totalHarga = totalHarga;
	}
	
	
}
