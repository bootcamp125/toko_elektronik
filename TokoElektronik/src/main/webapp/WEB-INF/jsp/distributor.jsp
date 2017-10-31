<%@page import="com.xsis.training125.model.Distributor"%>
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
	 			<th>nama </th>
	 			<th>alamat</th>
	 			<th>No Contact</th>
	 		</tr>
	 	</thead>
	 	<tbody>
	 		<c:forEach var="distributor" items="${distributor }">
	 			<tr>
	 				<td>${distributor.namaDistributor }</td>
	 				<td>${distributor.alamat }</td>
	 				<td>${distributor.noContact }</td>
	 				
	 				
	 				
	 				<td>
	 					<a data-id="${distributor.id }"class="btn btn-outline-danger delete-btn" href="#">Delete</a>
	 					<a id="${distributor.id }" class="btn btn-outline-warning update-btn" href="#">Update</a>
	 				</td>
	 			</tr>
	 		</c:forEach>
	 	</tbody>
 	</table>
 		<form action="/distributor/save" method="POST">
 			<table>
 			
		
 				<tr>
 					<td>Nama Distributor</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="namaDistributor" placeholder="Masukkan Nama deskripsi" />
 					</td>
 				</tr>
 				<tr>
 					<td>alamat</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="alamat" placeholder="Masukkan Nama deskripsi" />
 					</td>
 				</tr>
 				<tr>
 					<td>no Contact</td>
 					<td>:</td>
 					<td>
 						<input type="text" name="noContact" placeholder="Masukkan Nama deskripsi" />
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
 					url : 'distributor/distributorid/'+id,
 					success : function(data){
 						//console.log(JSON.stringify(data));
 						_setFieldUpdateModal(data);
 					},
 					dataType: 'json'
 				});
 				
 				$('#updateModal').modal();
 			});
 			
 			function _setFieldUpdateModal(data){
 				$('#textnamaDistributor').val(data.namaDistributor);
 				$('#textalamat').val(data.alamat);
				$('#textnoContact').val(data.noContact);
				
 			}
 			
 			$('.delete-btn').on('click', function() {

				//ambil data dari server => ajax
				id = $(this).attr('data-id');

				$.ajax({
					type : 'DELETE',
					url : 'distributor/delete/' + id,
					success : function() {
						window.location = "/distributor";
					}
				});

			});
 			
 			//event submit data for update
 			$('#submit-update').click(function(){
 				
 				//Object ala js
 				var Distributor = {
 					id : id,
 					namaDistributor: $('#textnamaDistributor').val(),
 					alamat: $('#textalamat').val(),
 					noContact: $('#textnoContact').val(),
 					
 					
 				};
 				
 				//ajax update
 				$.ajax({
 					type: 'PUT',
 					url : 'distributor/update',
 					contentType: "application/json",
 					data: JSON.stringify(Distributor),
 					success: function(data){
 						window.location = "/distributor";
 					}
 				});
 			});
 		});
 	</script>
 	
<!--  	this.namaDistributor = namaDistributor;
		this.alamat = alamat;
		this.noContact = noContact; -->
 	
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
			    <label for="textNama">namaDistributor</label>
			    <input type="text" class="form-control" id="textnamaDistributor" name="namaDistributor" >
			  </div>
			  <div class="form-group">
			    <label for="textNama">alamat</label>
			    <input type="text" class="form-control" id="textalamat" name="alamat" >
			  </div>
			  <div class="form-group">
			    <label for="textNama">no Contact</label>
			    <input type="text" class="form-control" id="textnoContact" name="noContact" >
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