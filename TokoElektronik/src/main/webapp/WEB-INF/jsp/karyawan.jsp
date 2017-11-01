<%@page import="com.xsis.training125.model.Karyawan"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>DataTables | Gentelella</title>

    <!-- Bootstrap -->
    <link href="/assets/gentelella-master/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="/assets/gentelella-master/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="/assets/gentelella-master/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="/assets/gentelella-master/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    <link href="/assets/gentelella-master/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="/assets/gentelella-master/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="/assets/gentelella-master/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="/assets/gentelella-master/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="/assets/gentelella-master/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="/assets/gentelella-master/build/css/custom.min.css" rel="stylesheet">
</head>
<body class="nav-md">
 <%@ include file = "header.jsp" %>

        <!-- page content -->
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						Daftar Karyawan
					</h3>
				</div>

				<div class="title_right">
					<div
						class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
						<div class="input-group">
							<input type="text" class="form-control"
								placeholder="Search for..."> <span
								class="input-group-btn">
								<button class="btn btn-default" type="button">Go!</button>
							</span>
						</div>
					</div>
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Daftar Karyawan</h2>
							<ul class="nav navbar-right panel_toolbox">
								<li><a class="collapse-link"><i
										class="fa fa-chevron-up"></i></a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><i
										class="fa fa-wrench"></i></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">Settings 1</a></li>
										<li><a href="#">Settings 2</a></li>
									</ul></li>
								<li><a class="close-link"><i class="fa fa-close"></i></a></li>
							</ul>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<p class="text-muted font-13 m-b-30"></p>
								 <button type="button" id="tambah-karyawan-btn" class="btn btn-success btn-lg"><i class="fa fa-plus"></i> Tambah Data Karyawan</button>
							<table id="datatable" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Nama </th>
										<th>Pekerjaan</th>
										<th>jenis kelamin</th>
										<th>Alamat</th>
										<th>Tanggal Masuk</th>
										<th>Gaji</th>
										<th>Tindakan</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="karyawan" items="${karyawan }">
									
										<tr>
											<td>${karyawan.namaK }</td>
											<td>${karyawan.pekerjaan.deskripsi }</td>
											<td>${karyawan.jk}</td>
											<td>${karyawan.alamat }</td>
											<td>${karyawan.tanggalMasuk }</td>
											<td>${karyawan.gaji }</td>
											<td>
												<button type="button" id="${karyawan.id }"
													class="btn btn-info detail-btn">Detail</button>
												<button type="button" id="${karyawan.id }"
													class="btn btn-warning update-btn">Update</button>
												<button type="button" data-id="${karyawan.id }"
													class="btn btn-danger delete-btn">Hapus</button>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							<script type="text/javascript"
								src="/assets/js/jquery-3.2.1.min.js"></script>
							<script type="text/javascript">
						$(document).ready(function() {
							$('#tambah-karyawan-btn').on('click', function() {
								$.ajax({
									success : function(data) {
										//console.log(JSON.stringify(data));
										window.location = "/karyawan/tambahkaryawan/";
									}
								});

							});
							
							 var id = 0;
					 			$('.update-btn').on('click', function(){
					 				
					 				//ambil data dari server => ajax
					 				id = $(this).attr('id');
					 				
					 				$.ajax({
					 					type: 'POST',
					 					url : '/karyawan/karyawanid/'+id,
					 					success : function(data){
					 						//console.log(JSON.stringify(data));
					 						_setFieldUpdateModal(data);
					 					},
					 					dataType: 'json'
					 				});
					 				
					 				$('#updateModal').modal();
					 			});
					 			
					 			function _setFieldUpdateModal(data){
					 				$('#textNama').val(data.namaK);
									$('#textJK').val(data.jk);
									$('#textAlamat').val(data.alamat);
									$('#textTanggal').val(data.tanggalMasuk);
									$('#textGaji').val(data.gaji);
									$('#textPekerjaan').val(data.pekerjaan.deskripsi);
					 			}
					 			
					 			$('.delete-btn').on('click', function() {

									//ambil data dari server => ajax
									id = $(this).attr('data-id');

									$.ajax({
										type : 'DELETE',
										url : '/karyawan/delete/' + id,
										success : function() {
											window.location = "/karyawan";
										}
									});

								});
					 			
					 			//event submit data for update
					 			$('#submit-update').click(function(){
					 				
					 				//Object ala js
					 				var Karyawan = {
					 					id : id,
					 					namaK : $('#textNama').val(),
					 					jk : $('#textJK').val(),
					 					alamat : $('#textAlamat').val(),
					 					tanggalMasuk : $('#textTanggal').val(),
					 					gaji : $('#textGaji').val(),
					 					pekerjaan : $('#pekerjaan').val(),
					 				};
					 				
					 				//ajax update
					 				$.ajax({
					 					type: 'PUT',
					 					url : '/karyawan/update',
					 					contentType: "application/json",
					 					data: JSON.stringify(Karyawan),
					 					success: function(data){
					 						window.location = "/karyawan";
					 					}
					 				});
					 			});

						});
					</script>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	
	<!-- /page content -->

        <!-- footer content -->
       <%@ include file = "footer.jsp" %>
        <!-- /footer content -->
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
			    <label for="textNama">Nama Karyawan</label>
			    <input type="text" class="form-control" id="textNama" name="namaK" >
			  </div>
			  <div class="form-group">
			    <label for="textJK">Jenis Kelamin</label>
			    <input type="text" class="form-control" id="textJK" name="jk"  >
			  </div>
			  <div class="form-group">
			    <label for="textAlamat">Alamat</label>
			    <input type="text" class="form-control" id="textAlamat" name="alamat" >
			  </div>
			  <div class="form-group">
			    <label for="textTanggal">Tanggal Masuk</label>
			    <input type="text" class="form-control" id="textTanggal" name="tanggalMasuk" >
			  </div>
			  <div class="form-group">
			    <label for="textGaji">Gaji</label>
			    <input type="text" class="form-control" id="textGaji" name="gaji" >
			  </div>
			   <div class="form-group">
			    <label for="textPekerjaan">Pekerjaan</label>
			    <input type="text" class="form-control" id="textPekerjaan" name="pekerjaan" >  
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
    <!-- jQuery -->
    <script src="/assets/gentelella-master/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="/assets/gentelella-master/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="/assets/gentelella-master/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="/assets/gentelella-master/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="/assets/gentelella-master/vendors/iCheck/icheck.min.js"></script>
    <!-- Datatables -->
    <script src="/assets/gentelella-master/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="/assets/gentelella-master/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="/assets/gentelella-master/vendors/jszip/dist/jszip.min.js"></script>
    <script src="/assets/gentelella-master/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="/assets/gentelella-master/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="/assets/gentelella-master/build/js/custom.min.js"></script>

  </body>
</html>