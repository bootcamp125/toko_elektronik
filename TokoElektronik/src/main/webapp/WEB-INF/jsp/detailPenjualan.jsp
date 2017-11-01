<%@page import="com.xsis.training125.model.DetailPenjualan"%>
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
	 		
	 			<th>No Nota </th>
	 			<th>Nama Barang</th>
	 			<th>diskon</th>
	 			<th>Jumlah</th>
	 			
	 		</tr>
	 	</thead>
	 	
	<!-- 4 this.jumlah = jumlah;
	1	this.penjualan = penjualan;
	2	this.barang = barang;
	3	this.diskon = diskon; -->
	 	
	 	<tbody>
	 		<c:forEach var="detailPenjualan" items="${detailPenjualan }">
	 			<tr>
	 				<td>${detailPenjualan.penjualan.noNota }</td>
	 				<td>${detailPenjualan.barang.namaBarang }</td>
	 				<td>${detailPenjualan.diskon.diskon }</td>
	 				<td>${detailPenjualan.jumlah }</td>
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
 					<td>jumlah</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="jumlah" placeholder="Masukkan Nama Barang" />
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
				$('#textpenjualan').val(data.penjualan);
				$('#textbarang').val(data.barang);
				$('#textdiskon').val(data.diskon);
				$('#textjumlah').val(data.jumlah);
				
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
 				var DetailPenjualan = {
 					id : id,
 				
 					penjualan : $('#textpenjualan').val(),
 					barang : $('#textbarang').val(),
 					diskon : $('#textdiskon').val(),
 					jumlah : $('#textjumlah').val(),
 					
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
	        
	        <!--  4 this.jumlah = jumlah;
				1	this.penjualan = penjualan;
				2	this.barang = barang;
				3	this.diskon = diskon; -->
	    
			  <div class="form-group">
			    <label for="textpenjualan1">No Nota</label>
			    <input type="text" class="form-control" id="textpenjualan" name="penjualan" >
			  </div>
			  <div class="form-group">
			    <label for="textbarang1">Nama Barang</label>
			    <input type="text" class="form-control" id="textbarang" name="barang"  >
			  </div>
			  <div class="form-group">
			    <label for="textdiskon1">Diskon</label>
			    <input type="text" class="form-control" id="textdiskon" name="diskon" >
			  </div>
			   <div class="form-group">
			    <label for="textJumlah1">Jumlah</label>
			    <input type="text" class="form-control" id="textjumlah" name="jumlah" >
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