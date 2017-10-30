<%@page import="com.xsis.training125.model.Barang"%>
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
	 			<th>Nama Barang</th>
	 			<th>Harga Satuan</th>
	 			<th>Merk </th>
	 			<th>Jumlah Stock yang Tersedia</th>
	 			<th>Tanggal Masuk</th>
	 			<th>Tindakan</th>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		<c:forEach var="barang" items="${barang }">
	 			<tr>
	 				<td>${barang.namaBarang }</td>
	 				<td>${barang.harga }</td>
	 				<td>${barang.merk }</td>
	 				<td>${barang.stock }</td>
	 				<td>${barang.tanggalMasuk }</td>
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
 					<td>Nama Barang</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="namaBarang" placeholder="Masukkan Nama Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>Harga Satuan</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="harga" placeholder="Masukkan Harga Satuan Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>Merk</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="merk" placeholder="Masukkan Merk Barang" />
 					</td>
 				</tr>
 				<tr>
 					<td>Tanggal Masuk</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="tanggalMasuk" placeholder="DD/MM/YYYY"/>
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
 					url : 'barang/barangid/'+id,
 					success : function(data){
 						//console.log(JSON.stringify(data));
 						_setFieldUpdateModal(data);
 					},
 					dataType: 'json'
 				});
 				
 				$('#updateModal').modal();
 			});
 			
 			function _setFieldUpdateModal(data){
 				$('#textNama').val(data.namaBarang);
				$('#textHarga').val(data.harga);
				$('#textMerk').val(data.merk);
				$('#textTanggal').val(data.tanggalMasuk);
 			}
 			
 			$('.delete-btn').on('click', function() {

				//ambil data dari server => ajax
				id = $(this).attr('data-id');

				$.ajax({
					type : 'DELETE',
					url : 'barang/delete/' + id,
					success : function() {
						window.location = "/barang";
					}
				});

			});
 			
 			//event submit data for update
 			$('#submit-update').click(function(){
 				
 				//Object ala js
 				var Barang = {
 					id : id,
 					namaBarang : $('#textNama').val(),
 					harga : $('#textHarga').val(),
 					merk : $('#textMerk').val(),
 					tanggalMasuk : $('#textTanggal').val()
 				};
 				
 				//ajax update
 				$.ajax({
 					type: 'PUT',
 					url : 'barang/update',
 					contentType: "application/json",
 					data: JSON.stringify(Barang),
 					success: function(data){
 						window.location = "/barang";
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
			  <div class="form-group">
			    <label for="textNama">Nama Barang</label>
			    <input type="text" class="form-control" id="textNama" name="namaBarang" >
			  </div>
			  <div class="form-group">
			    <label for="textHarga">Harga barang</label>
			    <input type="text" class="form-control" id="textHarga" name="harga" >
			  </div>
			  <div class="form-group">
			    <label for="textMerk">Merk Barang</label>
			    <input type="text" class="form-control" id="textMerk" name="merk"  >
			  </div>
			  <div class="form-group">
			    <label for="textTanggal">Tanggal Masuk</label>
			    <input type="text" class="form-control" id="textTanggal" name="tanggalMasuk" >
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