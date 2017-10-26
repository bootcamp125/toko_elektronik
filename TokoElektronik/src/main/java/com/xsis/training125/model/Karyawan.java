package com.xsis.training125.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Karyawan {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_karyawan")
	private int idKaryawan;
	@Column(name="username_karyawan")
	private String usernameK;
	@Column(name="password_karyawan")
	private String passwordK;
	@Column(name="nama_karyawan")
	private String namaK;
	@Column(name="jenis_kelamin")
	private String jk;
	
	public Karyawan(){}
	
	public Karyawan(int idKaryawan, String usernameK, String passwordK, String namaK, String jk) {
		super();
		this.idKaryawan = idKaryawan;
		this.usernameK = usernameK;
		this.passwordK = passwordK;
		this.namaK = namaK;
		this.jk = jk;
	}
	public int getIdKaryawan() {
		return idKaryawan;
	}
	public void setIdKaryawan(int idKaryawan) {
		this.idKaryawan = idKaryawan;
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
	
	
}
