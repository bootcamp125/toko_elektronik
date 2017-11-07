<%@page import="com.xsis.training125.model.Barang"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
<!-- Datatables -->
<link
	href="/assets/gentelella-master/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/assets/gentelella-master/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/assets/gentelella-master/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/assets/gentelella-master/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css"
	rel="stylesheet">
<link
	href="/assets/gentelella-master/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css"
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
					<h3>Daftar Stock Barang</h3>
				</div>
			</div>

			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Daftar Barang</h2>
							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<p class="text-muted font-13 m-b-30">Cari barang untuk
								menambahkan transaksi</p>
							<button type="button" id="tambah-barang-btn"
								class="btn btn-success btn-lg">
								<i class="fa fa-plus"></i> Tambah data Barang
							</button>
							<table id="datatable" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Nama Barang</th>
										<th>Harga Satuan</th>
										<th>Merk</th>
										<th>Stock Barang</th>
										<th>Tanggal Masuk</th>
										<th>Discount</th>
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
											<td><a id="diskon-btn" href="#"> <span
													class="badge bg-red pull-left">${barang.diskon.diskon }
														%</span></a></td>
											<td>
												<button type="button" id="${barang.id }"
													class="btn btn-info detail-btn">Detail</button>
												<button type="button" id="${barang.id }"
													class="btn btn-warning update-btn">Update</button>
												<button type="button" data-id="${barang.id }"
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
													var dataId = 0;
													$('#tambah-barang-btn')
															.on(
																	'click',
																	function() {
																		$
																				.ajax({
																					success : function(
																							data) {
																						//console.log(JSON.stringify(data));
																						window.location = "/barang/tambahbarang/";
																					}
																				});

																	});

													var id = 0;
													$('.detail-btn')
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
																					url : '/barang/barangid/'
																							+ id,
																					success : function(
																							data) {
																						//console.log(JSON.stringify(data));
																						_setFieldDetailModal(data);
																					},
																					dataType : 'json'
																				});

																		$(
																				'#detailModal')
																				.modal();
																	});

													function _setFieldDetailModal(
															data) {

														dataId = data.id;
														document
																.getElementById('namaBarang').innerHTML = data.namaBarang
																+ '-'
																+ data.merk;
														document
																.getElementById('deskripsiBarang').innerHTML = 'Deskripsi :'
																+ data.deskripsi;
														document
																.getElementsByClassName("price")[0].innerHTML = 'Rp.'
																+ data.harga
																+ ',-';
														if (data.diskon != null) {

															document
																	.getElementById("diskon-text").innerHTML = 'diskon : '
																	+ data.diskon.diskon
																	+ ' %';
															$('.StateDiskon')
																	.empty();
															$('.StateDiskon')
																	.append(
																			'<a href="#"> <span class="badge bg-green pull-right"> Tanggal Berakhir Diskon : '+ data.diskon.tanggalBerakhir +'</span></a>'+
																			'<button type="button" class="btn btn-default btn-lg update-diskon-btn">Update Diskon</button>'
																					+ '<br>'
																					+ '<button type="button" class="btn btn-default btn-lg delete-diskon-btn" diskon-id="'+ data.diskon.id +'">Delete Diskon</button>');
														} else {
															$('.StateDiskon')
																	.empty();
															document
																	.getElementById("diskon-text").innerHTML = 'diskon : 0 %';
															$('.StateDiskon')
																	.append(
																			'<button type="button" class="btn btn-default btn-lg tambah-diskon-btn">Tambahkan Diskon</button>');
														}

													}

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
																					url : '/barang/barangid/'
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
														$('#textNama')
																.val(
																		data.namaBarang);
														$('#textHarga').val(
																data.harga);
														$('#textMerk').val(
																data.merk);
														$('#textTanggal')
																.val(
																		data.tanggalMasuk);
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
																					url : '/barang/delete/'
																							+ id,
																					success : function() {
																						window.location = "/barang";
																					}
																				});

																	});

													//event submit data for update
													$('#submit-update')
															.click(
																	function() {

																		//Object ala js
																		var Barang = {
																			id : id,
																			namaBarang : $(
																					'#textNama')
																					.val(),
																			harga : $(
																					'#textHarga')
																					.val(),
																			merk : $(
																					'#textMerk')
																					.val(),
																			tanggalMasuk : $(
																					'#textTanggal')
																					.val()
																		};

																		//ajax update
																		$
																				.ajax({
																					type : 'PUT',
																					url : '/barang/update',
																					contentType : "application/json",
																					data : JSON
																							.stringify(Barang),
																					success : function(
																							data) {
																						window.location = "/barang";
																					}
																				});
																	});

													$(document)
															.on(
																	"click",
																	".tambah-diskon-btn",
																	function() {
																		id = dataId;

																		$
																				.ajax({

																					success : function(
																							data) {
																						//console.log(JSON.stringify(data));
																						window.location = "/diskon/tambahdiskon/"
																								+ id;
																					}
																				});

																	});
													$(document)
															.on(
																	"click",
																	".delete-diskon-btn",
																	function() {

																		//ambil data dari server => ajax
																		id = $(
																				this)
																				.attr(
																						'diskon-id');

																		$
																				.ajax({
																					type : 'DELETE',
																					url : '/diskon/delete/'
																							+ id,
																					success : function() {
																						window.location = "/barang";
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
	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Update Data
						Barang</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="textNama">Nama Barang</label> <input type="text"
								class="form-control" id="textNama" name="namaBarang">
						</div>
						<div class="form-group">
							<label for="textHarga">Harga barang</label> <input type="text"
								class="form-control" id="textHarga" name="harga">
						</div>
						<div class="form-group">
							<label for="textMerk">Merk Barang</label> <input type="text"
								class="form-control" id="textMerk" name="merk">
						</div>
						<div class="form-group">
							<label for="textTanggal">Tanggal Masuk</label> <input type="text"
								class="form-control" id="textTanggal" name="tanggalMasuk">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="submit-update"
						onclick="myFunction()">Update</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade " id="detailModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="col-md-12 col-sm-12 col-xs-12">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h2 class="modal-title">Detail Barang</h2>

					</div>
					<div class="modal-body">

						<div class="row">
							<div class="x_panel">

								<div class="x_content">

									<div class="col-md-7 col-sm-7 col-xs-12"
										style="border: 0px solid #e5e5e5;">

										<h3 id="namaBarang" class="prod_title"></h3>

										<p id=deskripsiBarang></p>
										<br />


										<div class="product_price">
											<span class="price-tax">Harga Barang</span> <br>
											<h1 class="price"></h1>
										</div>
										<div class="">
											<a href="#"> <span class="badge bg-red pull-left"
												id="diskon-text"> Diskon : 0 %</span></a>
										</div>
										<br> <br>

										<div class="StateDiskon"></div>

										<div class="product_social">
											<ul class="list-inline">
												<li><a href="#"><i class="fa fa-facebook-square"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-twitter-square"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-envelope-square"></i></a>
												</li>
												<li><a href="#"><i class="fa fa-rss-square"></i></a></li>
											</ul>
										</div>




									</div>
								</div>
							</div>
						</div>
					</div>


				</div>

			</div>
		</div>
	</div>
	<script type="text/javascript">
		
	</script>

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
	<!-- iCheck -->
	<script src="/assets/gentelella-master/vendors/iCheck/icheck.min.js"></script>
	<!-- Datatables -->
	<script
		src="/assets/gentelella-master/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
	<script
		src="/assets/gentelella-master/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
	<script src="/assets/gentelella-master/vendors/jszip/dist/jszip.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/pdfmake/build/pdfmake.min.js"></script>
	<script
		src="/assets/gentelella-master/vendors/pdfmake/build/vfs_fonts.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="/assets/gentelella-master/build/js/custom.min.js"></script>

</body>
</html>