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
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Distributor {


	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@Column(name = "nama_distributor")
	private String namaDistributor;
	private String alamat;
	@Column(name = "no_contact")
	private int noContact;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "distributor")
	private List<DetailPembelian> detailPembelian;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "distributor")
	private List<Retur> retur;

	public Distributor() {
	}

	

	public Distributor(int id, String namaDistributor, String alamat, int noContact,
			List<DetailPembelian> detailPembelian, List<Retur> retur) {
		super();
		this.id = id;
		this.namaDistributor = namaDistributor;
		this.alamat = alamat;
		this.noContact = noContact;
		this.detailPembelian = detailPembelian;
		this.retur = retur;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public List<DetailPembelian> getDetailPembelian() {
		return detailPembelian;
	}

	public void setDetailPembelian(List<DetailPembelian> detailPembelian) {
		this.detailPembelian = detailPembelian;
	}



	public List<Retur> getRetur() {
		return retur;
	}

	public void setRetur(List<Retur> retur) {
		this.retur = retur;
	}


}
