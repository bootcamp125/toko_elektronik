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
							<h2>Daftar Barang</h2>
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
											<th class="column-title no-link last"><span class="nobr">Action</span>
											</th>
											<th class="bulk-actions" colspan="7"><a class="antoo"
												style="color: #fff; font-weight: 500;">Bulk Actions ( <span
													class="action-cnt"> </span> ) <i class="fa fa-chevron-down"></i></a>
											</th>
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
														class="pull-right btn btn-primary btn-addItem">Beli</button></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<!-- <a href="#" class="btn btn-default" id="btn-addItem">Add Item</a>
								 -->
							</div>
						</div>
					</div>

				</div>

			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Keranjang Belanja</h2>
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
							<p class="text-muted font-13 m-b-30">Cari barang untuk
								menambahkan transaksi</p>

							<table id="datatable2" class="table table-striped table-bordered">

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
								</tbody>
							</table>
							<button type="button" id="tambah-btn"
								class="pull-right btn btn-primary tambah-btn">Confirm
								Transaksi</button>
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
							var rows = $('#datatable tbody tr'), copyTable = $('#datatable2 tbody');

							rows.click(function() {
								/* var row = $(this), cloneRow = row.clone();
								cloneRow.children('td:last-child').html('<input type="submit" value="Edit" style="font-size: 12px; width: 100px;" class="edit"><input type="submit" value="Delete" style="font-size: 12px; width: 100px;" class="delete">');
								copyTable.append(cloneRow);
								row.hide(); */
								/* var namaBarang = $("td .textNamaBarang").val();
								var harga = $("td .textHarga").val();
								var merk = $("td .textMerk").val();
								var stock = $("td .textStock").val();
								var tanggalMasuk = $("td .textTanggalMasuk").val(); 
								var markup = "<tr><td>" + namaBarang + "</td><td>" + harga + "</td></tr>";
								$("#datatable2 tbody").append(markup); */
								var barang = {
									namaBarang : $("td .textNamaBarang").val(),
									harga : $("td .textHarga").val(),
									merk : $("td .textMerk").val(),
									stock : $("td .textStock").val(),
									tanggalMasuk : $("td .textTanggalMasuk")
											.val()

								}
								//console.log(barang);
							});

							$(document).on(
									"click",
									".btn-addItem",
									function() {

										var namaBarang = $(this).parent()
												.parent().find('td').eq(0)
												.text();
										var harga = $(this).parent().parent()
												.find('td').eq(1).text();
										var merk = $(this).parent().parent()
												.find('td').eq(2).text();
										var stock = $(this).parent().parent()
												.find('td').eq(3).text();
										var tanggalMasuk = $(this).parent()
												.parent().find('td').eq(4)
												.text();
										var diskon = $(this).parent().parent()
												.find('td').eq(5).text();
										var id = $(this).parent().parent()
												.attr('barang-id');
										var barang = {

											id : id,
											namaBarang : namaBarang,
											harga : harga,
											merk : merk,
											stock : stock,
											tanggalMasuk : tanggalMasuk,
											diskon : diskon

										}

										/* console.log(barang); */
										appedTablePembelian(barang);
										$(this).parent().parent().remove();

									});

							function appedTablePembelian(data) {

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
								raw += "<a href='#' class='btn-cancel' data-object='"
										+ JSON.stringify(data) + "'>Cancel</a>";
								raw += "</td>";
								raw += "</tr>";
								$('#datatable2 tbody').append(raw);

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
								raw += "<button type='button' class='pull-right btn btn-primary btn-addItem'>Beli</button>";
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
										$(this).parent().parent().remove();

									});

							copyTable.on('click', '.edit', function(e) {
								e.preventDefault();
								alert('do edit function here');
							});

							copyTable.on('click', '.delete', function(e) {
								var del = $(this).closest('tr');
								var delC = $(this).closest('td:last-child');
								e.preventDefault();
								del.remove();
								$("#datatable").append(del);

							});
						});

		function hapusBarang(data) {
			console.log(data)
		}
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