<%@page import="com.xsis.training125.model.Diskon"%>
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
	 			<th>diskon</th>
	 			<th>Harga Diskon</th>
	 			<th>Tanggal Berakhir</th>
	 		
	 		</tr>
	 	</thead>
	 	<tbody>
	 		<c:forEach var="diskon" items="${diskon }">
	 			<tr>
	 				<td>
	 				
	 				${diskon.barang.namaBarang }
	 				
	 				</td>
	 				<td>${diskon.diskon }</td>
	 				<td>${diskon.hargaDiskon }</td>
	 				<td>${diskon.tanggalBerakhir }</td>
	 				
	 				
	 				<td>
	 					<a data-id="${diskon.id }"class="btn btn-outline-danger delete-btn" href="#">Delete</a>
	 					<a id="${diskon.id }" class="btn btn-outline-warning update-btn" href="#">Update</a>
	 				</td>
	 			</tr>
	 		</c:forEach>
	 	</tbody>
 	</table>
 		<form action="/diskon/save" method="POST">
 			<table>
 				<tr>
 				
 				<!-- this.diskon = diskon;
				this.hargaDiskon = hargaDiskon;
				this.tanggalBerakhir = tanggalBerakhir;
				this.barang = barang; -->
 				
 					<td>Barang</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="barang" placeholder="Masukkan Nama deskripsi" />
 					</td>
 					</tr>
 					<tr>
 					<td>Diskon</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="diskon" placeholder="Masukkan Nama deskripsi" />
 					</td>
 					</tr>
 					<tr>
 					<td>Harga Diskon</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="hargaDiskon" placeholder="Masukkan Nama deskripsi" />
 					</td>
 					</tr>
 					<tr>
 					<td>Tanggal Berakhir</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="tanggalBerakhir" placeholder="Masukkan Nama deskripsi" />
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
 					url : 'diskon/diskonid/'+id,
 					success : function(data){
 						//console.log(JSON.stringify(data));
 						_setFieldUpdateModal(data);
 					},
 					dataType: 'json'
 				});
 				
 				$('#updateModal').modal();
 			});
 			
 			function _setFieldUpdateModal(data){
 				$('#textbarang').val(data.barang.namaBarang);
 				$('#textdiskon').val(data.diskon);
 				$('#texthargaDiskon').val(data.hargaDiskon);
 				$('#texttanggalBerakhir').val(data.tanggalBerakhir);
				
 			}
 			
 			$('.delete-btn').on('click', function() {

				//ambil data dari server => ajax
				id = $(this).attr('data-id');

				$.ajax({
					type : 'DELETE',
					url : 'diskon/delete/' + id,
					success : function() {
						window.location = "/diskon";
					}
				});

			});
 			
 			//event submit data for update
 			$('#submit-update').click(function(){
 				
 				//Object ala js
 				var Diskon = {
 					id : id,
 					barang: $('#textbarang').val(),
 					diskon: $('#textdiskon').val(),
 					hargaDiskon: $('#texthargaDiskon').val(),
 					tanggalBerakhir: $('#texttanggalBerakhir').val(),
 				};
 				
 				//ajax update
 				$.ajax({
 					type: 'PUT',
 					url : 'diskon/update',
 					contentType: "application/json",
 					data: JSON.stringify(diskon),
 					success: function(data){
 						window.location = "/diskon";
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
			    <label for="textBarang">barang</label>
			    <input type="text" class="form-control" id="textbarang" name="barang" >
			  </div>
			  <div class="form-group">
			    <label for="textDiskon">diskon</label>
			    <input type="text" class="form-control" id="textdiskon" name="diskon" >
			  </div>
			  <div class="form-group">
			    <label for="textHargaDiskon">hargaDiskon</label>
			    <input type="text" class="form-control" id="texthargaDiskon" name="hargaDiskon" >
			  </div>
			  <div class="form-group">
			    <label for="textTanggalBerakhir">tanggalBerakhir</label>
			    <input type="text" class="form-control" id="texttanggalBerakhir" name="tanggalBerakhir" >
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