package com.xsis.training125.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Pelanggan {
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_pelanggan", nullable=false)
	private int idPelanggan;
	@Column(name="nama_pelanggan")
	private String namaPelanggan;
	@Column(name="tanggal_daftar")
	private Date tanggalDaftar;
	private String alamat;
	
	
	public Pelanggan(){	}


	
	
	public Pelanggan(int idPelanggan, String namaPelanggan, Date tanggalDaftar, String alamat) {
		super();
		this.idPelanggan = idPelanggan;
		this.namaPelanggan = namaPelanggan;
		this.tanggalDaftar = tanggalDaftar;
		this.alamat = alamat;
	}




	public int getIdPelanggan() {
		return idPelanggan;
	}


	public void setIdPelanggan(int idPelanggan) {
		this.idPelanggan = idPelanggan;
	}


	public String getNamaPelanggan() {
		return namaPelanggan;
	}


	public void setNamaPelanggan(String namaPelanggan) {
		this.namaPelanggan = namaPelanggan;
	}


	public Date getTanggalDaftar() {
		return tanggalDaftar;
	}


	public void setTanggalDaftar(Date tanggalDaftar) {
		this.tanggalDaftar = tanggalDaftar;
	}


	public String getAlamat() {
		return alamat;
	}


	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}
	
	
	
}
