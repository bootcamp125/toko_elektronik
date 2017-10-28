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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Penjualan {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="no_nota")
	private int noNota;
	@Column(name="tangal_penjualan")
	private Date tanggalPenjualan;	
	@Column(name="total_barang")
	private int totalBarang;
	@Column(name="total_harga")
	private int totalHarga;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="penjualan")
	@Column(name="detail_pennjualan")
	private List<DetailPenjualan> detailPenjualan;
	
	public Penjualan(){}
	
	public Penjualan(int noNota, Date tanggalPenjualan, int totalBarang, int totalHarga,
			List<DetailPenjualan> detailPenjualan) {
		super();
		this.noNota = noNota;
		this.tanggalPenjualan = tanggalPenjualan;
		this.totalBarang = totalBarang;
		this.totalHarga = totalHarga;
		this.detailPenjualan = detailPenjualan;
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
