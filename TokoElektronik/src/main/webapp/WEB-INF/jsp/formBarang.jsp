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
					<h3>Barang</h3>
				</div>

			</div>
			<div class="clearfix"></div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="x_panel">
						<div class="x_title">
							<h2>Tambah Barang</h2>
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
							<form action="/barang/save" method="POST" id="demo-form2"
								data-parsley-validate class="form-horizontal form-label-left">

								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="textNama">Nama Barang <span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="text" id="textNama" name="namaBarang"
											required="required" class="form-control col-md-7 col-xs-12">
									</div>
								</div>
								<div class="form-group">
								<label class="control-label col-md-3 col-sm-3 col-xs-12" 
									for="textDeskripsiBarang">Deskripsi Barang <span class="required">*</span></label>
									<div class="col-md-6 col-sm-6 col-xs-12">
		                         		 <textarea id="textDeskripsiBarang" required="required" class="form-control" 
		                         		 name="deskripsi"></textarea>						
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="textHarga">Harga Satuan <span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="text" id="textHarga" name="harga"
											required="required" class="form-control col-md-7 col-xs-12">
									</div>
								</div>
								<div class="form-group">
									<label for="textMerk"
										class="control-label col-md-3 col-sm-3 col-xs-12">Merk</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input id="textMerk" class="form-control col-md-7 col-xs-12"
											type="text" name="merk">
									</div>
								</div>

								<div class="form-group">
									<label for="textTanggal"
										class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal
										Masuk <span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input id="textTanggal"
											class="date-picker form-control col-md-7 col-xs-12"
											required="required" type="text" name="tanggalMasuk">
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