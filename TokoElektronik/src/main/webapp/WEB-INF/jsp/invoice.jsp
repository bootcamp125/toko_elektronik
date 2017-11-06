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
					<h3>
						Invoice
					</h3>
				</div>

				
			</div>

			<div class="clearfix"></div>

			<div class="row">
				<div class="col-md-12">
					<div class="x_panel">
						
						<div class="x_content">
						
							<section class="content invoice">
								<!-- title row -->
								<div class="row">
									<div class="col-xs-12 invoice-header">
										<h1>
											<i class="fa fa-globe"></i> Invoice. <small
												class="pull-right">${penjualan.tanggalPenjualan }</small>
										</h1>
									</div>
									<!-- /.col -->
								</div>
								<!-- info row -->
								<div class="row invoice-info">
									<div class="col-sm-4 invoice-col">
										From
										<address>
											<strong>Iron Admin, Inc.</strong> <br>795 Freedom Ave,
											Suite 600 <br>New York, CA 94107 <br>Phone: 1 (804)
											123-9876 <br>Email: ironadmin.com
										</address>
									</div>
									<!-- /.col -->
									<div class="col-sm-4 invoice-col">
										To
										<address>
											<strong>${penjualan.pelanggan.name }</strong> <br>${penjualan.pelanggan.address }
											 <br>Phone: 1 (804) 123-9876
											<br>Email: ${penjualan.pelanggan.email }
										</address>
									</div>
									<!-- /.col -->
									<div class="col-sm-4 invoice-col">
										<b>Invoice #${penjualan.noNota }</b> <br> <br> <b>Order ID:</b>
										${penjualan.noNota } <br> 
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->

								<!-- Table row -->
								<div class="row">
									<div class="col-xs-12 table">
										<table class="table table-striped">
											<thead>
												<tr>
													<th>Nama Barang</th>
													<th>Harga Per barang</th>
													<th>Jumlah </th>
													<th style="width: 59%">Description</th>
													<th>Subtotal</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="detailPenjualan" items="${detailPenjualan }">
												<tr>
												
													<td>${detailPenjualan.barang.namaBarang}</td>
													<td>${detailPenjualan.barang.harga}</td>
													<td>${detailPenjualan.jumlah}</td>
													<td>${detailPenjualan.barang.deskripsi}</td>
													<td>${detailPenjualan.harga}</td>
													
												</tr>
												
												</c:forEach>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td>${penjualan.totalHarga}</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- /.col -->
								</div>
								<!-- /.row -->

								
								<!-- /.row -->

								<!-- this row will not appear when printing -->
								<div class="row no-print">
									<div class="col-xs-12">
										<button class="btn btn-default" onclick="window.print();">
											<i class="fa fa-print"></i> Print
										</button>
										
										<button class="btn btn-primary pull-right"
											style="margin-right: 5px;">
											<i class="fa fa-download"></i> Generate PDF
										</button>
									</div>
								</div>
							</section>
							
						</div>
					
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<!-- /page content -->
	<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		
	</script>
	<!-- footer content -->
	<%@ include file="footer.jsp"%>
	<!-- /footer content -->
	<div class="modal fade" id="updateModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Update
						Distributor</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="textNama">Nama Distributor</label> <input type="text"
								class="form-control" id="textNama" name="namaDistributor">
						</div>

						<div class="form-group">
							<label for="textJK">Alamat Distributor</label> <input type="text"
								class="form-control" id="textAlamat" name="alamat">
						</div>
						<div class="form-group">
							<label for="textAlamat">Nomor Contact</label> <input type="text"
								class="form-control" id="textNoContact" name="noContact">
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