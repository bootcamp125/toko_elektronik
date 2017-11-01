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
	 			<th>Keterangan</th>
	 			<th>Tanggal Retur </th>
	 			<th>Total Harga Retur</th>
	 			<th>ID Karyawan</th>
	 			<th>ID Distributor</th>
	 			<th>ID pembelian</th>
	 		</tr>
	 	</thead>
	 	
	<!--  this.id = id;
		this.jumlah = jumlah;
		this.keterangan = keterangan;
		this.tanggalRetur = tanggalRetur;
		this.totalHargaRetur = totalHargaRetur;
		this.karyawan = karyawan;
		this.distributor = distributor;
		this.pembelian = pembelian; -->
	 	
	 	<tbody>
	 		<c:forEach var="retur" items="${retur }">
	 			<tr>
	 				<td>${retur.jumlah }</td>
	 				<td>${retur.keterangan }</td>
	 				<td>${retur.tanggalRetur }</td>
	 				<td>${retur.totalHargaRetur }</td>
	 				<td>${retur.karyawan.namaK }</td>
	 				<td>${retur.distributor.namaDistributor }</td>
	 				<td>${retur.pembelian.id }</td>
	 				<td>
	 					<a data-id="${retur.id }"class="btn btn-outline-danger delete-btn" href="#">Delete</a>
	 					<a id="${retur.id }" class="btn btn-outline-warning update-btn" href="#">Update</a>
	 				</td>
	 			</tr>
	 		</c:forEach>
	 	</tbody>
 	</table>
 		<form action="/retur/save" method="POST">
 			<table>
 				<tr>
 					<td>jumlah</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="jumlah" placeholder="Masukkan Nama Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>keterangan</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="keterangan" placeholder="Masukkan Harga Satuan Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>tanggalRetur</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="tanggalRetur" placeholder="DD/MM/YYYY" />
 					</td>
 				</tr>
 				<tr>
 					<td>totalHargaRetur</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="totalHargaRetur" placeholder="Masukkan"/>
 					</td>
 				</tr>
 				<tr>
 					<td>karyawan</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="karyawan" placeholder="Masukkan"/>
 					</td>
 				</tr>
 				<tr>
 					<td>distributor</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="distributor" placeholder="Masukkan"/>
 					</td>
 				</tr>
 				<tr>
 					<td>pembelian</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="pembelian" placeholder="Masukkan"/>
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
 					url : 'retur/returid/'+id,
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
				$('#textkaryawan').val(data.karyawan.namaK);
				$('#textdistributor').val(data.distributor.namaDistributor);
				$('#textpembelian').val(data.pembelian.id);
 			}
 			
 			$('.delete-btn').on('click', function() {

				//ambil data dari server => ajax
				id = $(this).attr('data-id');

				$.ajax({
					type : 'DELETE',
					url : 'retur/delete/' + id,
					success : function() {
						window.location = "/retur";
					}
				});

			});
 			
 			//event submit data for update
 			$('#submit-update').click(function(){
 				
 				//Object ala js
 				var Retur = {
 					id : id,
 					jumlah : $('#textJumlah').val(),
 					keterangan : $('#textKeterangan').val(),
 					tanggalRetur : $('#textTanggalRetur').val(),
 					totalHargaRetur : $('#textTotalHargaRetur').val(),
 					karyawan : $('#textkaryawan').val(),
 					distributor : $('#textdistributor').val(),
 					pembelian : $('#textpembelian').val()
 				};
 				
 				//ajax update
 				$.ajax({
 					type: 'PUT',
 					url : 'retur/update',
 					contentType: "application/json",
 					data: JSON.stringify(Retur),
 					success: function(data){
 						window.location = "/retur";
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
			    <input type="text" class="form-control" id="textkaryawan" name="karyawan" >
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