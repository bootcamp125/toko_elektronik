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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Pembelian {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="no_faktur")
	private int noFaktur;
	@Column(name = "total_harga")
	private int totalHarga;
	@Temporal(TemporalType.DATE)
	@Column(name = "tanggal_pembelian")
	private Date tanggalPembelian;
	@ManyToOne
	@JoinColumn(name="id_distributor")
	private Distributor distributor;
	@OneToOne
	@JoinColumn(name="id_karyawan", unique=true)
	private Karyawan karyawan;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="pembelian")
	@Column(name="detail_pembelian")
	private List<DetailPembelian> detailPembelian;

	public Pembelian() {
	}

	public Pembelian(int noFaktur, int totalHarga, Date tanggalPembelian, Distributor distributor, Karyawan karyawan,
			List<DetailPembelian> detailPembelian) {
		super();
		this.noFaktur = noFaktur;
		this.totalHarga = totalHarga;
		this.tanggalPembelian = tanggalPembelian;
		this.distributor = distributor;
		this.karyawan = karyawan;
		this.detailPembelian = detailPembelian;
	}

	public int getNoFaktur() {
		return noFaktur;
	}

	public void setNoFaktur(int noFaktur) {
		this.noFaktur = noFaktur;
	}

	public int getTotalHarga() {
		return totalHarga;
	}

	public void setTotalHarga(int totalHarga) {
		this.totalHarga = totalHarga;
	}

	public Date getTanggalPembelian() {
		return tanggalPembelian;
	}

	public void setTanggalPembelian(Date tanggalPembelian) {
		this.tanggalPembelian = tanggalPembelian;
	}

	public Distributor getDistributor() {
		return distributor;
	}

	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}

	public List<DetailPembelian> getDetailPembelian() {
		return detailPembelian;
	}

	public void setDetailPembelian(List<DetailPembelian> detailPembelian) {
		this.detailPembelian = detailPembelian;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}


}
