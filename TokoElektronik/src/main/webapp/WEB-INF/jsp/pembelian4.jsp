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
		<h3>Daftar Pembelian Barang</h3>
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

<div class="row" id="hidderRow1">
<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="x_panel">
		<div class="x_title">
		<h2>Daftar Pembelian</h2>
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
				<button type="button" id="tambah-pembelian-btn"
					class="btn btn-success btn-lg">
					<i class="fa fa-plus"></i> Barang Baru
				</button>
				<!-- action="pembelian" method="GET"  -->
				<form id="111" class="form-horizontal form-label-left" novalidate>
					<span class="section">Personal Info</span>
					<div class="item form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12"
							for="name">No Produk <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input id="produk"
								class="produk form-control col-md-7 col-xs-12"
								data-validate-length-range="6" data-validate-words="2"
								name="produk" placeholder="masukan nomor produk"
								required="required" type="text">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Nama
							Barang<span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<select id="barang" class="barang select2_single form-control"
								name="barang" tabindex="-1">
								<c:forEach var="barang" items="${barang }">
									<option value="${barang.namaBarang}">${barang.namaBarang}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="item form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12"
							for="kategori">Kategori <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input id="kategori" type="text" name="kategori"
								data-validate-length-range="5,20"
								class="kategori optional form-control col-md-7 col-xs-12">
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12">Distributor<span
							class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<select id="distributor"
								class="distributor select2_single form-control "
								name="distributor" tabindex="-1">
								<c:forEach var="distributor" items="${distributor }">
									<option value="${distributor.namaDistributor}">${distributor.namaDistributor}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="item form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12"
							for="jumlahBarang">Jumlah Barang <span
							class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input id="jumlahBarang" type="number" name="jumlahBarang"
								data-validate-length-range="5,20"
								class="optional form-control col-md-7 col-xs-12">
						</div>
					</div>
					<div class="item form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12"
							for="harga">Harga <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input id="harga" type="number" name="harga"
								data-validate-length-range="5,20"
								class="optional form-control col-md-7 col-xs-12">

						</div>
					</div>
					<div class="item form-group">
						<label class="control-label col-md-3 col-sm-3 col-xs-12"
							for="deskripsi">Deskripsi <span class="required">*</span>
						</label>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<input required="required" id="deskripsi" type="text" name="deskripsi"
								data-validate-length-range="5,20"
								class="optional form-control col-md-7 col-xs-12">
						</div>
					</div>
					
					<div class="ln_solid"></div>
					<div class="form-group">
						<div class="col-md-6 col-md-offset-3">
							<button class="btn btn-primary" type="reset">Reset</button>
							<button type="reset" id="tambah-btn"
									class="pull-right btn btn-primary tambah-btn">Tambah
									transaksi</button>
						</div>
					</div>
				</form>

				<div class="clearfix"></div>

				<div class="row">

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>Daftar Pembelian</h2>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

		<table id="datatable2"
		class="table table-striped table-bordered">
		<thead>
			<tr>
				<th>No Produk</th>
				<th>Nama barang</th>
				<th>Kategori</th>
				<th>Distributor</th>
				<th>Jumlah Barang</th>
				<th>Harga</th>
				<th>Deskripsi</th>
				<th>Batal</th>
			</tr>
		 <tr>
		 <button type="button" class="delete-row">Delete Row</button>
		 <button type="submit" name="submit" class="btn btn-success">Submit</button>
		 </tr>
		</thead>
		<tbody>
											
		</tbody>
		</table>
		<script type="text/javascript"
			src="/assets/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			
	        $(".tambah-btn").click(function(){
	        	
	            var noProduk = $("#produk").val();
	            var barang = $("#barang").val();
	            var kategori = $("#kategori").val();
	            var distributor = $("#distributor").val();
	            var jumlahBarang = $("#jumlahBarang").val();
	            var harga=$("#harga").val();
	            var deskripsi=$("#deskripsi").val();
	            var markup = 
	            "<tr><td>" + noProduk + "</td><td>" + barang + "</td><td>"+kategori+ "</td><td>"+distributor+"</td><td>"+jumlahBarang+"</td><td>"+harga+"</td><td>"+deskripsi+"</td><td><input type='checkbox' name='record'></td></tr>";
	            $("table tbody").append(markup);
	        });
	        
	        // Find and remove selected table rows
	        $(".delete-row").click(function(){
	            $("table tbody").find('input[name="record"]').each(function(){
	            	if($(this).is(":checked")){
	                    $(this).parents("tr").remove();
	                }
	            });
	        });
	    });   
				 
				 
				
				 
				/* function(data) {
					var t = $('#datatable2').DataTable();
					var counter = 1;
					$('#tambah-btn').on('click',function() {
						t.row.add([ 
							$('#kategori').val(data.kategori),
							counter + '.2',
							counter + '.3',
							counter + '.4',
							counter + '.5',
							counter + '.6' 
							])
							.draw(false);
						counter++;
					});

				}); */
</script>
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
						Pembelian</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="textJumlah">Tanggal Pembelian</label> <input
								type="text" class="form-control" id="texttanggalPembelian"
								name="tanggalPembelian">
						</div>
						<div class="form-group">
							<label for="textKeterangan">Total Harga</label> <input
								type="text" class="form-control" id="texttotalHarga"
								name="totalHarga">
						</div>
						<div class="form-group">
							<label for="textTanggalRetur">Distributor</label> <input
								type="text" class="form-control" id="textdistributor"
								name="distributor">
						</div>
						<div class="form-group">
							<label for="textTanggalRetur">Karyawan</label> <input type="text"
								class="form-control" id="textkaryawan" name="karyawan">
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