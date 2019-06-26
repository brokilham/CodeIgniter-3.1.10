<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<!DOCTYPE html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 4
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Dribbble: www.dribbble.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
Renew Support: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<html lang="en" >
	<!-- begin::Head -->
	<head>
		<meta charset="utf-8" />
		<title>
			Metronic | Dashboard
		</title>
		<meta name="description" content="Latest updates and statistic charts">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!--begin::Web font -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
          WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
          });
		</script>
		<!--end::Web font -->   
		<?php $this->load->view("_partials/css.php") ?> 
		<link rel="shortcut icon" href="assets/demo/default/media/img/logo/favicon.ico" />
	</head>
	<!-- end::Head -->
    <!-- end::Body -->
	<body  class="m-page--fluid m--skin- m-content--skin-light2 m-header--fixed m-header--fixed-mobile m-aside-left--enabled m-aside-left--skin-dark m-aside-left--offcanvas m-footer--push m-aside--offcanvas-default"  >
		<!-- begin:: Page -->
		<div class="m-grid m-grid--hor m-grid--root m-page">
			<!-- BEGIN: Header -->
      		<?php $this->load->view("_partials/header.php") ?> 
			<!-- END: Header -->		
		  	<!-- begin::Body -->
			<div class="m-grid__item m-grid__item--fluid m-grid m-grid--ver-desktop m-grid--desktop m-body">
				<!-- BEGIN: Left Aside -->
			  <?php $this->load->view("_partials/sidebar_menu.php") ?> 
				<!-- END: Left Aside -->
				<div class="m-grid__item m-grid__item--fluid m-wrapper">
					<!-- BEGIN: Subheader -->
					<div class="m-subheader ">
						<div class="d-flex align-items-center">
							<div class="mr-auto">
								<h3 class="m-subheader__title ">
									Dashboard
								</h3>
							</div>						
						</div>
					</div>
					<!-- END: Subheader -->
					<div class="m-content">
						<!--Begin::Section-->
						<div class="row">
							<div class="col-xl-4">
		  						<!--begin::Portlet-->
								<div class="m-portlet m-portlet--creative m-portlet--first m-portlet--bordered-semi">
									<div class="m-portlet__head">
										<div class="m-portlet__head-caption">
											<div class="m-portlet__head-title">
												<span class="m-portlet__head-icon m--hide">
													<i class="flaticon-statistics"></i>
												</span>											
												<h3 class="m-portlet__head-text">
													Berikut ini merupakan daftar data Nilai Fuzzy
												</h3>											
												<h2 class="m-portlet__head-label m-portlet__head-label--success">
													<span>
														Nilai Fuzzy
													</span>
												</h2>
											</div>
										</div>									
									</div>
									<div class="m-portlet__body">
										<table class="table m-table ">											
											<tbody>
											 	<?php foreach($data_fuzzys as $data_fuzzy):?>
												 <tr>													
													<td>
														<?php echo  $data_fuzzy->Deskripsi?>
													</td>
												</tr>
												<?php endforeach;?>																																		
											</tbody>
										</table>
									</div>
								</div>
								<!--end::Portlet-->							
							</div>
							<div class="col-xl-4">
		  						<!--begin::Portlet-->
								<div class="m-portlet m-portlet--creative m-portlet--first m-portlet--bordered-semi">
									<div class="m-portlet__head">
										<div class="m-portlet__head-caption">
											<div class="m-portlet__head-title">
												<span class="m-portlet__head-icon m--hide">
													<i class="flaticon-statistics"></i>
												</span>												
												<h3 class="m-portlet__head-text">
													Berikut ini merupakan daftar data kriteria
												</h3>											
												<h2 class="m-portlet__head-label m-portlet__head-label--danger">
													<span>
														Data Kriteria
													</span>
												</h2>
											</div>
										</div>									
									</div>
									<div class="m-portlet__body">
										<table class="table m-table ">											
											<tbody>
												<?php foreach($data_kriterias as $data_kriteria):?>
												 <tr>													
													<td>
														<?php echo  $data_kriteria->Description?>
													</td>
												</tr>
												<?php endforeach;?>												
											</tbody>
										</table>
									</div>
								</div>
								<!--end::Portlet-->							
							</div>
							<div class="col-xl-4">
		  						<!--begin::Portlet-->
								<div class="m-portlet m-portlet--creative m-portlet--first m-portlet--bordered-semi">
									<div class="m-portlet__head">
										<div class="m-portlet__head-caption">
											<div class="m-portlet__head-title">
												<span class="m-portlet__head-icon m--hide">
													<i class="flaticon-statistics"></i>
												</span>												
												<h3 class="m-portlet__head-text">
													Berikut ini merupakan daftar data alternatif
												</h3>											
												<h2 class="m-portlet__head-label m-portlet__head-label--accent">
													<span>
														Data Alternatif
													</span>
												</h2>
											</div>
										</div>									
									</div>
									<div class="m-portlet__body">
										<table class="table m-table ">											
											<tbody>
												<?php foreach($data_alternatifs as $data_alternatif):?>
												 <tr>													
													<td>
														<?php echo  $data_alternatif->Description?>
													</td>
												</tr>
												<?php endforeach;?>												
											</tbody>
										</table>
									</div>
								</div>
								<!--end::Portlet-->							
							</div>							
						</div>
						<!--End::Section-->
					</div>
				</div>
			</div>
			<!-- end:: Body -->
			<!-- begin::Footer -->
			<?php $this->load->view("_partials/footer.php") ?> 
			<!-- end::Footer -->
		</div>
		<!-- end:: Page -->
		<!-- begin::Quick Sidebar -->
		<?php $this->load->view("_partials/quick_sidebar.php") ?> 
		<!-- end::Quick Sidebar -->		    
	  	<!-- begin::Scroll Top -->
      	<?php $this->load->view("_partials/scroll_top.php") ?> 
		<!-- end::Scroll Top -->		    <!-- begin::Quick Nav -->
		<!-- begin::Quick Nav -->	
    	<?php $this->load->view("_partials/js.php") ?> 
	</body>
	<!-- end::Body -->
</html>
