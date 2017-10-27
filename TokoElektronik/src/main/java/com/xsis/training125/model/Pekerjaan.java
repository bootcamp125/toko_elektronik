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
public class Pekerjaan {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_pekerjaan")
	private int idPekerjaan;
	private String deskripsi;
	
	
	
	
	public Pekerjaan(){}
	
	
	public Pekerjaan(int idPekerjaan, String deskripsi) {
		super();
		this.idPekerjaan = idPekerjaan;
		this.deskripsi = deskripsi;
	}
	public int getIdPekerjaan() {
		return idPekerjaan;
	}
	public void setIdPekerjaan(int idPekerjaan) {
		this.idPekerjaan = idPekerjaan;
	}
	public String getDeskripsi() {
		return deskripsi;
	}
	public void setDeskripsi(String deskripsi) {
		this.deskripsi = deskripsi;
	}
	
	
	
}
