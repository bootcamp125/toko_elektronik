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
import javax.persistence.OneToOne;

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
	@Column(name="total_harga")
	private int totalHarga;
	@ManyToOne
	@JoinColumn(name="id_karyawan")
	private Karyawan karyawan;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="penjualan")
	@Column(name="detail_penjualan")
	private List<DetailPenjualan> detailPenjualan;
	
	public Penjualan(){}

	public Penjualan(int noNota, Date tanggalPenjualan, int totalHarga, Karyawan karyawan,
			List<DetailPenjualan> detailPenjualan) {
		super();
		this.noNota = noNota;
		this.tanggalPenjualan = tanggalPenjualan;
		this.totalHarga = totalHarga;
		this.karyawan = karyawan;
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

	public int getTotalHarga() {
		return totalHarga;
	}


	public void setTotalHarga(int totalHarga) {
		this.totalHarga = totalHarga;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	public List<DetailPenjualan> getDetailPenjualan() {
		return detailPenjualan;
	}

	public void setDetailPenjualan(List<DetailPenjualan> detailPenjualan) {
		this.detailPenjualan = detailPenjualan;
	}
	
	
}
