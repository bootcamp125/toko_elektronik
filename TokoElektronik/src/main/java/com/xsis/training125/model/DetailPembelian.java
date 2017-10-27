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
public class DetailPembelian {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_detail_pembelian", nullable=false)
	private int idDetailPem;
	private int jumlah;
	
	
	public DetailPembelian(){}
	
	public DetailPembelian(int idDetailPem, int jumlah) {
		super();
		this.idDetailPem = idDetailPem;
		this.jumlah = jumlah;
	}
	public int getIdDetailPem() {
		return idDetailPem;
	}
	public void setIdDetailPem(int idDetailPem) {
		this.idDetailPem = idDetailPem;
	}
	public int getJumlah() {
		return jumlah;
	}
	public void setJumlah(int jumlah) {
		this.jumlah = jumlah;
	}
	
	
	
}
