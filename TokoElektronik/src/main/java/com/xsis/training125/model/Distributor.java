package com.xsis.training125.model;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Distributor {
	
	@Column(name="id_distributor", nullable=false)
	private int idDistributor;
	@Column(name="nama_distributor", nullable=false)
	private String namaDistributor;
	
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

	
	
}
