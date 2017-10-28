package com.xsis.training125.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Retur {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int jumlah;
	private Date tanggalRetur;
	private int totalHargaRetur;

	public Retur(int id, int jumlah, Date tanggalRetur, int totalHargaRetur) {
		super();
		this.id = id;
		this.jumlah = jumlah;
		this.tanggalRetur = tanggalRetur;
		this.totalHargaRetur = totalHargaRetur;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getJumlah() {
		return jumlah;
	}

	public void setJumlah(int jumlah) {
		this.jumlah = jumlah;
	}

	public Date getTanggalRetur() {
		return tanggalRetur;
	}

	public void setTanggalRetur(Date tanggalRetur) {
		this.tanggalRetur = tanggalRetur;
	}

	public int getTotalHargaRetur() {
		return totalHargaRetur;
	}

	public void setTotalHargaRetur(int totalHargaRetur) {
		this.totalHargaRetur = totalHargaRetur;
	}
}
