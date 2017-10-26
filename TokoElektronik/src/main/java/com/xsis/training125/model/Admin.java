package com.xsis.training125.model;

import javax.persistence.Column;
import javax.persistence.Entity;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

@Entity
@JsonIdentityInfo(generator=ObjectIdGenerators.IntSequenceGenerator.class, property="@id")
public class Admin {

	@Column(name="id_admin")
	private int idAdmin;
	private String username;
	private String password;
	
	public Admin(){}
	
	public Admin(int idAdmin, String username, String password) {
		super();
		this.idAdmin = idAdmin;
		this.username = username;
		this.password = password;
	}
	public int getIdAdmin() {
		return idAdmin;
	}
	public void setIdAdmin(int idAdmin) {
		this.idAdmin = idAdmin;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
