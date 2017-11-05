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

			<div class="x_content">

				<div class="" role="tabpanel" data-example-id="togglable-tabs">
					<ul id="myTab1" class="nav nav-tabs bar_tabs right" role="tablist">
						<li role="presentation" class="active"><a
							href="#tab_content11" id="home-tabb" role="tab" data-toggle="tab"
							aria-controls="home" aria-expanded="true">Home</a></li>
						<li role="presentation" class=""><a href="#tab_content22"
							role="tab" id="profile-tabb" data-toggle="tab"
							aria-controls="profile" aria-expanded="false">History
								Transaksi</a></li>

					</ul>
					<div id="myTabContent2" class="tab-content">
						<div role="tabpanel" class="tab-pane fade active in"
							id="tab_content11" aria-labelledby="home-tab">
							<form action="/penjualan/save" method="POST">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_title">
											<h2>Daftar Barang</h2>

											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div class="table-responsive">
												<table id="datatable"
													class="table table-striped jambo_table bulk_action">
													<thead>
														<tr class="headings">

															<th class="column-title">Nama Barang</th>
															<th class="column-title">Harga Satuan</th>
															<th class="column-title">Merk</th>
															<th class="column-title">Stock Barang</th>
															<th class="column-title">Tanggal Masuk</th>
															<th class="column-title">Discount</th>
															<th class="column-title no-link last"><span
																class="nobr">Action</span></th>
															
														</tr>
													</thead>

													<tbody>
														<c:forEach var="barang" items="${barang }">
															<tr class="even pointer" barang-id="${barang.id }">

																<td class="textNamaBarang">${barang.namaBarang }</td>
																<td class="textHarga">${barang.harga }</td>
																<td class="textMerk">${barang.merk }</td>
																<td class="textStock">${barang.stock}</td>
																<td class="textTanggalMasuk">${barang.tanggalMasuk }</td>
																<td class="a-right a-right textDiskon ">$7.45</td>
																<td><button type="button" id="tambah-btn"
																		class="pull-right btn btn-primary btn-addItem">
																		<i class="fa fa-shopping-cart"></i> Beli
																	</button></td>
															</tr>
														</c:forEach>
													</tbody>
												</table>
											</div>
										</div>
									</div>

								</div>

							</div>
							<div class="form-group">
								<label for="textNama">No Nota</label> <input type="text"
									class="form-control" id="textNoNota" name="noNota" required="required">

							</div>
							<div class="form-group">
								<label for="textHarga">Tanggal Transaksi</label> <input
									type="text" class="form-control" id="textTanggalPenjualan"
									name="tanggalPenjualan" required="required">
									<input 
									type="hidden" class="form-control" 
									name="totalHarga" id = "textTotalHarga">
									
									<input 
									type="hidden" class="form-control" 
									name="barang.id" id = "textIdBarang">
									<input 
									type="hidden" class="form-control" 
									name="jumlah" id = "textJumlahBarang">
									
							</div>
							<div class="clearfix">
								<br>
							</div>

							<div class="clearfix">
								<br>
							</div>
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_title">
											<h2>Keranjang Belanja</h2>
											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<p class="text-muted font-13 m-b-30">Cari barang untuk
												menambahkan transaksi</p>

											<table id="datatable2"
												class="table table-striped table-bordered">

												<thead>
													<tr>
														<th>Nama Barang</th>
														<th>Harga Satuan</th>
														<th>Merk</th>
														<th>Jumlah Pembelian</th>
														<th>Discount</th>
														<th>Tindakan</th>
													</tr>
												</thead>
												<tbody>
												</tbody>
											</table>
											<button id="btn-confirm-transaksi"
												class="pull-right btn btn-primary" type="submit" name="submit">Confirm
												Transaksi</button>

											<div class="product_price">
											<span class="price-tax">Harga total Pembelian Barang</span> <br>
												<h1 class="price" id="harga">Rp. 0 ,-</h1>
												
											</div>

										</div>
									</div>
								</div>


							</div>
							</form>
						</div>

						<div role="tabpanel" class="tab-pane fade" id="tab_content22"
							aria-labelledby="profile-tab">
							<div class="row">
								<div class="col-md-12 col-sm-12 col-xs-12">
									<div class="x_panel">
										<div class="x_title">
											<h2>Daftar History Transaksi Pelanggan</h2>

											<div class="clearfix"></div>
										</div>
										<div class="x_content">
											<div class="table-responsive">
												<table id="datatable-fixed-header"
													class="table table-striped jambo_table bulk_action">
													<thead>
														<tr class="headings">

															<th class="column-title">No Nota</th>
															<th class="column-title">Tanggal Transaksi</th>
															<th class="column-title">Total Harga</th>
															<th class="column-title">Nama Pelanggan</th>
															<th class="column-title no-link last"><span
																class="nobr">Action</span></th>
															
														</tr>
													</thead>

													<tbody>
														<c:forEach var="penjualan" items="${penjualan }">
															<tr class="even pointer">

																<td>${penjualan.noNota }</td>
																<td>${penjualan.tanggalPenjualan}</td>
																<td>${penjualan.totalHarga }</td>
																<td>${penjualan.pelanggan.name }</td>
																<td><button type="button"
																		class="btn btn-info detail-history-btn"
																		id="${penjualan.noNota }">Detail Transaksi</button>
															</tr>
														</c:forEach>
													</tbody>
												</table>
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
	</div>


	<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							var hargaBarangSatuan = 0;
							var hargaBarangSatuans = 0;
							var hargaBarangText = document.getElementById( 'harga' );
							var jumlah = 1;
							
							$(document)
									.on(
											"click",
											".btn-addItem",
											function() {
												
												var namaBarang = $(this)
														.parent().parent()
														.find('td').eq(0)
														.text();
												var harga = $(this).parent()
														.parent().find('td')
														.eq(1).text();
												var merk = $(this).parent()
														.parent().find('td')
														.eq(2).text();
												var stock = $(this).parent()
														.parent().find('td')
														.eq(3).text();

												var diskon = $(this).parent()
														.parent().find('td')
														.eq(5).text();
												var id = $(this).parent()
														.parent().attr(
																'barang-id');
												var barang = {

													id : id,
													namaBarang : namaBarang,
													harga : harga,
													merk : merk,
													stock : stock,
													diskon : diskon

												}

												/* console.log(barang); */
												var table = $('#datatable')
														.DataTable();
												//$(this).parents("tr").remove();
												table
														.row(
																$(this)
																		.parents(
																				'tr'))
														.remove().draw();
												appendTablePembelian(barang);
												totalHargaBarang(barang);
												alert(hargaBarangSatuan);
												
												hargaBarangText.innerHTML ='Rp.'+hargaBarangSatuan +',-' ;
												$('#textTotalHarga').val(hargaBarangSatuan);
												$('#textIdBarang').val(id);
												
											});
							
							
							function stockOption(data) {
								var myOption = '';

								for (var i = 1; i <= data; i++) {
									myOption += '<option data-id='+i+'>' + i + '</option>';
								}
								
								return myOption;
							}
							
							function appendTablePembelian(data) {

								var raw = "<tr id="+data.id+"> ";
								raw += "<td >";
								raw += data.namaBarang;
								raw += "</td>";
								raw += "<td>";
								raw += data.harga;
								raw += "</td>";
								raw += "<td>";
								raw += data.merk;
								raw += "</td>";

								raw += "<td>";
								raw += ' <div class="form-group"> <div class="col-md-9 col-sm-9 col-xs-12"> <select class="select2_single form-control jumlahPembelianBarang" tabindex="-1">  '
										+ stockOption(data.stock)
										+ '</select>  </div> </div>    ';
								raw += "</td>";
								raw += "<td>";
								raw += data.diskon;
								raw += "</td>";
								raw += "<td>";
								raw += "<a href='#' class='btn btn-warning btn-cancel' data-object='"
										+ JSON.stringify(data)
										+ "'><i class='fa fa-undo '></i> Cancel</a>";
								raw += "</td>";
								raw += "</tr>";
								
								$('#datatable2 tbody').append(raw);
								$('.jumlahPembelianBarang').change(function(){
									jumlah = $(this).find(':selected').data('id');		
									totalHargaSatuJenisBarang(data, jumlah);
									hargaBarangText.innerHTML ='Rp.'+hargaBarangSatuan +',-' ;
									$('#textJumlahBarang').val(jumlah);
								});
								
								
							}
							
							function movingTablePembelian(data) {
								
								var raw = "<tr id="+data.id+"> ";
								raw += "<td>";
								raw += data.namaBarang;
								raw += "</td>";
								raw += "<td>";
								raw += data.harga;
								raw += "</td>";
								raw += "<td>";
								raw += data.merk;
								raw += "</td>";
								raw += "<td>";
								raw += data.stock;
								raw += "</td>";
								raw += "<td>";
								raw += data.tanggalMasuk;
								raw += "</td>";
								raw += "<td>";
								raw += data.diskon;
								raw += "</td>";
								raw += "<td>";
								raw += "<button type='button' class='pull-right btn btn-primary btn-addItem'><i class='fa fa-shopping-cart'></i> Beli</button>";
								raw += "</td>";
								raw += "</tr>";
								$('#datatable tbody').append(raw);

							}

							$(document).on(
									"click",
									".btn-cancel",
									function() {

										var barangCancel = $.parseJSON($(this)
												.attr('data-object'));
										/* console.log(barangCancel); */
										movingTablePembelian(barangCancel);
										//var table = $('#datatable').DataTable();
										//table.row($(this).parents('tr')).remove().draw();
										$('#jumlahPembelianBarang').change(function(){
											alert($(this).find(':selected').data('id'));
											jumlah = $(this).find(':selected').data('id');
										});
										totalHargaBarangk(barangCancel, jumlah);
										hargaBarangText.innerHTML ='Rp.'+hargaBarangSatuan +',-';
										$('#textTotalHarga').val(hargaBarangSatuan);
										$(this).parents("tr").remove();

									});
							
							function totalHargaSatuJenisBarang(data, jumlah){
								var barangtot = parseInt(data.harga*jumlah);						
								return hargaBarangSatuan = barangtot;
							}
							
							function totalHargaBarang(data){							
								return hargaBarangSatuan += parseInt(data.harga);
								
							}
							
							function totalHargaBarangk(data, jumlah){
								return hargaBarangSatuan -= parseInt(data.harga*jumlah);
								
							}
						});
	</script>
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
					<button type="button" class="btn btn-primary" id="submit-update">Update</button>
				</div>
			</div>
		</div>
	</div>

	<!-- modal u/history -->
	<div class="modal fade" id="updateModalHistory" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Update Data
						Transaksi</h5>

				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="textHarga">Tanggal Transaksi</label> <input
								type="text" class="form-control" id="textTanggalPenjualan"
								name="tanggalPenjualan">
						</div>
						<div class="form-group">
							<label for="textMerk">Total Harga</label> <input type="text"
								class="form-control" id="textHargaPenjualan" name="totalHarga">
						</div>
						<div class="form-group">
							<label for="textTanggal">Nama Pelanggan</label> <input
								type="text" class="form-control" id="textPelanggan" name="">
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary" id="submit-update">Update</button>
				</div>
			</div>
		</div>
	</div>

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