package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Retur {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int jumlah;
	private String keterangan;
	@Column(name="tanggal_retur")
	@Temporal(TemporalType.DATE)
	private Date tanggalRetur;
	@Column(name="total_harga_retur")
	private int totalHargaRetur;
	@OneToOne
	@JoinColumn(name="id_karyawan", unique=true)
	private Karyawan karyawan;
	@ManyToOne
	@JoinColumn(name="id_distributor")
	private Distributor distributor;
	@ManyToOne
	@JoinColumn(name="no_faktur")
	private Pembelian pembelian;

	
	public Retur() {
	}

	public Retur(int id, int jumlah, String keterangan, Date tanggalRetur, int totalHargaRetur, Karyawan karyawan,
			Distributor distributor) {
		super();
		this.id = id;
		this.jumlah = jumlah;
		this.keterangan = keterangan;
		this.tanggalRetur = tanggalRetur;
		this.totalHargaRetur = totalHargaRetur;
		this.karyawan = karyawan;
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

	public Date getTanggalRetur() {
		return tanggalRetur;
	}

	public void setTanggalRetur(Date tanggalRetur) {
		this.tanggalRetur = tanggalRetur;
	}

	public int getTotalHargaRetur() {
		return totalHargaRetur;
	}

	public void setTotalHargaRetur(int totalHargaRetur) {
		this.totalHargaRetur = totalHargaRetur;
	}

	public Karyawan getKaryawan() {
		return karyawan;
	}

	public void setKaryawan(Karyawan karyawan) {
		this.karyawan = karyawan;
	}

	public Distributor getDistributor() {
		return distributor;
	}

	public void setDistributor(Distributor distributor) {
		this.distributor = distributor;
	}

	public String getKeterangan() {
		return keterangan;
	}

	public void setKeterangan(String keterangan) {
		this.keterangan = keterangan;
	}
	
}
