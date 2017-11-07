<%@page import="com.xsis.training125.model.Karyawan"%>
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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


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
							<h2>Tambah Data Karyawan</h2>

							<div class="clearfix"></div>
						</div>
						<div class="x_content">
							<br />
							<form action="/karyawan/save" method="POST" id="demo-form2"
								class="form-horizontal form-label-left" novalidate>
								<div class="item form-group">
									<label class="control-label col-md-3 col-sm-3 col-xs-12"
										for="textNama">Nama Karyawan <span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input id="textNama" class="form-control col-md-7 col-xs-12"
											data-validate-length-range="6" data-validate-words="2"
											name="namaK" placeholder="both name(s) e.g Jon Doe"
											required="required" type="text">
									</div>

								</div>
								<div class="item form-group">

									<label class="control-label col-md-3 col-sm-3 col-xs-12">Jenis
										Kelamin<span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<select class="select2_single form-control" name="jk"
											tabindex="-1" required="required">
											<option value="wanita">Wanita</option>
											<option value="pria">Pria</option>
										</select>
									</div>
								</div>
								<div class="item form-group">
									<label for="textAlamat"
										class="control-label col-md-3 col-sm-3 col-xs-12">Alamat
										<span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input id="textAlamat" class="form-control col-md-7 col-xs-12"
											type="text" name="alamat" required="required"
											placeholder="jl. merdeka" data-validate-length-range="4">
									</div>
								</div>

								<div class="form-group">
									<label for="textTanggal"
										class="control-label col-md-3 col-sm-3 col-xs-12">Tanggal
										Masuk <span class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input id="datepicker"
											class="date-picker form-control col-md-7 col-xs-12 "
											required="required" type="text" name="tanggalMasuk">
									</div>
								</div>
								<div class="form-group">
									<label for="textGaji"
										class="control-label col-md-3 col-sm-3 col-xs-12">Gaji</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input id="textGaji" class="form-control col-md-7 col-xs-12"
											min="0" step="100" data-parsley-validation-threshold="1"
											data-parsley-trigger="keyup" data-parsley-type="number"
											type="text" name="gaji" required="required"
											placeholder="ex : 10000000">
									</div>
								</div>
								<div class="form-group">

									<label class="control-label col-md-3 col-sm-3 col-xs-12">Pekerjaan<span
										class="required">*</span>
									</label>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<select class="select2_single form-control"
											name="pekerjaan.id" tabindex="-1">
											<c:forEach var="pekerjaan" items="${pekerjaan }">
												<option value="${ pekerjaan.id}">${ pekerjaan.deskripsi}</option>
											</c:forEach>
										</select>
									</div>
								</div>
								<div class="ln_solid"></div>
								<div class="form-group">
									<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
										<button class="btn btn-primary" type="reset">Reset</button>
										<button id="send" type="submit" class="btn btn-success">Submit</button>
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
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$('#datepicker').datepicker({
			changeMonth : true,
			changeYear : true
		});
		
	</script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"
		integrity="sha384-vFJXuSJphROIrBnz7yo7oB41mKfc8JzQZiCq4NCceLEaO4IHwicKwpJf9c9IpFgh"
		crossorigin="anonymous"></script>


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

	<!-- validator -->
	<script src="/assets/gentelella-master/vendors/validator/validator.js"></script>


</body>
</html>