package com.xsis.training125.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Karyawan {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "username_karyawan")
	private String usernameK;
	@Column(name = "password_karyawan")
	private String passwordK;
	@Column(name = "nama_karyawan")
	private String namaK;
	@Column(name = "jenis_kelamin")
	private String jk;
	private String alamat;
	@ManyToOne
	@JoinColumn(name = "id_pekerjaan")
	private Pekerjaan pekerjaan;
	@OneToOne(mappedBy="karyawan")
	private Pembelian pembelian;
	@OneToOne(mappedBy="karyawan")
	private Penjualan penjualan;

	public Karyawan() {
	}

	public Karyawan(int id, String usernameK, String passwordK, String namaK, String jk, String alamat,
			Pekerjaan pekerjaan, Pembelian pembelian, Penjualan penjualan) {
		super();
		this.id = id;
		this.usernameK = usernameK;
		this.passwordK = passwordK;
		this.namaK = namaK;
		this.jk = jk;
		this.alamat = alamat;
		this.pekerjaan = pekerjaan;
		this.pembelian = pembelian;
		this.penjualan = penjualan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public Pekerjaan getPekerjaan() {
		return pekerjaan;
	}

	public void setPekerjaan(Pekerjaan pekerjaan) {
		this.pekerjaan = pekerjaan;
	}

	public int getIdKaryawan() {
		return id;
	}

	public void setIdKaryawan(int idKaryawan) {
		this.id = idKaryawan;
	}

	public String getUsernameK() {
		return usernameK;
	}

	public void setUsernameK(String usernameK) {
		this.usernameK = usernameK;
	}

	public String getPasswordK() {
		return passwordK;
	}

	public void setPasswordK(String passwordK) {
		this.passwordK = passwordK;
	}

	public String getNamaK() {
		return namaK;
	}

	public void setNamaK(String namaK) {
		this.namaK = namaK;
	}

	public String getJk() {
		return jk;
	}

	public void setJk(String jk) {
		this.jk = jk;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public Pembelian getPembelian() {
		return pembelian;
	}

	public void setPembelian(Pembelian pembelian) {
		this.pembelian = pembelian;
	}

	public Penjualan getPenjualan() {
		return penjualan;
	}

	public void setPenjualan(Penjualan penjualan) {
		this.penjualan = penjualan;
	}


}
