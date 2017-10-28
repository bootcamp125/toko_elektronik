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
public class Distributor {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_distributor", nullable=false)
	private int idDistributor;
	@Column(name="nama_distributor")
	private String namaDistributor;
	private String alamat;
	@Column(name="no_contact")
	private int noContact;
	
	
	public Distributor(){}
	
	public Distributor(int idDistributor, String namaDistributor) {
		super();
		this.idDistributor = idDistributor;
		this.namaDistributor = namaDistributor;
	}
	
	
	public int getIdDistributor() {
		return idDistributor;
	}
	public void setIdDistributor(int idDistributor) {
		this.idDistributor = idDistributor;
	}
	public String getNamaDistributor() {
		return namaDistributor;
	}
	public void setNamaDistributor(String namaDistributor) {
		this.namaDistributor = namaDistributor;
	}

	public String getAlamat() {
		return alamat;
	}

	public void setAlamat(String alamat) {
		this.alamat = alamat;
	}

	public int getNoContact() {
		return noContact;
	}

	public void setNoContact(int noContact) {
		this.noContact = noContact;
	}

	
	
}
