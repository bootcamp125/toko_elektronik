package com.xsis.training125.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator = ObjectIdGenerators.IntSequenceGenerator.class, property = "@id")
public class Pelanggan {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String address;
	@Column(unique = true)
	private String email;
	@Column(name = "birth_day")
	@Temporal(TemporalType.DATE)
	private Date birthDay;
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pelanggan")
	private List<Penjualan> penjualan;

	public Pelanggan() {
	}

	public Pelanggan(int id, String name, String address, String email, Date birthDay, List<Penjualan> penjualan) {
		super();
		this.id = id;
		this.name = name;
		this.address = address;
		this.email = email;
		this.birthDay = birthDay;
		this.penjualan = penjualan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getBirthDay() {
		return birthDay;
	}

	public void setBirthDay(Date birthDay) {
		this.birthDay = birthDay;
	}

	public List<Penjualan> getPenjualan() {
		return penjualan;
	}

	public void setPenjualan(List<Penjualan> penjualan) {
		this.penjualan = penjualan;
	}

}
