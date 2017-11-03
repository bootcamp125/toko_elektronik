package com.xsis.training125.model;

import java.util.List;
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
public class Pekerjaan {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String deskripsi;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pekerjaan")
	private List<Karyawan> karyawan;

	public List<Karyawan> getKaryawan() {
		return karyawan;
	}

	public Pekerjaan() {
	}

	public Pekerjaan(int id, String deskripsi, List<Karyawan> karyawan) {
		super();
		this.id = id;
		this.deskripsi = deskripsi;
		this.karyawan = karyawan;
	}

	public void setKaryawan(List<Karyawan> karyawan) {
		this.karyawan = karyawan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDeskripsi() {
		return deskripsi;
	}

	public void setDeskripsi(String deskripsi) {
		this.deskripsi = deskripsi;
	}

	

}
