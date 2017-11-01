<%@page import="com.xsis.training125.model.Barang"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Gentelella Alela! |</title>

<!-- Bootstrap -->
<link
	href="/assets/gentelella-master/vendors/bootstrap/dist/css/bootstrap.min.css"
	rel="stylesheet">
<!-- Font Awesome -->
<link
	href="/assets/gentelella-master/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<!-- NProgress -->
<link href="/assets/gentelella-master/vendors/nprogress/nprogress.css"
	rel="stylesheet">
<!-- iCheck -->
<link
	href="/assets/gentelella-master/vendors/iCheck/skins/flat/green.css"
	rel="stylesheet">
<!-- bootstrap-wysiwyg -->
<link
	href="/assets/gentelella-master/vendors/google-code-prettify/bin/prettify.min.css"
	rel="stylesheet">
<!-- Select2 -->
<link
	href="/assets/gentelella-master/vendors/select2/dist/css/select2.min.css"
	rel="stylesheet">
<!-- Switchery -->
<link
	href="/assets/gentelella-master/vendors/switchery/dist/switchery.min.css"
	rel="stylesheet">
<!-- starrr -->
<link href="/assets/gentelella-master/vendors/starrr/dist/starrr.css"
	rel="stylesheet">
<!-- bootstrap-daterangepicker -->
<link
	href="/assets/gentelella-master/vendors/bootstrap-daterangepicker/daterangepicker.css"
	rel="stylesheet">

<!-- Custom Theme Style -->
<link href="/assets/gentelella-master/build/css/custom.min.css"
	rel="stylesheet">
