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
	<%@ include file="header.jsp"%>
	<!-- page content -->
	<div class="right_col" role="main">
		<div class="">
			<div class="page-title">
				<div class="title_left">
					<h3>
						Transaksi 
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
							<p class="text-muted font-13 m-b-30">Cari barang untuk
								menambahkan transaksi</p>
							<table id="datatable" class="table table-striped table-bordered">
								<thead>
									<tr>
										<th>Nama Barang</th>
										<th>Harga Satuan</th>
										<th>Merk</th>
										<th>Jumlah Stock yang Tersedia</th>
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
											<td></td>
											<td>
												<button type="button" class="btn btn-info detail-btn">Detail
													Barang</button>
												<button type="button" class="btn btn-warning ">
													<i class="fa fa-plus-square"></i> Penjualan
												</button>
											</td>
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


	<!-- /page content -->

	<!-- footer content -->
	<%@ include file="footer.jsp"%>
	<!-- /footer content -->


	<!-- jQuery -->
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