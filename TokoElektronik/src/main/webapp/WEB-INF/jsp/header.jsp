
<div class="container body">
	<div class="main_container">
		<div class="col-md-3 left_col">
			<div class="left_col scroll-view">
				<div class="navbar nav_title" style="border: 0;">
					<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
						<span>Gentelella Alela!</span></a>
				</div>

				<div class="clearfix"></div>

				<!-- menu profile quick info -->
				<div class="profile clearfix">
					<div class="profile_pic">
						<img src="/assets/gentelella-master/production/images/img.jpg"
							alt="..." class="img-circle profile_img">
					</div>
					<div class="profile_info">
						<span>Welcome,</span>
						<c:forEach var="karyawan" items="${karyawan }">
							<h2>${karyawan.namaK }</h2>
						</c:forEach>
					</div>
				</div>
				<!-- /menu profile quick info -->

				<br />

				<!-- sidebar menu -->
				<div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
					<div class="menu_section">
						<h3>General</h3>
						<ul class="nav side-menu">
							<li><a id="transaksi-btn"><i class="fa fa-shopping-cart"></i>
									Transaksi Barang </a></li>
							<li><a id="barang-btn"><i class="fa fa-edit"></i> Barang
							</a></li>
							<li><a id="pembelian-btn"><i class="fa fa-desktop"></i>
									Pembelian Barang </a></li>
							<li><a id="pelanggan-btn"><i class="fa fa-users"></i>
									Pelanggan </a></li>
							<li><a id="karyawan-btn"><i class="fa fa-user"></i>
									Karyawan </a></li>
							<li><a id="supplier-btn"><i class="fa fa-truck"></i>
									Distributor </a></li>
							<li><a id="pekerjaan-btn"><i class="fa fa-briefcase"></i>
									Pekerjaan </a></li>
									
						</ul>
					</div>

				</div>
				<!-- /sidebar menu -->

				<!-- /menu footer buttons -->
				<div class="sidebar-footer hidden-small">
					<a data-toggle="tooltip" data-placement="top" title="Settings">
						<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
					</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
						<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
					</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
						class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
					</a> <a data-toggle="tooltip" data-placement="top" title="Logout"
						href="login.html"> <span class="glyphicon glyphicon-off"
						aria-hidden="true"></span>
					</a>
				</div>
				<!-- /menu footer buttons -->
			</div>
		</div>

		<!-- top navigation -->
		<div class="top_nav">
			<div class="nav_menu">
				<nav>
					<div class="nav toggle">
						<a id="menu_toggle"><i class="fa fa-bars"></i></a>
					</div>

					<ul class="nav navbar-nav navbar-right">
						<li class=""><a href="javascript:;"
							class="user-profile dropdown-toggle" data-toggle="dropdown"
							aria-expanded="false"> <img
								src="/assets/gentelella-master/production/images/img.jpg" alt="">
								<c:forEach var="karyawan" items="${karyawan }">
						${karyawan.namaK }
					</c:forEach> <span class=" fa fa-angle-down"></span>
						</a>
							<ul class="dropdown-menu dropdown-usermenu pull-right">
								<li><a href="javascript:;"> Profile</a></li>
								<li><a href="javascript:;"> <span
										class="badge bg-red pull-right">50%</span> <span>Settings</span>
								</a></li>
								<li><a href="javascript:;">Help</a></li>
								<li><a id="logout-btn" href="@"><i
										class="fa fa-sign-out pull-right"></i> Log Out</a></li>
							</ul></li>

						<li role="presentation" class="dropdown"><a
							href="javascript:;" class="dropdown-toggle info-number"
							data-toggle="dropdown" aria-expanded="false"> <i
								class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
						</a>
							<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
								role="menu">
								<li><a> <span class="image"><img
											src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
												Smith</span> <span class="time">3 mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"><img
											src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
												Smith</span> <span class="time">3 mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"><img
											src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
												Smith</span> <span class="time">3 mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li><a> <span class="image"><img
											src="images/img.jpg" alt="Profile Image" /></span> <span> <span>John
												Smith</span> <span class="time">3 mins ago</span>
									</span> <span class="message"> Film festivals used to be
											do-or-die moments for movie makers. They were where... </span>
								</a></li>
								<li>
									<div class="text-center">
										<a> <strong>See All Alerts</strong> <i
											class="fa fa-angle-right"></i>
										</a>
									</div>
								</li>
							</ul></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- /top navigation aa-->
		<script type="text/javascript" src="/assets/js/jquery-3.2.1.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$('#barang-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/barang";
						}
					});

				});
				$('#transaksi-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/penjualan";
						}
					});

				});
				$('#pelanggan-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/pelanggan";
						}
					});

				});
				$('#karyawan-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/karyawan";
						}
					});

				});
				$('#logout-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/.";
						}
					});

				});//a
				$('#supplier-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/distributor";
						}
					});

				});//a
				$('#pekerjaan-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/pekerjaan";
						}
					});

				});
				$('#pembelian-btn').on('click', function() {
					$.ajax({
						success : function(data) {
							//console.log(JSON.stringify(data));
							window.location = "/detailpembelian";
						}
					});

				});
			});
		</script>