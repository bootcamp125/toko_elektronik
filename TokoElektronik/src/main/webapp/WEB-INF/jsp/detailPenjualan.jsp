<%@page import="com.xsis.training125.model.Retur"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/assets/bootstrap-4.0.0-beta.2/dist/css/bootstrap.min.css" />
</head>
<body>
 	<div class="container" id="container">
 	<table class="table table-sm table-striped table-bordered table-hover">
	 	<thead class="thead-dark">
	 		<tr>
	 		
	 		
	 		
	 			<th>Jumlah</th>
	 			<th>penjualan</th>
	 			<th>barang </th>
	 			<th>diskon</th>
	 			
	 		</tr>
	 	</thead>
	 	
	<!--  this.jumlah = jumlah;
		this.penjualan = penjualan;
		this.barang = barang;
		this.diskon = diskon; -->
	 	
	 	<tbody>
	 		<c:forEach var="detailPenjualan" items="${detailPenjualan }">
	 			<tr>
	 				<td>${detailPenjualan.jumlah }</td>
	 				<td>${detailPenjualan.penjualan.id }</td>
	 				<td>${detailPenjualan.barang.namaBarang }</td>
	 				<td>${detailPenjualan.diskon.diskon }</td>
	 				
	 				<td>
	 					<a data-id="${detailPenjualan.id }"class="btn btn-outline-danger delete-btn" href="#">Delete</a>
	 					<a id="${detailPenjualan.id }" class="btn btn-outline-warning update-btn" href="#">Update</a>
	 				</td>
	 			</tr>
	 		</c:forEach>
	 	</tbody>
 	</table>
 		<form action="/detailPenjualan/save" method="POST">
 			<table>
 				<tr>
 					<td>jumlah</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="jumlah" placeholder="Masukkan Nama Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>Nota Penjualan</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="penjualan" placeholder="Masukkan Harga Satuan Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>Nama Barang</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="barang" placeholder="DD/MM/YYYY" />
 					</td>
 				</tr>
 				<tr>
 					<td>Diskon</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="diskon" placeholder="Masukkan"/>
 					</td>
 				</tr>
 				
 				<tr>
 					<td></td>
 					<td></td>
 					<td>
 						<input type="submit" name="submit" value="save" />
 					</td>
 				</tr>
 			</table>
 		</form>

 	</div>
 	<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js" integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh" crossorigin="anonymous"></script>
	<script type="text/javascript" src="/assets/bootstrap-4.0.0-beta.2/dist/js/bootstrap.min.js"></script>
	 	
 	<script type="text/javascript">
 		
 		$(document).ready(function(){
 		 var id = 0;
 			$('.update-btn').on('click', function(){
 				
 				//ambil data dari server => ajax
 				id = $(this).attr('id');
 				
 				$.ajax({
 					type: 'POST',
 					url : 'detailPenjualan/detailPenjualanid/'+id,
 					success : function(data){
 						//console.log(JSON.stringify(data));
 						_setFieldUpdateModal(data);
 					},
 					dataType: 'json'
 				});
 				
 				$('#updateModal').modal();
 			});
 			
 			function _setFieldUpdateModal(data){
 				$('#textJumlah').val(data.jumlah);
				$('#textKeterangan').val(data.keterangan);
				$('#textTanggalRetur').val(data.tanggalRetur);
				$('#textTotalHargaRetur').val(data.totalHargaRetur);
				
 			}
 			
 			$('.delete-btn').on('click', function() {

				//ambil data dari server => ajax
				id = $(this).attr('data-id');

				$.ajax({
					type : 'DELETE',
					url : 'detailPenjualan/delete/' + id,
					success : function() {
						window.location = "/detailPenjualan";
					}
				});

			});
 			
 			//event submit data for update
 			$('#submit-update').click(function(){
 				
 				//Object ala js
 				var retur = {
 					id : id,
 					jumlah : $('#textJumlah').val(),
 					keterangan : $('#textKeterangan').val(),
 					tanggalRetur : $('#textTanggalRetur').val(),
 					totalHargaRetur : $('#textTotalHargaRetur').val(),
 					
 				};
 				
 				//ajax update
 				$.ajax({
 					type: 'PUT',
 					url : 'detailPenjualan/update',
 					contentType: "application/json",
 					data: JSON.stringify(DetailPenjualan),
 					success: function(data){
 						window.location = "/detailPenjualan";
 					}
 				});
 			});
 		});
 	</script>
 	
 	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <span aria-hidden="true">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body">
	        <form>
	        
	        <!--  this.id = id;
		this.jumlah = jumlah;
		this.keterangan = keterangan;
		this.tanggalRetur = tanggalRetur;
		this.totalHargaRetur = totalHargaRetur;
		this.karyawan = karyawan;
		this.distributor = distributor;
		this.pembelian = pembelian; -->
	    
			  <div class="form-group">
			    <label for="textJumlah">Jumlah</label>
			    <input type="text" class="form-control" id="textJumlah" name="jumlah" >
			  </div>
			  <div class="form-group">
			    <label for="textKeterangan">Keterangan</label>
			    <input type="text" class="form-control" id="textKeterangan" name="keterangan" >
			  </div>
			  <div class="form-group">
			    <label for="textTanggalRetur">TanggalRetur</label>
			    <input type="text" class="form-control" id="textTanggalRetur" name="tanggalRetur"  >
			  </div>
			  <div class="form-group">
			    <label for="textTotalHargaRetur">TotalHargaRetur</label>
			    <input type="text" class="form-control" id="textTotalHargaRetur" name="totalHargaRetur" >
			  </div>
			  <div class="form-group">
			    <label for="textkaryawan">karyawan</label>
			    <input type="text" class="form-control" id="textkaryawan" name="totalkaryawan" >
			  </div>
			  <div class="form-group">
			    <label for="textdistributor">distributor</label>
			    <input type="text" class="form-control" id="textdistributor" name="distributor" >
			  </div>
			  <div class="form-group">
			    <label for="textpembelian">pembelian</label>
			    <input type="text" class="form-control" id="textpembelian" name="pembelian" >
			  </div>
			</form>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
	        <button type="button" class="btn btn-primary" id="submit-update">Update</button>
	      </div>
	    </div>
	  </div>
	</div>
</body>
</html>