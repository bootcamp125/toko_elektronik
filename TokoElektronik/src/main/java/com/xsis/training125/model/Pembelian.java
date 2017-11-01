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
	private int id;
	@Column(name = "total_harga")
	private int totalHarga;
	@Temporal(TemporalType.DATE)
	@Column(name = "tanggal_pembelian")
	private Date tanggalPembelian;
	@ManyToOne
	@JoinColumn(name="id_distributor")
	private Distributor distributor;
	@ManyToOne
	@JoinColumn(name="id_karyawan")
	private Karyawan karyawan;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="pembelian")
	@Column(name="detail_pembelian")
	private List<DetailPembelian> detailPembelian;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="pembelian")
	@Column(name="retur")
	private List<Retur> retur;

	public Pembelian() {
	}

	public Pembelian(int noFaktur, int totalHarga, Date tanggalPembelian, Distributor distributor, Karyawan karyawan,
			List<DetailPembelian> detailPembelian, List<Retur> retur) {
		super();
		this.id = noFaktur;
		this.totalHarga = totalHarga;
		this.tanggalPembelian = tanggalPembelian;
		this.distributor = distributor;
		this.karyawan = karyawan;
		this.detailPembelian = detailPembelian;
		this.retur = retur;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public List<Retur> getRetur() {
		return retur;
	}

	public void setRetur(List<Retur> retur) {
		this.retur = retur;
	}


}
