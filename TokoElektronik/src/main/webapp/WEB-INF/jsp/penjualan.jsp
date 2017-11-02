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
											<th><input type="checkbox" id="check-all" class="flat">
											</th>
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
											<tr class="even pointer">
												<td class="a-center "><input type="checkbox"
													class="flat" name="table_records" id="${barang.id }"></td>
												<td class=" ">${barang.namaBarang }</td>
												<td class=" ">${barang.harga }</td>
												<td class=" ">${barang.merk }</td>
												<td class=" ">${barang.stock}</td>
												<td class=" ">${barang.tanggalMasuk }</td>
												<td class="a-right a-right ">$7.45</td>
												<td class=" last"><a href="#">View</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<button type="button" id="btnAddUser"
									class="pull-right btn btn-primary tambah-btn">Tambah
									transaksi</button>

							</div>
						</div>
					</div>

				</div>

			</div>
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
							<p class="text-muted font-13 m-b-30">Cari barang untuk
								menambahkan transaksi</p>
							<table id="datatable2"
								class="table table-striped table-bordered">
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

									<tr id="Row2">
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td><a id="diskon-btn" href="#"> <span
												class="badge bg-red pull-left"></span></a></td>
										<td>
											<button type="button" class="btn btn-info detail-btn">Detail</button>
											<button type="button" class="btn btn-warning update-btn">Update</button>
											<button type="button" class="btn btn-primary delete-btn">Hapus</button>
										</td>
									</tr>


								</tbody>
							</table>

						</div>
					</div>
				</div>

			</div>

		</div>
	</div>


	<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
	<script type="text/javascript">
		function addUser() {
			var $source = $("#datatable").DataTable();
			var names = $($source.rows().nodes()).filter(':has(:checked)').map(
					function() {
						return $(this).children().first().text();
					}).toArray();

			var $rows = $source.rows(function(i, data) {
				return names.indexOf('' + data.order) != -1;
			});

			var data = $rows.data();

			if (data.length > 0)
				$("#datatable2").DataTable().rows.add(data.toArray()).draw();
		}

		function checkAll(check) {
			var $source = $("#datatable").DataTable();
			var names = $($source.rows().nodes())
					.find('input[type="checkbox"]').each(function(i, el) {
						el.checked = check == 1;
					});
		//a
			return false;
		}

		$(document).ready(function() {
			var dt = $('#example').dataTable();
			dt.fnDestroy();
		});

		$(document)
				.ready(
						function() {
							var url = 'http://www.json-generator.com/api/json/get/clmDuyndua?indent=2';
							var table = $('#example').DataTable({
								ajax : url,
								createdRow : function(row, data, dataIndex) {
									$(row).attr('id', 'row-' + dataIndex);
								},
								rowReorder : {
									dataSrc : 'order',
								},
								columns : [ {
									data : 'order'
								}, {
									data : 'name'
								}, {
									data : 'place'
								} ]
							});
							table.rowReordering();

						});

		$(document).ready(function() {
			var dt = $('#example2').dataTable();
			dt.fnDestroy();
		});

		$(document)
				.ready(
						function() {
							var url = 'http://www.json-generator.com/api/json/get/cnmZgfsBKa?indent=2';
							var table = $('#example2').DataTable({
								ajax : url,
								createdRow : function(row, data, dataIndex) {
									$(row).attr('id', 'row-' + dataIndex);
								},
								rowReorder : {
									dataSrc : 'order',
								},
								columns : [ {
									data : 'order'
								}, {
									data : 'name'
								}, {
									data : 'checkbox'
								} ]
							});
							table.rowReordering();

						});

		$(document).ready(function() {
			$('body').on('mouseenter', 'input', function() {
				$('.btn').prop('disabled', true);
			});
			$('body').on('mouseout', 'input', function() {
				$('.btn').prop('disabled', false);
			});

			$('#checkAll').click(function() {
				checkAll(1);
			});
			$('#uncheckAll').click(function() {
				checkAll(0);
			});
			$('#btnAddUser').click(function() {
				addUser();
			});
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