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
                        <?php $idx_data_nilai = 0; $idx_data_nilai_jum = 0; $idx_data_nilai_bagi = 0; $variabeltampungnilaiterakhir = 0; $arr_data_jum = array();?>
                        <?php foreach ($mstr_kriterias as $mstr_kriteria): ?>
                            <div class="m-portlet m-portlet--mobile">
                                <div class="m-portlet__head">
                                    <div class="m-portlet__head-caption">
                                        <div class="m-portlet__head-title">
                                            <h3 class="m-portlet__head-text">
                                                Hasil Perhitungan <?php echo $mstr_kriteria->Description." (K".$mstr_kriteria->Id.")" ?>
                                            </h3>
                                        </div>
                                    </div>
                                    <div class="m-portlet__head-tools">                                    						
                                    </div>
                                </div>
                                <div class="m-portlet__body">  
                                <?php //print_r($listIdAlternatif);?>                        
                                    <table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
                                        <thead>
                                            <tr>
                                                <th><h5>Pembobotan</h5></th>
                                                <?php foreach ($mstr_alternatifs as $mstr_alternatif): ?>										
                                                    <th> <?php echo "A".$mstr_alternatif->Id ?> </th>
                                                <?php endforeach;?>
                                            </tr>
                                        </thead>
                                        <tbody>		
                                            <?php $count_data = count($mstr_alternatifs);?>                                  
                                            <?php foreach ($mstr_alternatifs as $mstr_alternatif): ?>
                                                <tr>
                                                <?php $first_word = explode(' ',trim($mstr_alternatif->Description)); ?>
                                                    <td>
                                                        <?php echo "A".$mstr_alternatif->Id."-".$first_word[0] ?>
                                                    </td>   
                                                    <?php for($i = 0; $i < $count_data; $i++):?>                                                          
                                                            <td>
                                                                <?php echo round($nilai_alternatifs[$idx_data_nilai]->NilaiBobot,2) ?>
                                                            </td>  									                                                       	    
                                                        <?php $idx_data_nilai++; ?>
                                                    <?php endfor;?>                                                                                                              
                                                </tr>  
                                            <?php endforeach; ?>  								
                                        </tbody>
                                        <tfoot>
                                           <tr>
                                             <td>Jumlah</td>
                                             <?php //$idx_data_nilai_jum = 0;?>
                                             <?php for($i = 0; $i < $count_data; $i++):?>    
                                                <td>
                                                     <?php echo round($jum_kolom[$idx_data_nilai_jum]->Jumlah,2) ?>          
                                                </td> 
                                             <?php 
                                             $idx_data_nilai_jum++;
                                             endfor; ?>
                                           </tr>
                                        </tfoot>
                                    </table>
                                   <?php $array_jum_satuan_table = array(); ?>
                                    <table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
                                        <thead>
                                            <tr>
                                                <th><h5>Hasil Perbandingan</h5></th>
                                                <?php foreach ($mstr_alternatifs as $mstr_alternatif): ?>										
                                                    <th> <?php echo "A".$mstr_alternatif->Id ?> </th>
                                                <?php endforeach;?>
                                                <th>Jumlah</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $count_data = count($mstr_alternatifs); $idx_data_nilai_jum_bagi2 = 0; $jumsamping = 0;?>                                  
                                            <?php foreach ($mstr_alternatifs as $mstr_alternatif):?>
                                                <tr>
                                                <?php $first_word = explode(' ',trim($mstr_alternatif->Description)); $jumsamping = 0;?>
                                                    <td>
                                                        <?php echo "A".$mstr_alternatif->Id."-".$first_word[0] ?>
                                                    </td> 
                                                    <?php  $idx_data_nilai_jum_bagi = $variabeltampungnilaiterakhir; ?>  
                                                    <?php for($i = 0; $i < $count_data; $i++):?>                                                          
                                                            <td>
                                                                <?php $hasilbagi = round(($nilai_alternatifs[$idx_data_nilai_bagi]->NilaiBobot/$jum_kolom[$idx_data_nilai_jum_bagi]->Jumlah),3); ?>
                                                                <?php echo $hasilbagi ?>
                                                            </td>  									                                                       	    
                                                        <?php $idx_data_nilai_bagi++; 
                                                             $idx_data_nilai_jum_bagi2 = $idx_data_nilai_jum_bagi++; $jumsamping = $hasilbagi+$jumsamping;?>
                                                    <?php endfor;  ?> 
                                                    <td><?php echo $jumsamping;  $array_jum_satuan_table[] = $jumsamping;?></td>                                                                                                             
                                                </tr>  
                                            <?php endforeach;  $variabeltampungnilaiterakhir = $idx_data_nilai_jum_bagi2+1;?>  
                                        </tbody>                                   
                                    </table>
                                    <?php $arr_data_jum[] = $array_jum_satuan_table?>
                                </div>
                            </div>	
                        <?php endforeach; ?>   

                        <div class="m-portlet m-portlet--mobile">
                            <div class="m-portlet__head">
                                <div class="m-portlet__head-caption">
                                    <div class="m-portlet__head-title">
                                        <h3 class="m-portlet__head-text">
                                            Data Bobot
                                        </h3>
                                    </div>
                                </div>
                                <div class="m-portlet__head-tools">                                    						
                                </div>
                            </div>
                            <div class="m-portlet__body">                            
                                <table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
                                    <thead>
                                        <tr>
                                            <td> </td>
                                            <td colspan = "5">Kriteria</td>
                                        </tr>
                                        <tr> 
                                            <td> </td>
                                            <?php foreach ($mstr_kriterias as $mstr_kriteria): ?>
                                                <td><?php echo $mstr_kriteria->Description." (K".$mstr_kriteria->Id.")"?></td>
                                            <?php endforeach;?>
                                        </tr>
                                    </thead>
                                    <tbody>	
                                        <tr>
                                            <td>Alternatif</td>
                                            <?php foreach ($dataWLocals as $dataWLocal): ?>
                                                <td><h6><?php echo round($dataWLocal,3); ?></h6></td>
                                            <?php endforeach;?>            
                                        </tr>	
                                        <?php 
                                        $idx_data_bobot=0;
                                        foreach ($mstr_alternatifs as $mstr_alternatif): ?>		          							
                                            <tr> 
                                                <td>
                                                    <?php echo "A".$mstr_alternatif->Id ?> 
                                                </td>
                                                <?php 
                                             
                                                foreach ($arr_data_jum as $arr_data_jum_satuan):?> 
                                                    <td><?php echo round($arr_data_jum_satuan[$idx_data_bobot],3);?></td>                      
                                                <?php endforeach; $idx_data_bobot++; ?>                                     
                                            </tr>
                                        <?php endforeach;?>							
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                        
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
                                            Hasil Pembobotan
                                        </h3>
                                    </div>
                                </div>
                                <div class="m-portlet__head-tools">                                    						
                                </div>
                            </div>
                            <div class="m-portlet__body">                            
                                <table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
                                    <thead>
                                        <tr>
                                            <td> </td>
                                            <td colspan = "5">Kriteria</td>
                                        </tr>
                                        <tr> 
                                            <td> </td>
                                            <?php foreach ($mstr_kriterias as $mstr_kriteria): ?>
                                                <td><?php echo $mstr_kriteria->Description." (K".$mstr_kriteria->Id.")"?></td>
                                            <?php endforeach;?>
                                        </tr>
                                    </thead>
                                    <tbody>	         
                                        <?php 
                                        $arr_jum_hasil_akhir = array();
                                        $arr_jum_hasil_akhir_ass = array();
                                        $idx_data_bobot=0;
                                        foreach ($mstr_alternatifs as $mstr_alternatif): ?>		          							
                                            <tr> 
                                                <td>
                                                    <?php  echo "A".$mstr_alternatif->Id ?> 
                                                </td>
                                                <?php 
                                                $idx_nilai_alt = 0; $jumlah = 0;
                                                foreach ($arr_data_jum as $arr_data_jum_satuan):?> 
                                                    <td>
                                                        <?php 
                                                        $jumlah += $arr_data_jum_satuan[$idx_data_bobot]*$dataWLocals[$idx_nilai_alt];
                                                        echo round($arr_data_jum_satuan[$idx_data_bobot]*$dataWLocals[$idx_nilai_alt],3);?>
                                                    </td>                      
                                                <?php  $idx_nilai_alt++;
                                                endforeach; 
                                                $idx_data_bobot++; 
                                                $arr_jum_hasil_akhir_ass[$mstr_alternatif->Id] = $jumlah;
                                                $arr_jum_hasil_akhir[] = $jumlah; ?>                                     
                                            </tr>
                                        <?php endforeach;?>							
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                        
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
                                            Hasil Prioritas Insentif
                                        </h3>
                                    </div>
                                </div>
                                <div class="m-portlet__head-tools">                                    						
                                </div>
                            </div>
                            <div class="m-portlet__body">  
                             <?php arsort($arr_jum_hasil_akhir_ass)?>                          
                                <table class="table table-striped- table-bordered table-hover table-checkable" id="m_table_1">
                                    <thead>
                                        <tr>
                                            <th>Nama</th>
                                            <th>Hasil Akhir</th>
                                            <th>Prioritas</th>
                                        </tr>                                       
                                    </thead>
                                    <tbody>	
                                        <?php 
                                        $rank = 1;
                                        foreach ($arr_jum_hasil_akhir_ass as $x => $x_value): ?>		          							
                                            <tr> 
                                                <td>
                                                    <?php echo "A".$x ?> 
                                                </td>
                                                <td><?php echo round($x_value,3); ?></td>
                                                <td><?php echo $rank?></td>                                                                                 
                                            </tr>
                                        <?php 
                                        $rank++;
                                        endforeach;?>							
                                    </tbody>
                                    <tfoot>
                                        <tr>
                                        
                                        </tr>
                                    </tfoot>
                                </table>                                   
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

