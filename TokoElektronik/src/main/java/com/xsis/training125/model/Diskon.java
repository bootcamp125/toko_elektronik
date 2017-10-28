package com.xsis.training125.model;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

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
	@Temporal(TemporalType.DATE)
	private Date tanggalBerakhir;
	@OneToOne
	@JoinColumn(name="id_barang", unique=true)
	private Barang barang;
	@OneToOne(mappedBy="diskon")
	private DetailPenjualan detailpenjualan;

	public Diskon(){}

	public Diskon(int idDiskon, Double diskon, int hargaDiskon, Date tanggalBerakhir, Barang barang,
			DetailPenjualan detailpenjualan) {
		super();
		this.idDiskon = idDiskon;
		this.diskon = diskon;
		this.hargaDiskon = hargaDiskon;
		this.tanggalBerakhir = tanggalBerakhir;
		this.barang = barang;
		this.detailpenjualan = detailpenjualan;
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
	
	public Barang getBarang() {
		return barang;
	}

	public void setBarang(Barang barang) {
		this.barang = barang;
	}

	public DetailPenjualan getDetailpenjualan() {
		return detailpenjualan;
	}

	public void setDetailpenjualan(DetailPenjualan detailpenjualan) {
		this.detailpenjualan = detailpenjualan;
	}
	
	
}
