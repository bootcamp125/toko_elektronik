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
	private int id;
	@Column(name="tangal_penjualan")
	private Date tanggalPenjualan;	
	@Column(name="total_harga")
	private int totalHarga;
	@OneToOne
	@JoinColumn(name="id_karyawan", unique=true)
	private Karyawan karyawan;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="penjualan")
	@Column(name="detail_penjualan")
	private List<DetailPenjualan> detailPenjualan;
	
	public Penjualan(){}
	
	

	
	public Penjualan(int id, Date tanggalPenjualan, int totalHarga, Karyawan karyawan,
			List<DetailPenjualan> detailPenjualan) {
		super();
		this.id = id;
		this.tanggalPenjualan = tanggalPenjualan;
		this.totalHarga = totalHarga;
		this.karyawan = karyawan;
		this.detailPenjualan = detailPenjualan;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
