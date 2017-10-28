package com.xsis.training125.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class DetailPenjualan {


	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_detail", nullable=false)
	private int idDetailPen;
	private int jumlah;
	@ManyToOne
	@JoinColumn(name="id_penjualan")
	private Penjualan penjualan;
	
	public DetailPenjualan(){}

	public DetailPenjualan(int idDetailPen, int jumlah, Penjualan penjualan) {
		super();
		this.idDetailPen = idDetailPen;
		this.jumlah = jumlah;
		this.penjualan = penjualan;
	}

	public int getIdDetailPen() {
		return idDetailPen;
	}

	public void setIdDetailPen(int idDetailPen) {
		this.idDetailPen = idDetailPen;
	}

	public int getJumlah() {
		return jumlah;
	}

	public void setJumlah(int jumlah) {
		this.jumlah = jumlah;
	}
	
	
	
}