</head>
<body class="nav-md">
	<%@ include file="header.jsp"%>

	<!-- page content -->
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>Penjualan</h3>
				</div>

			</div>
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Tambah Penjualan</h2>
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
							<br />
							<form action="/penjualan/save" method="POST" id="demo-form2"
								data-parsley-validate class="form-horizontal form-label-left">

								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="textNama">Tanggal Penjualan <span
										class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="text" name="tanggalPenjualan" required="required"
											class="form-control col-md-7 col-xs-12"
											placeholder="MM/DD/YYYY">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="textHarga">Total Harga <span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="text" name="totalHarga" required="required"
											class="form-control col-md-7 col-xs-12">
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="textHarga">Nama Karyawan<span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="text" name="karyawan" required="required"
											class="form-control col-md-7 col-xs-12">
									</div>
								</div>

								<div class="ln_solid"></div>
								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
										<button class="btn btn-primary" type="button">Cancel</button>
										<button class="btn btn-primary" type="reset">Reset</button>
										<button type="submit" name="submit" class="btn btn-success">Submit</button>
									</div>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Daftar Penjualan Barang</h2>
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
							<p class="text-muted font-13 m-b-30">text here</p>

							<table id="datatable" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>No Nota</th>
										<th>Nama Barang</th>
										<th>Jumlah</th>
										<th>Diskon</th>
										<th>Harga</th>
										<th>Tindakan</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="detailPenjualan" items="${detailPenjualan }">
										<tr>
											<td>SAP${detailPenjualan.penjualan.noNota }</td>
											<td>${detailPenjualan.barang.namaBarang }</td>
											<td>${detailPenjualan.jumlah }</td>
											<td>${detailPenjualan.diskon.diskon }</td>
											<td>${detailPenjualan.harga }</td>
											<td>
												<button type="button" id="${detailPenjualan.id }"
													class="btn btn-info detail-btn">Detail</button>
												<button type="button" id="${detailPenjualan.id }"
													class="btn btn-warning update-btn">Updatea</button>
												<button type="button" data-id="${detailPenjualan.id }"
													class="btn btn-primary delete-btn">Hapus</button>
											</td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
							<script type="text/javascript"
								src="/assets/js/jquery-3.2.1.min.js"></script>
							<script type="text/javascript">
								$(document)
										.ready(
												function() {

													var id = 0;
													$('.update-btn')
															.on(
																	'click',
																	function() {

																		//ambil data dari server => ajax
																		id = $(
																				this)
																				.attr(
																						'id');

																		$
																				.ajax({
																					type : 'POST',
																					url : 'pembelian/pembelianid/'
																							+ id,
																					success : function(
																							data) {
																						//console.log(JSON.stringify(data));
																						_setFieldUpdateModal(data);
																					},
																					dataType : 'json'
																				});

																		$(
																				'#updateModal')
																				.modal();
																	});

													function _setFieldUpdateModal(
															data) {
														$(
																'#texttanggalPembelian')
																.val(
																		data.tanggalPembelian);
														$('#texttotalHarga')
																.val(
																		data.totalHarga);
														$('#textdistributor')
																.val(
																		data.distributor);
														$('#textkaryawan').val(
																data.karyawan);

													}

													$('.delete-btn')
															.on(
																	'click',
																	function() {

																		//ambil data dari server => ajax
																		id = $(
																				this)
																				.attr(
																						'data-id');

																		$
																				.ajax({
																					type : 'DELETE',
																					url : 'pembelian/delete/'
																							+ id,
																					success : function() {
																						window.location = "/pembelian";
																					}
																				});

																	});

													//event submit data for update
													$('#submit-update')
															.click(
																	function() {

																		//Object ala js
																		var Pembelian = {
																			id : id,
																			tanggalPembelian : $(
																					'#texttanggalPembelian')
																					.val(),
																			totalHarga : $(
																					'#texttotalHarga')
																					.val(),
																			distributor : $(
																					'#textdistributor')
																					.val(),
																			karyawan : $(
																					'#textkaryawan')
																					.val(),

																		};
																		//ajax update
																		//ajax update
																		$
																				.ajax({
																					type : 'PUT',
																					url : 'pembelian/update',
																					contentType : "application/json",
																					data : JSON
																							.stringify(Pembelian),
																					success : function(
																							data) {
																						window.location = "/pembelian";
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
	<%@ include file="footer.jsp"%>
	<!-- /footer content -->

	<!-- jQuery -->
	<script
		src="/assets/gentelella-master/vendors/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap -->
	<script
		src="/assets/gentelella-master/vendors/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script
		src="/assets/gentelella-master/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="/assets/gentelella-master/vendors/nprogress/nprogress.js"></script>
	<!-- bootstrap-progressbar -->
	<script
		src="/assets/gentelella-master/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
	<!-- iCheck -->
	<script src="/assets/gentelella-master/vendors/iCheck/icheck.min.js"></script>
	<!-- bootstrap-daterangepicker -->
	<script
		src="/assets/gentelella-master/vendors/moment/min/moment.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap-wysiwyg -->
	<script
		src="/assets/gentelella-master/vendors/bootstrap-wysiwyg/js/bootstrap-wysiwyg.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/jquery.hotkeys/jquery.hotkeys.js"></script>
	<script
		src="/assets/gentelella-master/vendors/google-code-prettify/src/prettify.js"></script>
	<!-- jQuery Tags Input -->
	<script
		src="/assets/gentelella-master/vendors/jquery.tagsinput/src/jquery.tagsinput.js"></script>
	<!-- Switchery -->
	<script
		src="/assets/gentelella-master/vendors/switchery/dist/switchery.min.js"></script>
	<!-- Select2 -->
	<script
		src="/assets/gentelella-master/vendors/select2/dist/js/select2.full.min.js"></script>
	<!-- Parsley -->
	<script
		src="/assets/gentelella-master/vendors/parsleyjs/dist/parsley.min.js"></script>
	<!-- Autosize -->
	<script
		src="/assets/gentelella-master/vendors/autosize/dist/autosize.min.js"></script>
	<!-- jQuery autocomplete -->
	<script
		src="/assets/gentelella-master/vendors/devbridge-autocomplete/dist/jquery.autocomplete.min.js"></script>
	<!-- starrr -->
	<script src="/assets/gentelella-master/vendors/starrr/dist/starrr.js"></script>
	<!-- Custom Theme Scripts -->
	<script src="/assets/gentelella-master/build/js/custom.min.js"></script>


</body>
</html>