<%@page import="com.xsis.training125.model.Penjualan"%>
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
	 		
	 		
	 		
	 			<th>Tanggal Pembelian</th>
	 			<th>Total Harga</th>
	 			<th>Nama Karyawan</th>
	 			
	 			
	 		</tr>
	 	</thead>
	 	
	<!--  
		this.tanggalPenjualan = tanggalPenjualan;
		this.totalHarga = totalHarga;
		this.karyawan = karyawan;
		-->
	 	
	 	<tbody>
	 		<c:forEach var="penjualan" items="${penjualan }">
	 			<tr>
	 				<td>${penjualan.tanggalPenjualan }</td>
	 				<td>${penjualan.totalHarga }</td>
	 				<td>${penjualan.karyawan.namaK }</td>
	 				
	 				
	 				<td>
	 					<a data-id="${penjualan.noNota }"class="btn btn-outline-danger delete-btn" href="#">Delete</a>
	 					<a id="${penjualan.noNota }" class="btn btn-outline-warning update-btn" href="#">Update</a>
	 				</td>
	 			</tr>
	 		</c:forEach>
	 	</tbody>
 	</table>
 		<form action="/penjualan/save" method="POST">
 			<table>
 				<tr>
 					<td>Tanggal Penjualan</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="tanggalPenjualan" placeholder="MM/DD/YYYY" />
 					</td>
 				</tr>
 				<tr>
 					<td>Total Harga</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="totalHarga" placeholder="Masukkan Harga" />
 					</td>
 				</tr>
 				<tr>
 					<td>Nama Karyawan</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="karyawan" placeholder="id karyawan" />
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
 	<script type="text/javascrip" src="/assets/js/jquery-3.2.1.min.js"></script>
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
 					url : 'penjualan/penjualanid/'+id,
 					success : function(data){
 						//console.log(JSON.stringify(data));
 						_setFieldUpdateModal(data);
 					},
 					dataType: 'json'
 				});
 				
 				$('#updateModal').modal();
 			});
 			
 			function _setFieldUpdateModal(data){
 				$('#texttanggalPenjualan').val(data.tanggalPenjualan);
				$('#texttotalHarga').val(data.totalHarga);
				$('#textkaryawan').val(data.karyawan);
				
 			}
 			
 			
 			$('.delete-btn').on('click', function() {

				//ambil data dari server => ajax
				id = $(this).attr('data-id');

				$.ajax({
					type : 'DELETE',
					url : 'penjualan/delete/' + id,
					success : function() {
						window.location = "/penjualan";
					}
				});

			});
 			
 			//event submit data for update
 			$('#submit-update').click(function(){
 				
 				//Object ala js
 				var Penjualan = {
 					id : id,
 					tanggalPenjualan : $('#texttanggalPenjualan').val(),
 					totalHarga : $('#texttotalHarga').val(),
 					karyawan : $('#textkaryawan').val(),
 					
 				};
 				  
 				//ajax update
 				$.ajax({
 					type: 'PUT',
 					url : 'penjualan/update',
 					contentType: "application/json",
 					data: JSON.stringify(Penjualan),
 					success: function(data){
 						window.location = "/penjualan";
 					}
 				});
 			});
 		});
 	</script>
 	<!-- this.tanggalPenjualan = tanggalPenjualan;
		this.totalHarga = totalHarga;
		this.karyawan = karyawan;-->
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
	        
	      
	    
			  <div class="form-group">
			    <label for="textJumlah">Tanggal Penjualan</label>
			    <input type="text" class="form-control" id="texttanggalPenjualan" name="tanggalPenjualan" >
			  </div>
			  
			  <div class="form-group">
			    <label for="textKeterangan">Total Harga</label>
			    <input type="text" class="form-control" id="texttotalHarga" name="totalHarga" >
			  </div>
			 
			  <div class="form-group">
			    <label for="textTanggalRetur">Karyawan</label>
			    <input type="text" class="form-control" id="textkaryawan" name="karyawan"  >
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