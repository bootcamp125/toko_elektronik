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
public class DetailPenjualan {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_detail", nullable=false)
	private int idDetail;
	private int jumlah;
	
	public DetailPenjualan(){}
	
	public DetailPenjualan(int idDetail, int jumlah) {
		super();
		this.idDetail = idDetail;
		this.jumlah = jumlah;
	}
	public int getIdDetail() {
		return idDetail;
	}
	public void setIdDetail(int idDetail) {
		this.idDetail = idDetail;
	}
	public int getJumlah() {
		return jumlah;
	}
	public void setJumlah(int jumlah) {
		this.jumlah = jumlah;
	}
	
	
}
