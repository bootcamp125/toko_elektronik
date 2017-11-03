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
	@Temporal(TemporalType.DATE)
	@Column(name = "tanggal_masuk")
	private Date tanggalMasuk;
	private int gaji;
	@ManyToOne
	@JoinColumn(name = "id_pekerjaan")
	private Pekerjaan pekerjaan;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="karyawan")
	private List<Pembelian> pembelian;
	@OneToMany(fetch=FetchType.LAZY, mappedBy="karyawan")
	private List<Penjualan> penjualan;
	/*@OneToOne(mappedBy="karyawan")
	private Retur retur;*/

	public Karyawan() {
	}

	



	public Karyawan(int id, String usernameK, String passwordK, String namaK, String jk, String alamat,
			Date tanggalMasuk, int gaji, Pekerjaan pekerjaan, List<Pembelian> pembelian, List<Penjualan> penjualan,
			Retur retur) {
		super();
		this.id = id;
		this.usernameK = usernameK;
		this.passwordK = passwordK;
		this.namaK = namaK;
		this.jk = jk;
		this.alamat = alamat;
		this.tanggalMasuk = tanggalMasuk;
		this.gaji = gaji;
		this.pekerjaan = pekerjaan;
		this.pembelian = pembelian;
		this.penjualan = penjualan;
		/*this.retur = retur;*/
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


	public List<Pembelian> getPembelian() {
		return pembelian;
	}

	public void setPembelian(List<Pembelian> pembelian) {
		this.pembelian = pembelian;
	}

	public List<Penjualan> getPenjualan() {
		return penjualan;
	}

	public void setPenjualan(List<Penjualan> penjualan) {
		this.penjualan = penjualan;
	}

	/*public Retur getRetur() {
		return retur;
	}

	public void setRetur(Retur retur) {
		this.retur = retur;
	}*/

	public Date getTanggalMasuk() {
		return tanggalMasuk;
	}

	public void setTanggalMasuk(Date tanggalMasuk) {
		this.tanggalMasuk = tanggalMasuk;
	}

	public int getGaji() {
		return gaji;
	}

	public void setGaji(int gaji) {
		this.gaji = gaji;
	}


}
