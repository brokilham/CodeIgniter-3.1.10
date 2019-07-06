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
									Bobot Kriteria
								</h3>
							</div>						
						</div>						
					</div>
					<!-- END: Subheader -->
					<div class="m-content">					
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
											Tabel Bobot Kriteria
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">
									<ul class="m-portlet__nav">
										<li class="m-portlet__nav-item">
											<a href="<?php echo site_url('/BobotKriteria/edit') ?>" class="btn btn-accent m-btn m-btn--custom m-btn--pill m-btn--icon m-btn--air">
												<span>
													<i class="la la-plus"></i>
													<span>
														Ubah Bobot
													</span>
												</span>
											</a>
										</li>							
									</ul>
								</div>							
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
									<thead>
										<tr>
										 	<th bgcolor="yellow">
										 	</th>
											<?php 
											$count_data2 = count($mstr_kriterias);
											foreach($mstr_kriterias as $mstr_kriteria):?>
												
												<th bgcolor="#00ff80">
													<?php echo "K".$mstr_kriteria->Id  ?>
												</th>
																				
											<?php  endforeach; ?>																	
										</tr>
									</thead>
									<tbody>		
											<?php 
											$count_data = count($mstr_kriterias);
											$idx_data_nilai =0;
											foreach ($mstr_kriterias as $mstr_kriteria):?>
												<tr>
													<th bgcolor="#00ff80">
														<?php echo "K".$mstr_kriteria->Id ?>
													</th>
													
													<?php for($i = 0; $i < $count_data; $i++):?>											
													<td>
														<?php echo $nilai_kriterias[$idx_data_nilai]->NilaiBobotKriteria ?>
													</td>
													<?php $idx_data_nilai++; ?>
													<?php endfor;?>	
												</tr>												
											<?php  endforeach;?>											 																	
									</tbody>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->

					</div>
					<div class="m-content">					
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
											Matrix Bobot Prioritas
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">
									
								</div>							
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
									<thead>
										<tr>
										 	<th bgcolor="yellow">
										 	</th>
											<?php 
											$count_data2 = count($mstr_kriterias);
											foreach($mstr_kriterias as $mstr_kriteria):?>
												
												<th bgcolor="#00ff80">
													<?php echo "K".$mstr_kriteria->Id  ?>
												</th>
																				
											<?php  endforeach; ?>																	
										</tr>									
									</thead>
									<tbody>		
											<?php 
											$count_data = count($mstr_kriterias);
											$idx_data_nilai =0;
											foreach ($mstr_kriterias as $mstr_kriteria):?>
												<tr>
													<th bgcolor="#00ff80">
														<?php echo "K".$mstr_kriteria->Id ?>
													</th>
													
													<?php for($i = 0; $i < $count_data; $i++):?>											
													<td>
														<?php echo round($nilai_kriterias[$idx_data_nilai]->NilaiBobotKriteria/$data_total_matrixs[$i]->total_matrix ,2)?>
													</td>
													<?php $idx_data_nilai++; ?>
													<?php endfor;?>	
												</tr>												
											<?php  endforeach;?>											 																	
									</tbody>
									<tfoot>
									  <tr> 
									  	<td>
										  Jumlah
										</td>
										<?php 
											$count_data2 = count($mstr_kriterias);
											foreach($data_total_matrixs as $data_total_matrix):?>
												
												<th bgcolor="#00ff80">
												<?php echo $data_total_matrix->total_matrix?>
												</th>
												<?php  endforeach; ?>	
									  </tr>
									</tfoot>
								</table>
							</div>
						</div>
						<!-- END EXAMPLE TABLE PORTLET-->
						
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
