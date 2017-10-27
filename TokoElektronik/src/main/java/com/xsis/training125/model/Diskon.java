package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Diskon {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id_diskon", nullable=false)
	private int idDiskon;
	
	private Double diskon;
	@Column(name="harga_diskon")
	private int hargaDiskon;
	@Column(name="tanggal_berakhir")
	private Date tanggalBerakhir;
	
	
	public Diskon(){}
	
	
	public Diskon(int idDiskon, Double diskon, int hargaDiskon, Date tanggalBerakhir) {
		super();
		this.idDiskon = idDiskon;
		this.diskon = diskon;
		this.hargaDiskon = hargaDiskon;
		this.tanggalBerakhir = tanggalBerakhir;
	}


	public int getIdDiskon() {
		return idDiskon;
	}
	public void setIdDiskon(int idDiskon) {
		this.idDiskon = idDiskon;
	}
	
	
	public Double getDiskon() {
		return diskon;
	}
	public void setDiskon(Double diskon) {
		this.diskon = diskon;
	}
	public int getHargaDiskon() {
		return hargaDiskon;
	}
	public void setHargaDiskon(int hargaDiskon) {
		this.hargaDiskon = hargaDiskon;
	}
	public Date getTanggalBerakhir() {
		return tanggalBerakhir;
	}
	public void setTanggalBerakhir(Date tanggalBerakhir) {
		this.tanggalBerakhir = tanggalBerakhir;
	}
	
	
	
	
}
