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
									Perhitungan
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
											Pilih alternatif yang akan dihitung
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">
									<ul class="m-portlet__nav">
                                        <li class="m-portlet__nav-item">
											<a  Id="btnHitung"  class="btn btn-accent m-btn m-btn--custom m-btn--pill m-btn--icon m-btn--air">
												<span>
													<i class="la la-plus"></i>
													<span>
													 Hitung
													</span>
												</span>
											</a>
										</li>							
									</ul>
								</div>
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table id="tableData" class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
									<thead>
										<tr>
											<th>
                                                <!--
                                                <label class="m-checkbox m-checkbox--solid">
                                                    <input type="checkbox" id="checkAll">                   
                                                    <span></span>
                                                </label>

                                                 -->
                                               
		  										<!-- function checkbox semua masih di disabled-->
                                                <!-- <input type="checkbox" id="checkAll"> --> 
											</th>
											<th>
												Nama Alternatif
											</th>																			
										</tr>
									</thead>
									<tbody>		
                                        <?php $no = 1;
											foreach ($mstr_alternatifs as $mstr_alternatif): ?>
											<tr>
                                                <!--<td class="tdvalue">
                                                    <label class="m-checkbox m-checkbox--solid" id="<?php echo $mstr_alternatif->Id ?>">
                                                        <input type="checkbox" class="checkItem">                   
                                                        <span></span>
                                                    </label>
                                                </td>
                                                <td class ="tdvalue">
                                                    <?php //echo $mstr_alternatif->Description ?>
                                                </td>-->          

                                                <td class="tdvalue">
                                                    <!--<label class="m-checkbox m-checkbox--solid" id="<?php echo $mstr_alternatif->Id ?>">
                                                        <input type="checkbox" class="checkItem">                   
                                                        <span></span>
                                                    </label>-->
                                                    <input type="checkbox" class="checkItem ">                   
                                                <td class="tdvalue">
                                                    <label> <?php echo $mstr_alternatif->Description."-".$mstr_alternatif->Id ?></label>      
                                                </td>
                                                <!--<td class="tdvalue"><a class="YYY">4</a></td>
                                                <td class="tdvalue"><a class="XXX">7</a></td>  -->                                                     
											</tr>  
										<?php endforeach; ?>  						
									</tbody>                                 
								</table>
							</div>
						</div>									
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
									<!--
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

									 -->
								
								</div>							
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
									<thead>
										<tr>
										 	<th>
										 	</th>
											<?php 
											$count_data2 = count($mstr_kriterias);
											foreach($mstr_kriterias as $mstr_kriteria):?>
												
												<th>
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
													<th>
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
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
											Matrik Perbandingan Kriteria Fuzzy AHP
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">
									<!--
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

									 -->
								
								</div>							
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
									<thead>
										<tr>
										 	<th></th>
											<?php 
											$count_data2 = count($mstr_kriterias);
											foreach($mstr_kriterias as $mstr_kriteria):?>											
												<th colspan="3">
													<?php echo "K".$mstr_kriteria->Id  ?>
												</th>																				
											<?php  endforeach; ?>
											<th colspan = "3">Jumlah Baris</th>															
										</tr>
										<tr>
											<th></th>
											<?php 
											$count_data2 = count($mstr_kriterias);
											foreach($mstr_kriterias as $mstr_kriteria):?>											
												<th>L</th>
												<th>M</th>
												<th>U</th>																				
											<?php  endforeach; ?>	
											<th>L</th>
											<th>M</th>
											<th>U</th>
										</tr>
										
									</thead>
									<tbody>		
											<?php 
											$count_data = count($mstr_kriterias)*3;
											$idx_data_nilai =0;
											$idx_data_nilai2 =0;
											foreach ($mstr_kriterias as $mstr_kriteria):?>
												<tr>
													<th>
														<?php echo "K".$mstr_kriteria->Id ?>
													</th>

													<?php for($i = 0; $i < $count_data; $i++):?>
													<td>
														<?php echo round($kriteria_nilai_tfns[$idx_data_nilai]->NilaiBobotTfn,2) ?>
													</td>
													<?php $idx_data_nilai++; ?>	
													<?php endfor;?>

													
													<?php for($i = 0; $i < 3; $i++):?>
													<td>
													
														<?php echo round($data_jumlah_baris_tfn[$idx_data_nilai2]->jumlah_baris,2) ?>
													
													</td>
													<?php $idx_data_nilai2++; ?>
													<?php endfor;?>
													
													
												</tr>												
												<?php  endforeach;?>																														 																	
									</tbody>
									<tfoot>
												<tr> 
													<?php $idx_total_tfn = 0;?>
													<td>Jumlah</td>
													<?php for($i = 0; $i < $count_data; $i++):?>										
														<th></th>
													<?php endfor;?>
													
													<?php for($i = 0; $i < 3; $i++):?>
													
													<th><?php echo round($jumlah_tfn[$idx_total_tfn]->total_tfn,2) ?></th>
													<?php $idx_total_tfn++; ?>
													<?php endfor; ?>
															
												</tr>
									</tfoot>
								</table>
							</div>
						</div>
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
											Perhitungan Nilai Sintesis
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">
									<!--
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

									 -->
								
								</div>							
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
									<thead>
									<tr>
										<th class="tg-0lax" rowspan="2"></th>
										<th class="tg-0lax" colspan="3">Jumlah Baris</th>
										<th class="tg-0lax" colspan="3">Nilai Sintesis</th>
									</tr>
									<tr>
										<td class="tg-0lax">L</td>
										<td class="tg-0lax">M</td>
										<td class="tg-0lax">U</td>
										<td class="tg-0lax">L</td>
										<td class="tg-0lax">M</td>
										<td class="tg-0lax">U</td>
									</tr>
									</thead>

									<tbody>	
											<?php 
											$idx_data_nilai2 =0;
											$idx_total_tfn = 0;
											$idx_nilai_sintesis = 0;
											foreach ($mstr_kriterias as $mstr_kriteria):?>
											
												<tr>
													<th>
														<?php echo "K".$mstr_kriteria->Id ?>
													</th>
													<?php for($i = 0; $i < 3; $i++):?>
													<td>
														<?php echo round($data_jumlah_baris_tfn[$idx_data_nilai2]->jumlah_baris,2) ?>
													</td>
													<?php $idx_data_nilai2++; ?>
													<?php endfor;?>

													<?php for($i = 0; $i < 3; $i++):?>
													<td>
														<?php echo round(1/($jumlah_elemen[$i]->total_elemen/$data_jumlah_baris_tfn[$idx_nilai_sintesis]->jumlah_baris) ,3) ?>
													</td>
													<?php $idx_total_tfn++ ?>
													<?php $idx_nilai_sintesis++ ?>
													<?php endfor;?>
												</tr>												
											<?php  endforeach;?>																													 																	
									</tbody>
									<tfoot>
									
									</tfoot>
								</table>
							</div>
						</div>	
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
		  									Penentuan Nilai Vektor (V) dan Ordinat DefuzzFikasi (d')
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
											<th rowspan= "3">Kriteria</th>
											<th rowspan= "3">V(K1>K2)</th>
											<th colspan="3">1</th>
											<th colspan="3">0</th>
											<th >Otherwise</th>
											<th  rowspan= "3">Summary Of Degree</th>							
										</tr>
										</tr>
											<th colspan="3">M2 > M1</th>
											<th colspan="3">L1 > U2 </th>
											<th >(L1-L2) / (M2-U2) - (M1-L1) </th>
										</tr>
										<tr>
											<th>M1</th>
											<th>M2</th>
											<th>Degreee</th>
											<th>L1</th>
											<th>U2</th>
											<th>Degreee</th>
											<th>Degreee</th>
										</tr>
									</thead>
										<?php 				
										$m2 = 0;
										$m1 = 0;	
										$l1 = 0;
										$u2 = 0;
										$degree1 = 0;
										$degree2 = 0;
										$degree3 = 0;
										$value_comparasion_1 = 0;	
										$min_sum_of_degree = array();
										$tot_min_sum_of_degree = 0;
										foreach ($mstr_kriterias as $mstr_kriteria):
												 //for($i = 0; $i < $jumlah_data_kriteria[0]->count_data - 1; $i++):
													$value_comparasion_1 = 0;
													foreach ($mstr_kriterias as $mstr_kriteria2):

														if($mstr_kriteria->Id != $mstr_kriteria2->Id)
														{
															?>
															<tr>
																<td><?php echo "K".$mstr_kriteria->Id ?></td>
																<td><?php echo "K".$mstr_kriteria->Id." >= K".$mstr_kriteria2->Id?></td>
																<td>
																	<?php foreach ($nilai_sintetis as $nilai_sintetisitem): 
																			if($nilai_sintetisitem->IdKriteria1 == $mstr_kriteria->Id){ 
																				$m1 = $nilai_sintetisitem->M_sintesis;
																				echo round($nilai_sintetisitem->M_sintesis,3);
																			} 
																		  endforeach; ?>
																</td>
																<td>
																	<?php foreach ($nilai_sintetis as $nilai_sintetisitem): 
																			if($nilai_sintetisitem->IdKriteria1 == $mstr_kriteria2->Id){
																				$m2 =  $nilai_sintetisitem->M_sintesis;
																				echo round($nilai_sintetisitem->M_sintesis,3);
																			} 
																		  endforeach;?>
																	</td>
																<td>
																	<?php if($m2 > $m1){
																		$value_comparasion = 1;
																		$degree1 = 1;
																		echo "1";
																	}
																	else{
																		$degree1 = 0;
																		$value_comparasion = 0;
																		echo "Next";
																	}?>
																</td>
																<td>
																	<?php if ($value_comparasion != 1){
																		foreach ($nilai_sintetis as $nilai_sintetisitem): 
																			if($nilai_sintetisitem->IdKriteria1 == $mstr_kriteria->Id){ 
																				$l1 = $nilai_sintetisitem->L_sintesis;
																				echo round($nilai_sintetisitem->L_sintesis,3);
																			} 
																		endforeach; 
																	}
																	else
																	{
																		echo "-";
																	}?>
																</td>
																<td>
																<?php if ($value_comparasion != 1){
																		foreach ($nilai_sintetis as $nilai_sintetisitem): 
																			if($nilai_sintetisitem->IdKriteria1 == $mstr_kriteria2->Id){
																				$u2 = $nilai_sintetisitem->U_sintesis;
																				echo round($nilai_sintetisitem->U_sintesis,3);
																			} 
																		endforeach; 
																	}
																	else
																	{
																		echo "-";
																	}?>
																</td>
																<td>
																	<?php if($l1 > $u2){
																		//$value_comparasion = 1;
																		$degree2 = 0;
																		echo "0";
																	}
																	else{
																		if($value_comparasion > 0){
																			echo "-";
																		}
																		else{
																			echo "Next";
																		}																	
																	}?>
																</td>
																<td>
																	<?php 
																	if($value_comparasion <1){
																		$degree3 = round(($l1-$u2)/(($m2-$u2)-($m1-$l1)),3);
																		echo $degree3;
																	}
																	else{
																		$degree3 = 0;
																		echo "-";
																	}
																	?>
																</td>
																<td>
																<?php 
																$sum_of_degree = round($degree1+$degree2+$degree3,3);
																echo $sum_of_degree;
																if($value_comparasion_1 > 0){
																	$value_comparasion_1 = ($value_comparasion_1<=$sum_of_degree)?$value_comparasion_1:$sum_of_degree;
																}
																else{
																	$value_comparasion_1 = $sum_of_degree;
																}
																
																?></td>
															</tr>
															<?php //endfor;
														}												  
												endforeach; ?>																							
										<?php  
											//echo "tes".$value_comparasion_1."-";
											$tot_min_sum_of_degree = $tot_min_sum_of_degree + $value_comparasion_1;
											$min_sum_of_degree[] = $value_comparasion_1;
										endforeach;?>	
									<tbody>																											 																	
									</tbody>
									<tfoot>							
									</tfoot>
								</table>								
							</div>
						</div>		
						<div class="m-portlet m-portlet--mobile">
							<div class="m-portlet__head">
								<div class="m-portlet__head-caption">
									<div class="m-portlet__head-title">
										<h3 class="m-portlet__head-text">
											Normalisai Bobot Vektor
										</h3>
									</div>
								</div>
								<div class="m-portlet__head-tools">																
								</div>							
							</div>
							<div class="m-portlet__body">
								<!--begin: Datatable -->
								<table class="table table-striped- table-bordered table-hover table-checkable" id="table_bobot_vektor">
									<thead>
										<tr>
											<th>Kriteria</th>	
											<th>W</th>
											<th>W Total</th>	
											<th>W Lokal</th>													
										</tr>
									</thead>
									<tbody>	
										<?php 
										$i = 0;
										foreach ($mstr_kriterias as $mstr_kriteria):?>
										<tr> 
											<td><?php echo  "K".$mstr_kriteria->Id; ?> </td>
											<td><?php echo $min_sum_of_degree[$i]?> </td>
											<td><?php echo $tot_min_sum_of_degree?></td>
											<td class="tdvalue"><?php echo round($min_sum_of_degree[$i]/$tot_min_sum_of_degree,3);?></td>
										</tr>										 		
										<?php
										$i++;
										endforeach;?>															
									</tbody>
								</table>
							</div>
						</div>					
					</div>					
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
<script>

    $(document).ready(function(){
		// function check semua masih di disable
        /*$('#checkAll').click(function () {    
             $(':checkbox.checkItem').prop('checked', this.checked);    
        });*/


        $(document).on('click', '#btnHitung', function() { // menampilkan form modal update email
            var SelectedKriteria = [];

			$("#tableData tr").each(function() {
                $tr = $(this);
				//var SelectedKriteria = [];
				var checkboxAlternatif = false;
                $tr.find(".tdvalue").each(function(){             
                    if($(this).children().prop('tagName')=="INPUT"){										
						 checkboxAlternatif = $(this).find("input[type=checkbox]").is(":checked")					
                    }
                    else {
						if(checkboxAlternatif ===  true)
						{
							var iDalternatif = $(this).text().split("-");
							SelectedKriteria.push(iDalternatif[1]);
                        	//alert(iDalternatif[1]);
						}				
                    }                                
                });
			})
			var WlocalValue = [];

			$("#table_bobot_vektor tr").each(function() {
                $tr = $(this);
				//var SelectedKriteria = [];
				var checkboxAlternatif = false;
                $tr.find(".tdvalue").each(function(){    
					WlocalValue.push($(this).text());
					//alert($(this).text());         
                    /*if($(this).children().prop('tagName')=="INPUT"){										
						 checkboxAlternatif = $(this).find("input[type=checkbox]").is(":checked")					
                    }
                    else {
						if(checkboxAlternatif ===  true)
						{
							var iDalternatif = $(this).text().split("-");
							SelectedKriteria.push(iDalternatif[1]);
                        	//alert(iDalternatif[1]);
						}				
                    } */                               
                });
			})
			
			
			if(SelectedKriteria.length >=2){
				$.ajax({
				url:'<?=base_url()?>PerhitunganHasil/setData',
				method: 'POST',
				data: {SelectedKriteria: SelectedKriteria,WlocalValue :WlocalValue},
				dataType: 'json',
				success: function(response){
					var len = response;
					//alert(len);
					window.location = response.url;
				},
				error: function(response)
				{
					var len = response;
				}
			});
		

            //alert("tes");
            //parseDataFromTbl();
			}
			else{
				alert("Pilih setidaknya dua alternatif yang akan di hitung!!!");
			}
		
        });


    });

</script>
