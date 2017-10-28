package com.xsis.training125.model;

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
	@OneToMany(fetch=FetchType.LAZY, mappedBy="distributor")
	private List<Pembelian> pembelian;
	
	public Distributor(){}
		
	public Distributor(int idDistributor, String namaDistributor, String alamat, int noContact,
			List<Pembelian> pembelian) {
		super();
		this.idDistributor = idDistributor;
		this.namaDistributor = namaDistributor;
		this.alamat = alamat;
		this.noContact = noContact;
		this.pembelian = pembelian;
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

	public List<Pembelian> getPembelian() {
		return pembelian;
	}

	public void setPembelian(List<Pembelian> pembelian) {
		this.pembelian = pembelian;
	}

}
